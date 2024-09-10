/PROG  CALIBRATIONCHECK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1059;
CREATE		= DATE 18-05-02  TIME 18:52:32;
MODIFIED	= DATE 19-10-04  TIME 14:26:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 57;
MEMORY_SIZE	= 1463;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  UFRAME_NUM=12 ;
   2:  UTOOL_NUM=1 ;
   3:  DO[8:OFF:Called Calibration Chec]=ON ;
   4:J PR[115:vis grid plane 1] 25% FINE    ;
   5:  DO[87:OFF:Lights ON]=ON ;
   6:   ;
   7:  WAIT   1.00(sec) ;
   8:   ;
   9:  !image X and Y ref pos ;
  10:  !update after ref pos set ;
  11:  R[110:Cali Check X Ref]=R[12:Cali Check Y Ref]    ;
  12:  R[111:Cali Check Y Ref]=R[13:Cali Check X Ref]    ;
  13:   ;
  14:  !set limits ;
  15:  R[112:Cali X Upper Lim]=R[110:Cali Check X Ref]+10    ;
  16:  R[113:Cali X Lower Lim]=R[110:Cali Check X Ref]-10    ;
  17:  R[114:Cali Y Upper Lim]=R[111:Cali Check Y Ref]+10    ;
  18:  R[115:Cali Y Lower Lim]=R[111:Cali Check Y Ref]-10    ;
  19:   ;
  20:  !run vision ;
  21:  VISION RUN_FIND 'CALIBRATIONVERIFICATION'    ;
  22:  VISION GET_OFFSET 'CALIBRATIONVERIFICATION' VR[1] JMP LBL[50] ;
  23:   ;
  24:  !get offset ;
  25:  PR[31]=VR[1].FOUND_POS[1] ;
  26:   ;
  27:  R[75:Vision X Found]=PR[31,1:Vision Offset]    ;
  28:  R[76:Vision Y Found]=PR[31,2:Vision Offset]    ;
  29:   ;
  30:  IF R[75:Vision X Found]>R[112:Cali X Upper Lim] OR R[75:Vision X Found]<R[113:Cali X Lower Lim],JMP LBL[50] ;
  31:   ;
  32:  IF R[76:Vision Y Found]>R[114:Cali Y Upper Lim] OR R[76:Vision Y Found]<R[115:Cali Y Lower Lim],JMP LBL[50] ;
  33:   ;
  34:  JMP LBL[60] ;
  35:   ;
  36:  !failure ;
  37:  LBL[50] ;
  38:  DO[72:OFF:Calibration Check Fail]=ON ;
  39:  WAIT DI[72:OFF:Cali Check Failed ACK]=ON    ;
  40:  DO[72:OFF:Calibration Check Fail]=OFF ;
  41:   ;
  42:  JMP LBL[99] ;
  43:   ;
  44:  !passed ;
  45:  LBL[60] ;
  46:  DO[73:OFF:Calibration Check Pass]=ON ;
  47:  WAIT DI[73:OFF:Cali Check Pass ACK]=ON    ;
  48:  DO[73:OFF:Calibration Check Pass]=OFF ;
  49:   ;
  50:   ;
  51:  LBL[99] ;
  52:  DO[87:OFF:Lights ON]=OFF ;
  53:  UFRAME_NUM=0 ;
  54:  UTOOL_NUM=3 ;
  55:   ;
  56:J PR[1:Home Pos] 25% CNT100    ;
  57:  DO[8:OFF:Called Calibration Chec]=OFF ;
/POS
/END

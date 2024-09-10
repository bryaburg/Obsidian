/PROG  JR_CALIGRID
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 841;
CREATE		= DATE 18-04-23  TIME 10:03:12;
MODIFIED	= DATE 19-10-04  TIME 14:28:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1289;
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
   9:  !run vision ;
  10:  VISION RUN_FIND 'CALIBRATIONVERIFICATION'    ;
  11:  VISION GET_OFFSET 'CALIBRATIONVERIFICATION' VR[1] JMP LBL[50] ;
  12:   ;
  13:  !get offset ;
  14:  PR[31]=VR[1].OFFSET ;
  15:   ;
  16:  R[75:Vision X Found]=PR[31,1:Vision Offset]    ;
  17:  R[76:Vision Y Found]=PR[31,2:Vision Offset]    ;
  18:   ;
  19:  IF R[75:Vision X Found]>5 OR R[75:Vision X Found]<(-5),JMP LBL[50] ;
  20:   ;
  21:  IF R[76:Vision Y Found]>5 OR R[75:Vision X Found]<(-5),JMP LBL[50] ;
  22:   ;
  23:  JMP LBL[60] ;
  24:   ;
  25:  !failure ;
  26:  LBL[50] ;
  27:  DO[72:OFF:Calibration Check Fail]=ON ;
  28:  WAIT DI[72:OFF:Cali Check Failed ACK]=ON    ;
  29:  DO[72:OFF:Calibration Check Fail]=OFF ;
  30:   ;
  31:  JMP LBL[99] ;
  32:   ;
  33:  !passed ;
  34:  LBL[60] ;
  35:  DO[73:OFF:Calibration Check Pass]=ON ;
  36:  WAIT DI[73:OFF:Cali Check Pass ACK]=ON    ;
  37:  DO[73:OFF:Calibration Check Pass]=OFF ;
  38:   ;
  39:   ;
  40:  LBL[99] ;
  41:  DO[87:OFF:Lights ON]=OFF ;
  42:  UFRAME_NUM=0 ;
  43:  UTOOL_NUM=3 ;
  44:   ;
  45:J PR[1:Home Pos] 25% CNT100    ;
  46:  DO[8:OFF:Called Calibration Chec]=OFF ;
/POS
/END

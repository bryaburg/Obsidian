/PROG  PALLET_HEIGHT_CHECK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1785;
CREATE		= DATE 18-05-16  TIME 17:26:10;
MODIFIED	= DATE 20-05-05  TIME 09:45:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 74;
MEMORY_SIZE	= 2257;
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
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;
/MN
   1:  !This program is used to check ;
   2:  !the height of a pallet, the ;
   3:  !pallets user frame is adjusted ;
   4:  !in Z based off of the measured ;
   5:  !height ;
   6:   ;
   7:  DO[7:OFF:Called Pallet Height Ch]=ON ;
   8:  R[40:height check res]=0    ;
   9:   ;
  10:  UTOOL_NUM=1 ;
  11:  UFRAME_NUM=0 ;
  12:   ;
  13:  !Set register 10 to values 71-78 ;
  14:  !then register 10 is used for ;
  15:  !indirect addressing to set ;
  16:  !what position register the  ;
  17:  !robot needs to move ;
  18:   ;
  19:  R[10:Pallet Z Ht Ptr]=R[1:Pallet Position]+70    ;
  20:   ;
  21:L PR[R[10]] 3000mm/sec FINE BREAK    ;
  22:   ;
  23:   ;
  24:  LBL[10] ;
  25:   ;
  26:  WAIT    .25(sec) ;
  27:   ;
  28:  DO[60:OFF:At Height Check POS]=ON ;
  29:  WAIT DI[60:OFF:Height Check POS Ack]=ON TIMEOUT,LBL[20] ;
  30:  JMP LBL[30] ;
  31:   ;
  32:  !shift and retry ;
  33:  LBL[20] ;
  34:  SKIP CONDITION DI[64:OFF:Height Sensor in Range]=ON    ;
  35:   ;
  36:  R[40:height check res]=R[40:height check res]+1    ;
  37:   ;
  38:  IF R[40:height check res]=5,JMP LBL[666] ;
  39:   ;
  40:  DO[60:OFF:At Height Check POS]=OFF ;
  41:   ;
  42:  IF R[1:Pallet Position]>3,JMP LBL[25] ;
  43:L P[1] 100mm/sec FINE INC Skip,LBL[666]    ;
  44:   ;
  45:  JMP LBL[10] ;
  46:   ;
  47:  LBL[25] ;
  48:L P[2] 100mm/sec FINE INC Skip,LBL[666]    ;
  49:   ;
  50:  JMP LBL[10] ;
  51:   ;
  52:  LBL[30] ;
  53:  DO[60:OFF:At Height Check POS]=OFF ;
  54:   ;
  55:   ;
  56:  !After the height checked passed ;
  57:  !and the PLC has the new height ;
  58:  !of the pallet, adjust that ;
  59:  !user frame with the new height ;
  60:   ;
  61:  CALL SET_FRAME_HT    ;
  62:   ;
  63:  DO[7:OFF:Called Pallet Height Ch]=OFF ;
  64:   ;
  65:  JMP LBL[100] ;
  66:   ;
  67:  !height failed ;
  68:  LBL[666] ;
  69:  DO[63:OFF:Height Check Failed]=ON ;
  70:  WAIT DI[63:OFF:Height Check Failed Ac]=ON    ;
  71:   ;
  72:  LBL[100] ;
  73:  UFRAME_NUM=R[1:Pallet Position] ;
  74:  UTOOL_NUM=3 ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =  -250.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N D B, 0, 0, 0',
	X =     0.000  mm,	Y =   250.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END

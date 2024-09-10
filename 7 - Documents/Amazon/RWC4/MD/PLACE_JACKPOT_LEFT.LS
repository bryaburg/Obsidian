/PROG  PLACE_JACKPOT_LEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2403;
CREATE		= DATE 20-05-07  TIME 09:36:58;
MODIFIED	= DATE 20-11-05  TIME 07:22:48;
FILE_NAME	= PLACE_JA;
VERSION		= 0;
LINE_COUNT	= 121;
MEMORY_SIZE	= 2831;
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
   1:  DO[5:OFF:Called Place Jackpot]=ON ;
   2:  DO[93:OFF:Placing Jackpot Left]=ON ;
   3:  PAYLOAD[1:EOAT with tote] ;
   4:   ;
   5:  WAIT DI[33:ON :Left Side Clear to Ent]=OFF    ;
   6:   ;
   7:  UFRAME_NUM=0 ;
   8:  UTOOL_NUM=3 ;
   9:   ;
  10:  !where you come from ;
  11:  PR[6:currentlocation]=JPOS    ;
  12:  R[20:Homing J1 Pos]=PR[6,1:currentlocation]    ;
  13:  PR[6:currentlocation]=LPOS    ;
  14:  R[35:Current X]=PR[6,1:currentlocation]    ;
  15:  R[36:Current Y]=PR[6,2:currentlocation]    ;
  16:   ;
  17:  !if at jackpot area ;
  18:  IF R[20:Homing J1 Pos]<(-90),JMP LBL[30] ;
  19:   ;
  20:  !if on right side ;
  21:  IF R[20:Homing J1 Pos]>25,JMP LBL[10] ;
  22:   ;
  23:  !if on left ;
  24:  IF R[20:Homing J1 Pos]<(-20),JMP LBL[20] ;
  25:   ;
  26:  JMP LBL[25] ;
  27:   ;
  28:  !from right ;
  29:  LBL[10] ;
  30:  !pallet 8 ;
  31:  IF R[20:Homing J1 Pos]>25 AND R[20:Homing J1 Pos]<50,JMP LBL[11] ;
  32:   ;
  33:  !pallet 7 ;
  34:  IF R[20:Homing J1 Pos]>50 AND R[20:Homing J1 Pos]<90,JMP LBL[12] ;
  35:   ;
  36:  !pallet 6&5 ;
  37:  IF R[20:Homing J1 Pos]>90,JMP LBL[13] ;
  38:   ;
  39:  !from left ;
  40:  LBL[20] ;
  41:  !pallet 4 ;
  42:  IF R[20:Homing J1 Pos]<(-20) AND R[20:Homing J1 Pos]>(-50),JMP LBL[21] ;
  43:   ;
  44:  !pallet 3 ;
  45:  IF R[20:Homing J1 Pos]<(-50) AND R[20:Homing J1 Pos]>(-90),JMP LBL[22] ;
  46:   ;
  47:  !pallet 1&2 ;
  48:  IF R[20:Homing J1 Pos]<(-90),JMP LBL[23] ;
  49:   ;
  50:  JMP LBL[666] ;
  51:   ;
  52:  !pallet 8 ;
  53:  LBL[11] ;
  54:J P[1] 100% CNT100 INC    ;
  55:J PR[1:Home Pos] 100% CNT100    ;
  56:   ;
  57:  JMP LBL[25] ;
  58:   ;
  59:  !pallet 7 ;
  60:  LBL[12] ;
  61:J PR[1:Home Pos] 100% CNT100    ;
  62:   ;
  63:  JMP LBL[25] ;
  64:   ;
  65:  !pallet 5&6 ;
  66:  LBL[13] ;
  67:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  68:   ;
  69:  JMP LBL[25] ;
  70:   ;
  71:  !from left ;
  72:  !pallet 4 ;
  73:  LBL[21] ;
  74:   ;
  75:  JMP LBL[25] ;
  76:   ;
  77:  !pallet 3 ;
  78:  LBL[22] ;
  79:   ;
  80:  JMP LBL[25] ;
  81:   ;
  82:  !pallet 1&2 ;
  83:  LBL[23] ;
  84:   ;
  85:  JMP LBL[30] ;
  86:   ;
  87:  !left side midpoint ;
  88:  LBL[25] ;
  89:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  90:   ;
  91:  !place at jackpot ;
  92:  LBL[30] ;
  93:   ;
  94:  UFRAME_NUM=10 ;
  95:  UTOOL_NUM=3 ;
  96:   ;
  97:J P[2] 100% CNT5 Tool_Offset,PR[40:jackpot appro]    ;
  98:  WAIT DI[96:ON :Left Jackpot Clear]=ON    ;
  99:   ;
 100:L P[2] 1000mm/sec FINE AP_LD150    ;
 101:  CALL CLAMP_OPEN    ;
 102:  CALL GRIPPER_OPEN    ;
 103:   ;
 104:  WAIT DI[83:ON :End Clamps AT Home]=ON    ;
 105:   ;
 106:  DO[95:OFF:Placed Jackpot]=ON ;
 107:   ;
 108:  !Raise up and check tote sen ;
 109:J PR[103:place JP LH] 100% CNT100 Tool_Offset,PR[19:Sensor Check Z]    ;
 110:  WAIT DI[88:ON :Tote present Sensors O]=ON    ;
 111:  DO[46:OFF:Robot Tote Present]=OFF ;
 112:   ;
 113:J PR[103:place JP LH] 100% CNT25 Tool_Offset,PR[40:jackpot appro]    ;
 114:  WAIT DI[95:OFF:Place Jackpot Ack]=ON    ;
 115:  DO[95:OFF:Placed Jackpot]=OFF ;
 116:   ;
 117:  PAYLOAD[2:EOAT no tote] ;
 118:  CALL CLEARDATA    ;
 119:   ;
 120:  DO[93:OFF:Placing Jackpot Left]=OFF ;
 121:  DO[5:OFF:Called Place Jackpot]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =  -500.000  mm,	Y =  -500.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 10, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -613.463  mm,	Y =  -148.053  mm,	Z =   185.630  mm,
	W =     4.440 deg,	P =     -.253 deg,	R =   -89.054 deg
};
/END

/PROG  PLACE_JACKPOT_RIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 2279;
CREATE		= DATE 20-05-07  TIME 09:37:24;
MODIFIED	= DATE 20-11-05  TIME 07:26:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 116;
MEMORY_SIZE	= 2727;
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
   2:  DO[94:OFF:Placing Jackpot Right]=ON ;
   3:  PAYLOAD[1:EOAT with tote] ;
   4:   ;
   5:  WAIT DI[32:ON :Right Side Clear toEnt]=OFF    ;
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
  18:  IF R[20:Homing J1 Pos]>90,JMP LBL[30] ;
  19:   ;
  20:  !if on the right side ;
  21:  IF R[20:Homing J1 Pos]>25,JMP LBL[10] ;
  22:   ;
  23:  !if on the left side ;
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
  36:   ;
  37:  !from left ;
  38:  LBL[20] ;
  39:  !pallet 4 ;
  40:  IF R[20:Homing J1 Pos]<(-20) AND R[20:Homing J1 Pos]>(-50),JMP LBL[21] ;
  41:   ;
  42:  !pallet 3  ;
  43:  IF R[20:Homing J1 Pos]<(-50) AND R[20:Homing J1 Pos]>(-90),JMP LBL[22] ;
  44:   ;
  45:  !pallet 1&2 ;
  46:  IF R[20:Homing J1 Pos]<(-90),JMP LBL[23] ;
  47:   ;
  48:  JMP LBL[666] ;
  49:   ;
  50:  !pallet 8 ;
  51:  LBL[11] ;
  52:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  53:   ;
  54:  JMP LBL[30] ;
  55:   ;
  56:  !pallet 7 ;
  57:  LBL[12] ;
  58:   ;
  59:  JMP LBL[25] ;
  60:   ;
  61:  !from left side ;
  62:  !pallet 4  ;
  63:  LBL[21] ;
  64:J P[1] 100% CNT100 INC    ;
  65:   ;
  66:J PR[1:Home Pos] 100% CNT100    ;
  67:   ;
  68:  JMP LBL[25] ;
  69:   ;
  70:  !pallet 3 ;
  71:  LBL[22] ;
  72:J PR[1:Home Pos] 100% CNT100    ;
  73:   ;
  74:  JMP LBL[25] ;
  75:   ;
  76:  !pallet 1&2 ;
  77:  LBL[23] ;
  78:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  79:   ;
  80:  JMP LBL[25] ;
  81:   ;
  82:  !right mid point ;
  83:  LBL[25] ;
  84:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  85:   ;
  86:  !place at jackpot ;
  87:  LBL[30] ;
  88:   ;
  89:  UFRAME_NUM=10 ;
  90:  UTOOL_NUM=3 ;
  91:   ;
  92:J P[4] 100% CNT5 Tool_Offset,PR[40:jackpot appro]    ;
  93:  WAIT DI[97:ON :Right Jackpot Clear]=ON    ;
  94:   ;
  95:L P[4] 1000mm/sec FINE AP_LD150    ;
  96:  CALL CLAMP_OPEN    ;
  97:  CALL GRIPPER_OPEN    ;
  98:   ;
  99:  WAIT DI[83:ON :End Clamps AT Home]=ON    ;
 100:   ;
 101:  DO[95:OFF:Placed Jackpot]=ON ;
 102:   ;
 103:  !Raise up and check tote sen ;
 104:J PR[105:place JP RH] 100% CNT100 Tool_Offset,PR[19:Sensor Check Z]    ;
 105:  WAIT DI[88:ON :Tote present Sensors O]=ON    ;
 106:  DO[46:OFF:Robot Tote Present]=OFF ;
 107:   ;
 108:J PR[105:place JP RH] 100% CNT25 Tool_Offset,PR[40:jackpot appro]    ;
 109:  WAIT DI[95:OFF:Place Jackpot Ack]=ON    ;
 110:  DO[95:OFF:Placed Jackpot]=OFF ;
 111:   ;
 112:  CALL CLEARDATA    ;
 113:  PAYLOAD[2:EOAT no tote] ;
 114:   ;
 115:  DO[94:OFF:Placing Jackpot Right]=OFF ;
 116:  DO[5:OFF:Called Place Jackpot]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =  -500.000  mm,	Y =   500.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[4]{
   GP1:
	UF : 10, UT : 3,		CONFIG : 'N U T, 0, 0, 0',
	X =  -607.292  mm,	Y =   947.050  mm,	Z =   178.474  mm,
	W =     4.746 deg,	P =      .996 deg,	R =   -90.016 deg
};
/END

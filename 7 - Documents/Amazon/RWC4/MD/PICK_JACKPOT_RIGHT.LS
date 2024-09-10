/PROG  PICK_JACKPOT_RIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1343;
CREATE		= DATE 18-05-04  TIME 10:54:48;
MODIFIED	= DATE 20-04-05  TIME 19:31:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 75;
MEMORY_SIZE	= 1843;
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
   1:  DO[6:OFF:Called Pick Jackpot]=ON ;
   2:   ;
   3:  WAIT DI[32:ON :Right Side Clear toEnt]=OFF    ;
   4:   ;
   5:  UFRAME_NUM=0 ;
   6:  UTOOL_NUM=3 ;
   7:   ;
   8:  CALL PICK_PATHJACKPOTRIGHT    ;
   9:   ;
  10:  DO[58:ON :Clear Of Jackpot]=OFF ;
  11:   ;
  12:  CALL CLAMP_OPEN    ;
  13:  CALL GRIPPER_OPEN    ;
  14:   ;
  15:  WAIT DI[83:ON :End Clamps AT Home]=ON    ;
  16:   ;
  17:  !determine orientation ;
  18:  R[48:Pick Orientation]=R[2:Tote Orientation]    ;
  19:   ;
  20:  IF R[48:Pick Orientation]=1,JMP LBL[10] ;
  21:   ;
  22:  PR[13,6:Jackpot Pick rit]=90    ;
  23:  JMP LBL[11] ;
  24:   ;
  25:  LBL[10] ;
  26:  PR[13,6:Jackpot Pick rit]=(-90)    ;
  27:  LBL[11] ;
  28:   ;
  29:  !pick tote ;
  30:  UFRAME_NUM=10 ;
  31:  UTOOL_NUM=3 ;
  32:   ;
  33:J PR[13:Jackpot Pick rit] 100% CNT100 Tool_Offset,PR[40:jackpot appro]    ;
  34:   ;
  35:L PR[13:Jackpot Pick rit] 3000mm/sec CNT100 Tool_Offset,PR[15:Pick Z Offset]    ;
  36:   ;
  37:L PR[13:Jackpot Pick rit] 3000mm/sec CNT10 AP_LD150 DB    5.0mm,CALL CLAMP_CLOSE    ;
  38:   ;
  39:  CALL GRIPPER_CLOSE    ;
  40:   ;
  41:  !if grippers failed to close ;
  42:  !open then and raisetool ;
  43:  IF DI[83:ON :End Clamps AT Home]=ON,CALL GRIPPER_OPEN ;
  44:   ;
  45:  IF DI[81:ON :Side Clamps AT Home]=ON OR DI[83:ON :End Clamps AT Home]=ON,JMP LBL[99] ;
  46:   ;
  47:  DO[92:OFF:Picked Jackpot]=ON ;
  48:   ;
  49:  WAIT DI[86:OFF:4 Corner check]=ON TIMEOUT,LBL[99] ;
  50:  PAYLOAD[1:EOAT with tote] ;
  51:   ;
  52:L PR[13:Jackpot Pick rit] 3000mm/sec CNT100 Tool_Offset,PR[15:Pick Z Offset]    ;
  53:  WAIT DI[92:OFF:Picked Jackpot Ack]=ON    ;
  54:  DO[92:OFF:Picked Jackpot]=OFF ;
  55:  DO[46:OFF:Robot Tote Present]=ON ;
  56:   ;
  57:J PR[13:Jackpot Pick rit] 100% CNT100 Tool_Offset,PR[40:jackpot appro] DB   25.0mm,DO[58:ON :Clear Of Jackpot]=ON    ;
  58:   ;
  59:  JMP LBL[100] ;
  60:  LBL[99] ;
  61:   ;
  62:  CALL CLAMP_OPEN    ;
  63:  CALL GRIPPER_OPEN    ;
  64:   ;
  65:  WAIT DI[81:ON :Side Clamps AT Home]=ON AND DI[83:ON :End Clamps AT Home]=ON    ;
  66:   ;
  67:  DO[92:OFF:Picked Jackpot]=OFF ;
  68:   ;
  69:L PR[13:Jackpot Pick rit] 3000mm/sec CNT50 Tool_Offset,PR[15:Pick Z Offset]    ;
  70:J PR[13:Jackpot Pick rit] 100% CNT75 Tool_Offset,PR[40:jackpot appro] DB    0.0mm,DO[58:ON :Clear Of Jackpot]=ON    ;
  71:   ;
  72:  LBL[100] ;
  73:  WAIT DI[32:ON :Right Side Clear toEnt]=OFF    ;
  74:  DO[6:OFF:Called Pick Jackpot]=OFF ;
  75:  DO[91:OFF:picking jackpot right]=OFF ;
/POS
/END

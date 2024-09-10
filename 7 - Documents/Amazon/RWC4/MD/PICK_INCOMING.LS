/PROG  PICK_INCOMING
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1355;
CREATE		= DATE 18-05-15  TIME 11:33:06;
MODIFIED	= DATE 20-03-11  TIME 07:59:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 76;
MEMORY_SIZE	= 1859;
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
   1:  CALL CHECK_POS    ;
   2:  PAYLOAD[2:EOAT no tote] ;
   3:   ;
   4:  DO[3:OFF:Called Pick IncomingTot]=ON ;
   5:  UFRAME_NUM=0 ;
   6:   ;
   7:  CALL PICK_PATHINCOMING    ;
   8:   ;
   9:  UFRAME_NUM=9 ;
  10:  UTOOL_NUM=2 ;
  11:   ;
  12:  IF (R[2:Tote Orientation]=0),DO[18:OFF:RESEND DATA]=(ON) ;
  13:  WAIT R[2:Tote Orientation]=1 OR R[2:Tote Orientation]=2    ;
  14:  DO[18:OFF:RESEND DATA]=OFF ;
  15:   ;
  16:  DO[55:ON :Clear Of Inc Conv]=OFF ;
  17:   ;
  18:  !Determine What Orientation To ;
  19:  !Pick The Tote From Incoming ;
  20:  !Conveyor ;
  21:   ;
  22:  CALL CLAMP_OPEN    ;
  23:  CALL GRIPPER_OPEN    ;
  24:   ;
  25:  R[48:Pick Orientation]=R[2:Tote Orientation]    ;
  26:   ;
  27:  IF R[48:Pick Orientation]=1,JMP LBL[10] ;
  28:   ;
  29:  PR[10,6:Incoming Pick]=(-90)    ;
  30:  JMP LBL[11] ;
  31:   ;
  32:  LBL[10] ;
  33:  PR[10,6:Incoming Pick]=90    ;
  34:  LBL[11] ;
  35:   ;
  36:J PR[10:Incoming Pick] 100% CNT100 Tool_Offset,PR[40:jackpot appro]    ;
  37:   ;
  38:  WAIT DI[87:ON :Incoming Lift AtHome]=ON    ;
  39:   ;
  40:L PR[10:Incoming Pick] 3000mm/sec CNT10 AP_LD100 DB    5.0mm,CALL CLAMP_CLOSE    ;
  41:   ;
  42:  CALL GRIPPER_CLOSE    ;
  43:   ;
  44:  IF DI[83:ON :End Clamps AT Home]=ON,CALL GRIPPER_OPEN ;
  45:   ;
  46:  IF DI[81:ON :Side Clamps AT Home]=ON OR DI[83:ON :End Clamps AT Home]=ON,JMP LBL[99] ;
  47:   ;
  48:   ;
  49:  DO[50:OFF:Picked Incoming]=ON ;
  50:  WAIT DI[86:OFF:4 Corner check]=ON TIMEOUT,LBL[99] ;
  51:   ;
  52:L PR[10:Incoming Pick] 3000mm/sec CNT100 Tool_Offset,PR[15:Pick Z Offset]    ;
  53:  WAIT DI[50:OFF:Pick Incoming Ack]=ON    ;
  54:  DO[50:OFF:Picked Incoming]=OFF ;
  55:  DO[46:OFF:Robot Tote Present]=ON ;
  56:   ;
  57:  PAYLOAD[1:EOAT with tote] ;
  58:   ;
  59:L PR[10:Incoming Pick] 3000mm/sec CNT100 Tool_Offset,PR[40:jackpot appro] DB  100.0mm,DO[55:ON :Clear Of Inc Conv]=ON    ;
  60:   ;
  61:  JMP LBL[100] ;
  62:  LBL[99] ;
  63:   ;
  64:  CALL CLAMP_OPEN    ;
  65:  CALL GRIPPER_OPEN    ;
  66:   ;
  67:  WAIT DI[81:ON :Side Clamps AT Home]=ON AND DI[83:ON :End Clamps AT Home]=ON    ;
  68:   ;
  69:  DO[50:OFF:Picked Incoming]=OFF ;
  70:   ;
  71:L PR[10:Incoming Pick] 3000mm/sec CNT100 Tool_Offset,PR[15:Pick Z Offset]    ;
  72:L PR[10:Incoming Pick] 3000mm/sec CNT100 Tool_Offset,PR[40:jackpot appro] DB  100.0mm,DO[55:ON :Clear Of Inc Conv]=ON    ;
  73:   ;
  74:   ;
  75:  LBL[100] ;
  76:  DO[3:OFF:Called Pick IncomingTot]=OFF ;
/POS
/END

/PROG  PICK_JACKPOT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 665;
CREATE		= DATE 19-08-19  TIME 10:52:22;
MODIFIED	= DATE 20-03-10  TIME 10:42:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 1073;
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
   2:   ;
   3:  DO[6:OFF:Called Pick Jackpot]=ON ;
   4:   ;
   5:  IF (R[2:Tote Orientation]=0),DO[18:OFF:RESEND DATA]=(ON) ;
   6:  WAIT R[2:Tote Orientation]=1 OR R[2:Tote Orientation]=2    ;
   7:  DO[18:OFF:RESEND DATA]=OFF ;
   8:   ;
   9:  IF R[1:Pallet Position]<=3,JMP LBL[10] ;
  10:   ;
  11:  IF R[1:Pallet Position]>=4 AND R[1:Pallet Position]<10,JMP LBL[20] ;
  12:   ;
  13:  IF R[1:Pallet Position]=10 AND DI[33:ON :Left Side Clear to Ent]=OFF AND DI[41:ON :Left Jackpot Clear]=ON,JMP LBL[10] ;
  14:   ;
  15:  IF R[1:Pallet Position]=10 AND DI[32:ON :Right Side Clear toEnt]=OFF AND DI[40:ON :Right Jackpot Clear]=ON,JMP LBL[20] ;
  16:   ;
  17:  WAIT DI[33:ON :Left Side Clear to Ent]=OFF    ;
  18:   ;
  19:  LBL[10] ;
  20:  DO[90:OFF:picking jackpot left]=ON ;
  21:  CALL PICK_JACKPOT_LEFT    ;
  22:  JMP LBL[100] ;
  23:   ;
  24:  LBL[20] ;
  25:  DO[91:OFF:picking jackpot right]=ON ;
  26:  CALL PICK_JACKPOT_RIGHT    ;
  27:  JMP LBL[100] ;
  28:   ;
  29:  LBL[100] ;
  30:  DO[6:OFF:Called Pick Jackpot]=OFF ;
/POS
/END

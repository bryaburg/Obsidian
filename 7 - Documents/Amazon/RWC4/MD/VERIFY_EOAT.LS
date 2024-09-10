/PROG  VERIFY_EOAT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1373;
CREATE		= DATE 18-05-16  TIME 07:56:26;
MODIFIED	= DATE 19-10-23  TIME 10:13:24;
FILE_NAME	= MOVETOMA;
VERSION		= 0;
LINE_COUNT	= 66;
MEMORY_SIZE	= 1885;
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
   1:  CALL MOVETOMAINT2    ;
   2:  TIMER[1]=RESET ;
   3:  TIMER[1]=START ;
   4:  LBL[1] ;
   5:   ;
   6:  WAIT    .50(sec) ;
   7:   ;
   8:  DO[83:ON :End Clamps To Home]=ON ;
   9:  DO[82:OFF:End Clamps To Work]=OFF ;
  10:  WAIT DI[83:ON :End Clamps AT Home]=ON    ;
  11:   ;
  12:  DO[82:OFF:End Clamps To Work]=ON ;
  13:  DO[83:ON :End Clamps To Home]=OFF ;
  14:  WAIT DI[82:OFF:End Clamps AT Work]=ON    ;
  15:   ;
  16:  DO[81:OFF:Side Clamps To Work]=ON ;
  17:  DO[80:ON :Side Clamps To Home]=OFF ;
  18:  WAIT DI[80:OFF:Side Clamps AT Work]=ON    ;
  19:   ;
  20:  DO[80:ON :Side Clamps To Home]=ON ;
  21:  DO[81:OFF:Side Clamps To Work]=OFF ;
  22:  WAIT DI[81:ON :Side Clamps AT Home]=ON    ;
  23:   ;
  24:   ;
  25:  IF (TIMER[1]>=3600),JMP LBL[99] ;
  26:  JMP LBL[1] ;
  27:  !check sensor in plc ;
  28:  !PalletHeight_DistanceSensor ;
  29:  !is around 520mm ;
  30:  !then skip the wait ;
  31:  WAIT (0=1)    ;
  32:   ;
  33:J PR[55:maint 1] 25% FINE    ;
  34:   ;
  35:  !check sensor in plc ;
  36:  !PalletHeight_DistanceSensor ;
  37:  !is around 1470mm ;
  38:  !then skip the wait ;
  39:  WAIT (0=1)    ;
  40:   ;
  41:  DO[87:OFF:Lights ON]=ON ;
  42:   ;
  43:  !verify lights on ;
  44:  !then skip the wait ;
  45:  WAIT (0=1)    ;
  46:   ;
  47:  DO[87:OFF:Lights ON]=OFF ;
  48:   ;
  49:  !verify lights off ;
  50:  !then skip the wait ;
  51:  WAIT (0=1)    ;
  52:   ;
  53:  !move height check plates ;
  54:  !verify in plc ;
  55:  !HeightCheckProx1,2 ;
  56:  !then skip the wait ;
  57:  WAIT (0=1)    ;
  58:   ;
  59:  !flag corner sensors ;
  60:  !verify in plc ;
  61:  !TotePresent1,2,3,4 ;
  62:  !then skip the wait ;
  63:  WAIT (0=1)    ;
  64:   ;
  65:  LBL[99] ;
  66:  CALL HOME    ;
/POS
/END

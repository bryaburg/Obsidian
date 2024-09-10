/PROG  LEFTSIDE_HEIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 359;
CREATE		= DATE 18-05-03  TIME 13:49:48;
MODIFIED	= DATE 18-05-03  TIME 14:00:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 675;
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
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:   ;
   4:J PR[95:Side B Ht Master] 25% CNT25 Tool_Offset,PR[14:Above Pallet]    ;
   5:L PR[95:Side B Ht Master] 750mm/sec FINE BREAK    ;
   6:   ;
   7:  DO[61:OFF:At Left Master Height]=ON ;
   8:  WAIT DI[61:OFF:Left Master Height Ack]=ON    ;
   9:  DO[61:OFF:At Left Master Height]=OFF ;
  10:   ;
  11:L PR[95:Side B Ht Master] 750mm/sec CNT25 Tool_Offset,PR[14:Above Pallet]    ;
  12:  UFRAME_NUM=0 ;
  13:  UTOOL_NUM=3 ;
  14:J PR[1:Home Pos] 25% FINE    ;
/POS
/END

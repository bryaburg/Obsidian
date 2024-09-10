/PROG  RIGHTSIDE_HEIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 409;
CREATE		= DATE 18-05-03  TIME 13:50:10;
MODIFIED	= DATE 18-05-03  TIME 14:00:48;
FILE_NAME	= SIDE_B_H;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 725;
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
   4:J PR[85:Side A Ht Master] 25% CNT25 Tool_Offset,PR[14:Above Pallet]    ;
   5:L PR[85:Side A Ht Master] 750mm/sec FINE BREAK    ;
   6:  WAIT    .10(sec) ;
   7:  DO[62:OFF:At Right Master Height]=ON ;
   8:  WAIT DI[62:OFF:Right Master Height Ac]=ON    ;
   9:  DO[62:OFF:At Right Master Height]=OFF ;
  10:   ;
  11:L PR[85:Side A Ht Master] 750mm/sec CNT25 Tool_Offset,PR[14:Above Pallet]    ;
  12:  UFRAME_NUM=0 ;
  13:  UTOOL_NUM=3 ;
  14:J PR[1:Home Pos] 25% FINE    ;
/POS
/END

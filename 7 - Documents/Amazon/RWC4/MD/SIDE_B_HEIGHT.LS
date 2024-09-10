/PROG  SIDE_B_HEIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 403;
CREATE		= DATE 18-03-30  TIME 12:43:34;
MODIFIED	= DATE 18-04-05  TIME 15:04:46;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 703;
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
   4:  DO[9:OFF:called camera calibrati]=ON ;
   5:   ;
   6:J PR[95:Side B Ht Master] 25% CNT25 Tool_Offset,PR[14:Above Pallet]    ;
   7:J PR[95:Side B Ht Master] 25% FINE BREAK    ;
   8:   ;
   9:  DO[61:OFF:At Left Master Height]=ON ;
  10:  WAIT DI[61:OFF:Left Master Height Ack]=ON    ;
  11:  DO[61:OFF:At Left Master Height]=OFF ;
  12:   ;
  13:J PR[95:Side B Ht Master] 25% CNT25 Tool_Offset,PR[14:Above Pallet]    ;
  14:  UFRAME_NUM=0 ;
  15:  UTOOL_NUM=2 ;
  16:J PR[1:Home Pos] 25% FINE    ;
  17:   ;
  18:  DO[9:OFF:called camera calibrati]=OFF ;
/POS
/END

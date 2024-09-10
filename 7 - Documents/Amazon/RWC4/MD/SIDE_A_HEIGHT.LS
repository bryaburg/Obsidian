/PROG  SIDE_A_HEIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 453;
CREATE		= DATE 18-03-30  TIME 12:49:52;
MODIFIED	= DATE 18-08-08  TIME 11:33:28;
FILE_NAME	= SIDE_B_H;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 753;
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
   4:  DO[8:OFF:Called Calibration Chec]=ON ;
   5:   ;
   6:J PR[85:Side A Ht Master] 25% CNT25 Tool_Offset,PR[14:Above Pallet]    ;
   7:J PR[85:Side A Ht Master] 25% FINE BREAK    ;
   8:  WAIT    .10(sec) ;
   9:  DO[62:OFF:At Right Master Height]=ON ;
  10:  WAIT DI[62:OFF:Right Master Height Ac]=ON    ;
  11:  DO[62:OFF:At Right Master Height]=OFF ;
  12:   ;
  13:J PR[85:Side A Ht Master] 25% CNT25 Tool_Offset,PR[14:Above Pallet]    ;
  14:  UFRAME_NUM=0 ;
  15:  UTOOL_NUM=2 ;
  16:J PR[1:Home Pos] 25% FINE    ;
  17:   ;
  18:  DO[8:OFF:Called Calibration Chec]=OFF ;
/POS
/END

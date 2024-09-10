/PROG  CLEARDATA
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 281;
CREATE		= DATE 18-04-19  TIME 14:09:00;
MODIFIED	= DATE 18-04-19  TIME 14:30:06;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 621;
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
   1:  !clear tote data ;
   2:   ;
   3:  R[1:Pallet Position]=0    ;
   4:  R[2:Tote Orientation]=0    ;
   5:  R[3:Pallet Level]=0    ;
   6:  R[4:Tote Position]=0    ;
   7:   ;
   8:  DO[16:ON :Data Cleared]=ON ;
/POS
/END

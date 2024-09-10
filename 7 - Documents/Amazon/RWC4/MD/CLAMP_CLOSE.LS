/PROG  CLAMP_CLOSE
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 395;
CREATE		= DATE 19-08-07  TIME 09:27:40;
MODIFIED	= DATE 19-08-07  TIME 10:03:12;
FILE_NAME	= CLAMP_CL;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 843;
PROTECT		= READ;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : FALSE;
/MN
   1:  DO[82:OFF:End Clamps To Work]=ON ;
   2:  DO[83:ON :End Clamps To Home]=OFF ;
   3:  DO[80:ON :Side Clamps To Home]=OFF ;
   4:  DO[81:OFF:Side Clamps To Work]=ON ;
   5:  DO[47:OFF:Robot Tote Pick]=ON ;
   6:   ;
   7:  WAIT DI[82:OFF:End Clamps AT Work]=ON TIMEOUT,LBL[1] ;
   8:  JMP LBL[99] ;
   9:  LBL[1] ;
  10:   ;
  11:  DO[82:OFF:End Clamps To Work]=OFF ;
  12:  DO[83:ON :End Clamps To Home]=ON ;
  13:  WAIT DI[83:ON :End Clamps AT Home]=ON    ;
  14:  LBL[99] ;
/POS
/END

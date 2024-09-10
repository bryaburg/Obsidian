/PROG  CAMEA_CALIBRATION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 653;
CREATE		= DATE 19-09-27  TIME 15:05:44;
MODIFIED	= DATE 20-05-21  TIME 05:26:54;
FILE_NAME	= DB_CALIB;
VERSION		= 0;
LINE_COUNT	= 30;
MEMORY_SIZE	= 913;
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
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=10 ;
   3:  DO[9:OFF:called camera calibrati]=ON ;
   4:  DO[87:OFF:Lights ON]=ON ;
   5:   ;
   6:J PR[114:Vis pre cal pos] 25% FINE    ;
   7:  WAIT   1.00(sec) ;
   8:  CALL IRVGSEXE    ;
   9:   ;
  10:  !first plane ;
  11:  DO[87:OFF:Lights ON]=ON ;
  12:  UFRAME_NUM=12 ;
  13:  UTOOL_NUM=1 ;
  14:   ;
  15:L PR[115:vis grid plane 1] 500mm/sec FINE    ;
  16:  WAIT   2.00(sec) ;
  17:  VISION CAMERA_CALIB 'TOTECAMERA' Request=1 ;
  18:  WAIT   2.00(sec) ;
  19:  !second plane ;
  20:L PR[116:vis grid plane 2] 500mm/sec FINE    ;
  21:  WAIT   2.00(sec) ;
  22:  VISION CAMERA_CALIB 'TOTECAMERA' Request=2 ;
  23:  WAIT   2.00(sec) ;
  24:  VISION CAMERA_CALIB 'TOTECAMERA' Request=100 ;
  25:  DO[87:OFF:Lights ON]=OFF ;
  26:  UFRAME_NUM=0 ;
  27:  UTOOL_NUM=3 ;
  28:   ;
  29:J PR[1:Home Pos] 25% CNT100    ;
  30:  DO[9:OFF:called camera calibrati]=OFF ;
/POS
/END

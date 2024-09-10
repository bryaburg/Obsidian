/PROG  CHECK_POS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 709;
CREATE		= DATE 18-04-16  TIME 09:43:46;
MODIFIED	= DATE 18-04-16  TIME 09:44:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 32;
MEMORY_SIZE	= 1221;
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
   1:  !Check the position of the ;
   2:  !robot to make sure its ok ;
   3:  !to call a program, if its ;
   4:  !not, then call home ;
   5:   ;
   6:  PR[45:JOINT POS]=JPOS    ;
   7:  R[101:Robot J2 Pos]=PR[45,2:JOINT POS]    ;
   8:  R[102:Robot J3 Pos]=PR[45,3:JOINT POS]    ;
   9:  R[103:Robot J4 Pos ]=PR[45,4:JOINT POS]    ;
  10:  R[104:Robot J5 Pos]=PR[45,5:JOINT POS]    ;
  11:   ;
  12:  IF R[101:Robot J2 Pos]<0 AND R[101:Robot J2 Pos]>(-50),JMP LBL[21] ;
  13:   ;
  14:  JMP LBL[30] ;
  15:  LBL[21] ;
  16:   ;
  17:  IF R[102:Robot J3 Pos]<25 AND R[102:Robot J3 Pos]>(-25),JMP LBL[22] ;
  18:   ;
  19:  JMP LBL[30] ;
  20:  LBL[22] ;
  21:   ;
  22:  IF R[103:Robot J4 Pos ]<10 AND R[103:Robot J4 Pos ]>(-10),JMP LBL[23] ;
  23:   ;
  24:  JMP LBL[30] ;
  25:  LBL[23] ;
  26:   ;
  27:  IF R[104:Robot J5 Pos]<(-60) AND R[104:Robot J5 Pos]>(-120),JMP LBL[30] ;
  28:   ;
  29:  CALL HOME    ;
  30:   ;
  31:  LBL[30] ;
  32:   ;
/POS
/END

/PROG  MID_POINT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 957;
CREATE		= DATE 18-04-19  TIME 08:18:42;
MODIFIED	= DATE 20-03-10  TIME 16:18:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1457;
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
   2:  UTOOL_NUM=3 ;
   3:   ;
   4:  IF R[1:Pallet Position]<4,JMP LBL[50] ;
   5:   ;
   6:  IF R[1:Pallet Position]=6,JMP LBL[10] ;
   7:   ;
   8:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
   9:  JMP LBL[99] ;
  10:   ;
  11:  LBL[10] ;
  12:J P[1] 100% CNT100 INC    ;
  13:  JMP LBL[99] ;
  14:   ;
  15:  !going to 1-3 ;
  16:  LBL[50] ;
  17:   ;
  18:  IF R[1:Pallet Position]<>1 AND R[1:Pallet Position]<>2 AND R[1:Pallet Position]<>3,JMP LBL[99] ;
  19:   ;
  20:  IF R[1:Pallet Position]=3,JMP LBL[60] ;
  21:   ;
  22:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  23:  JMP LBL[99] ;
  24:   ;
  25:  LBL[60] ;
  26:J P[2] 100% CNT100 INC    ;
  27:   ;
  28:   ;
  29:   ;
  30:   ;
  31:  LBL[99] ;
  32:   ;
  33:  UFRAME_NUM=R[1:Pallet Position] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =  -500.000  mm,	Y =   500.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
P[2]{
   GP1:
	UF : 0, UT : 3,		CONFIG : 'N D B, 0, 0, 0',
	X =  -200.000  mm,	Y =  -500.000  mm,	Z =     0.000  mm,
	W =     0.000 deg,	P =     0.000 deg,	R =     0.000 deg
};
/END

/PROG  FRM_JACKPOTMID_POINT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 693;
CREATE		= DATE 18-04-07  TIME 16:58:00;
MODIFIED	= DATE 20-03-10  TIME 12:51:28;
FILE_NAME	= MID_POIN;
VERSION		= 0;
LINE_COUNT	= 34;
MEMORY_SIZE	= 1189;
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
   4:  IF R[20:Homing J1 Pos]<(-100),JMP LBL[10] ;
   5:   ;
   6:  IF R[20:Homing J1 Pos]>100,JMP LBL[50] ;
   7:   ;
   8:   ;
   9:  !from left going left ;
  10:  LBL[10] ;
  11:  IF R[1:Pallet Position]=1 OR R[1:Pallet Position]=2,JMP LBL[99] ;
  12:   ;
  13:  IF R[1:Pallet Position]=3,JMP LBL[20] ;
  14:   ;
  15:  LBL[20] ;
  16:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  17:  JMP LBL[99] ;
  18:   ;
  19:   ;
  20:  !from right to right ;
  21:  LBL[50] ;
  22:  IF R[1:Pallet Position]=4 OR R[1:Pallet Position]=5,JMP LBL[99] ;
  23:   ;
  24:  IF R[1:Pallet Position]=6,JMP LBL[60] ;
  25:   ;
  26:  LBL[60] ;
  27:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  28:  JMP LBL[99] ;
  29:   ;
  30:   ;
  31:   ;
  32:  LBL[99] ;
  33:   ;
  34:  UFRAME_NUM=R[1:Pallet Position] ;
/POS
/END

/PROG  PICK_PATHJACKPOTLEFT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 991;
CREATE		= DATE 18-04-07  TIME 10:14:34;
MODIFIED	= DATE 19-10-04  TIME 14:16:08;
FILE_NAME	= PICK_PAT;
VERSION		= 0;
LINE_COUNT	= 47;
MEMORY_SIZE	= 1435;
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
   1:   ;
   2:  PR[6:currentlocation]=LPOS    ;
   3:  R[35:Current X]=PR[6,1:currentlocation]    ;
   4:  R[36:Current Y]=PR[6,2:currentlocation]    ;
   5:   ;
   6:  !if at home ;
   7:  IF DO[40:ON :At Home]=ON,JMP LBL[50] ;
   8:   ;
   9:  !coming from right 5&6 ;
  10:  IF R[35:Current X]<0 AND R[36:Current Y]>0,JMP LBL[10] ;
  11:   ;
  12:  !coming from right 7&8 ;
  13:  IF R[35:Current X]>1000 AND R[36:Current Y]>0,JMP LBL[5] ;
  14:   ;
  15:   ;
  16:  !coming from left ;
  17:  IF R[35:Current X]<0 AND R[36:Current Y]<0,JMP LBL[100] ;
  18:   ;
  19:  IF R[35:Current X]>1000 AND R[36:Current Y]<0,JMP LBL[20] ;
  20:   ;
  21:  JMP LBL[100] ;
  22:   ;
  23:  !coming from right 7&8 ;
  24:  LBL[5] ;
  25:L PR[108:Pick Path JP LH] 3000mm/sec CNT100 INC    ;
  26:   ;
  27:J PR[1:Home Pos] 100% CNT100    ;
  28:  JMP LBL[20] ;
  29:   ;
  30:  !coming from right 5&6 ;
  31:  LBL[10] ;
  32:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  33:   ;
  34:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  35:  JMP LBL[100] ;
  36:   ;
  37:  !coming from left ;
  38:  LBL[20] ;
  39:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  40:  JMP LBL[100] ;
  41:   ;
  42:  !from home ;
  43:  LBL[50] ;
  44:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  45:   ;
  46:   ;
  47:  LBL[100] ;
/POS
/END

/PROG  PICK_PATHJACKPOTRIGHT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 983;
CREATE		= DATE 18-04-07  TIME 10:52:56;
MODIFIED	= DATE 19-10-04  TIME 14:16:38;
FILE_NAME	= PICK_PAT;
VERSION		= 0;
LINE_COUNT	= 47;
MEMORY_SIZE	= 1427;
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
   6:  !above jackpot ;
   7:  IF DO[44:OFF:Above Right Jackpot]=ON,JMP LBL[100] ;
   8:   ;
   9:  !if at home ;
  10:  IF DO[40:ON :At Home]=ON,JMP LBL[50] ;
  11:   ;
  12:  !coming from right 8 ;
  13:  IF R[35:Current X]>1000 AND R[36:Current Y]>0,JMP LBL[10] ;
  14:   ;
  15:  !coming from left ;
  16:  IF R[35:Current X]<1000 AND R[36:Current Y]<0,JMP LBL[20] ;
  17:   ;
  18:  IF R[35:Current X]>1000 AND R[36:Current Y]<0,JMP LBL[25] ;
  19:   ;
  20:  JMP LBL[100] ;
  21:   ;
  22:  !coming from right 8 ;
  23:  LBL[10] ;
  24:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  25:   ;
  26:  JMP LBL[100] ;
  27:   ;
  28:  !coming from left 1&2 ;
  29:  LBL[20] ;
  30:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  31:   ;
  32:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  33:  JMP LBL[100] ;
  34:   ;
  35:  !coming from left 4  ;
  36:  LBL[25] ;
  37:J PR[109:Pick Path JP RH] 100% CNT100 INC    ;
  38:   ;
  39:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  40:  JMP LBL[100] ;
  41:   ;
  42:  !from home ;
  43:  LBL[50] ;
  44:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  45:   ;
  46:   ;
  47:  LBL[100] ;
/POS
/END

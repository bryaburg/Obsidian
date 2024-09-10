/PROG  PICK_PATHINCOMING
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 887;
CREATE		= DATE 18-04-07  TIME 08:30:54;
MODIFIED	= DATE 19-08-23  TIME 07:28:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 47;
MEMORY_SIZE	= 1331;
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
   1:  UTOOL_NUM=3 ;
   2:   ;
   3:  PR[6:currentlocation]=LPOS    ;
   4:  R[35:Current X]=PR[6,1:currentlocation]    ;
   5:  R[36:Current Y]=PR[6,2:currentlocation]    ;
   6:   ;
   7:  !if at home ;
   8:  IF DO[40:ON :At Home]=ON,JMP LBL[100] ;
   9:   ;
  10:   ;
  11:  !coming from right ;
  12:  IF R[35:Current X]<0 AND R[36:Current Y]>0,JMP LBL[10] ;
  13:   ;
  14:  IF R[35:Current X]>1650 AND R[36:Current Y]>0,JMP LBL[15] ;
  15:   ;
  16:  !coming from left ;
  17:  IF R[35:Current X]<0 AND R[36:Current Y]<0,JMP LBL[20] ;
  18:   ;
  19:  IF R[35:Current X]>1650 AND R[36:Current Y]<0,JMP LBL[25] ;
  20:   ;
  21:  JMP LBL[100] ;
  22:   ;
  23:  !coming from right ;
  24:  LBL[10] ;
  25:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  26:  JMP LBL[100] ;
  27:   ;
  28:  LBL[15] ;
  29:   ;
  30:  PR[37,6:pallet6safepoint]=PR[6,6:currentlocation]    ;
  31:L PR[37:pallet6safepoint] 3000mm/sec CNT100    ;
  32:   ;
  33:  JMP LBL[100] ;
  34:   ;
  35:  !coming from left ;
  36:  LBL[20] ;
  37:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  38:   ;
  39:  JMP LBL[100] ;
  40:   ;
  41:  LBL[25] ;
  42:   ;
  43:  PR[38,6:pallet3safepoint]=PR[6,6:currentlocation]    ;
  44:L PR[38:pallet3safepoint] 3000mm/sec CNT100    ;
  45:   ;
  46:   ;
  47:  LBL[100] ;
/POS
/END

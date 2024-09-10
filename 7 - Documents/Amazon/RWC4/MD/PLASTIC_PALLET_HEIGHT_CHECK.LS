/PROG  PLASTIC_PALLET_HEIGHT_CHECK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1617;
CREATE		= DATE 20-03-06  TIME 10:18:00;
MODIFIED	= DATE 20-05-21  TIME 06:00:12;
FILE_NAME	= PALLET_H;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 2101;
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
   1:  !This program is used to check ;
   2:  !the height of a pallet, the ;
   3:  !pallets user frame is adjusted ;
   4:  !in Z based off of the measured ;
   5:  !height ;
   6:   ;
   7:  DO[7:OFF:Called Pallet Height Ch]=ON ;
   8:  R[40:height check res]=0    ;
   9:   ;
  10:  UTOOL_NUM=1 ;
  11:  UFRAME_NUM=0 ;
  12:   ;
  13:  !Plastic Pallet Check 1 Set ;
  14:  !register 10 to values 147-152 ;
  15:  !then register 10 is used for ;
  16:  !indirect addressing to set ;
  17:  !what position register the  ;
  18:  !robot needs to move ;
  19:   ;
  20:  R[10:Pallet Z Ht Ptr]=R[1:Pallet Position]+146    ;
  21:   ;
  22:J PR[R[10]] 100% FINE BREAK    ;
  23:  WAIT    .25(sec) ;
  24:   ;
  25:  DO[121:OFF:At PP Height CK 1]=ON ;
  26:  WAIT DI[121:OFF:PP Height CK 1 ACK]=ON TIMEOUT,LBL[20] ;
  27:   ;
  28:  UFRAME_NUM=R[1:Pallet Position] ;
  29:  IF R[1:Pallet Position]>=4,JMP LBL[30] ;
  30:J PR[153:LH PP Height app] 100% FINE BREAK    ;
  31:  JMP LBL[40] ;
  32:   ;
  33:  LBL[30] ;
  34:J PR[154:RH PP Height app] 100% FINE BREAK    ;
  35:  LBL[40] ;
  36:   ;
  37:  UFRAME_NUM=0 ;
  38:  !Set register 10 to value 141-146 ;
  39:  !then register 10 is used for ;
  40:  !indirect addressing to set ;
  41:  !what position register the  ;
  42:  !robot needs to move ;
  43:   ;
  44:   ;
  45:  R[10:Pallet Z Ht Ptr]=R[1:Pallet Position]+140    ;
  46:   ;
  47:L PR[R[10]] 3000mm/sec FINE BREAK    ;
  48:  WAIT    .25(sec) ;
  49:   ;
  50:  DO[122:OFF:At PP Height CH 2]=ON ;
  51:  WAIT DI[122:OFF:PP Height CK 2 ACK]=ON TIMEOUT,LBL[20] ;
  52:  DO[122:OFF:At PP Height CH 2]=OFF ;
  53:  !After the height checked passed ;
  54:  !and the PLC has the new height ;
  55:  !of the pallet, adjust that ;
  56:  !user frame with the new height ;
  57:   ;
  58:  CALL SET_PLASTIC_FRAME_HT    ;
  59:   ;
  60:  DO[7:OFF:Called Pallet Height Ch]=OFF ;
  61:   ;
  62:  JMP LBL[100] ;
  63:   ;
  64:  !height failed ;
  65:  LBL[20] ;
  66:  DO[63:OFF:Height Check Failed]=ON ;
  67:  WAIT DI[63:OFF:Height Check Failed Ac]=ON    ;
  68:   ;
  69:  LBL[100] ;
  70:  UFRAME_NUM=R[1:Pallet Position] ;
  71:  UTOOL_NUM=3 ;
/POS
/END

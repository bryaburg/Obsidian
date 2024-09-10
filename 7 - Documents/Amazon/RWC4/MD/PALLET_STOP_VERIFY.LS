/PROG  PALLET_STOP_VERIFY
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 817;
CREATE		= DATE 20-04-15  TIME 07:12:52;
MODIFIED	= DATE 20-05-05  TIME 09:43:40;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 50;
MEMORY_SIZE	= 1257;
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
   1:   ;
   2:   ;
   3:   ;
   4:  DO[11:OFF:Called Pallet Stop Ver]=ON ;
   5:   ;
   6:  UFRAME_NUM=0 ;
   7:  UTOOL_NUM=3 ;
   8:   ;
   9:J PR[36:Pallet 1&2SafePt] 100% CNT100    ;
  10:   ;
  11:L PR[138:pallet 1 stop ck] 3000mm/sec FINE    ;
  12:   ;
  13:  WAIT DI[111:OFF:Pallet Stop 1 CK ACK]=ON TIMEOUT,LBL[20] ;
  14:   ;
  15:L PR[139:pallet 2 stop ck] 3000mm/sec FINE    ;
  16:   ;
  17:  WAIT DI[112:OFF:Pallet Stop 2 CK ACK]=ON TIMEOUT,LBL[20] ;
  18:   ;
  19:L PR[140:pallet 3 stop ck] 3000mm/sec FINE    ;
  20:   ;
  21:  WAIT DI[113:OFF:Pallet Stop 3 CK ACK]=ON TIMEOUT,LBL[20] ;
  22:   ;
  23:  CALL HOME    ;
  24:   ;
  25:J PR[35:Pallet 4&5SafePt] 100% CNT100    ;
  26:   ;
  27:L PR[129:pallet 4 stop ck] 3000mm/sec FINE    ;
  28:   ;
  29:  WAIT DI[114:OFF:Pallet Stop 4 CK ACK]=ON TIMEOUT,LBL[20] ;
  30:   ;
  31:L PR[130:pallet 5 stop ck] 3000mm/sec FINE    ;
  32:   ;
  33:  WAIT DI[115:OFF:Pallet Stop 5 CK ACK]=ON TIMEOUT,LBL[20] ;
  34:   ;
  35:L PR[131:pallet 6 stop ck] 3000mm/sec FINE    ;
  36:   ;
  37:  WAIT DI[116:OFF:Pallet Stop 6 CK ACK]=ON TIMEOUT,LBL[20] ;
  38:   ;
  39:  DO[110:OFF:Stop Check Complet]=ON ;
  40:  WAIT DI[110:OFF:All Pallet Stops OK]=ON TIMEOUT,LBL[20] ;
  41:  DO[11:OFF:Called Pallet Stop Ver]=OFF ;
  42:   ;
  43:  JMP LBL[100] ;
  44:   ;
  45:  LBL[20] ;
  46:  DO[117:OFF:Stop Check Failed]=ON ;
  47:  WAIT DI[117:OFF:Stop Check Failed ACK]=ON    ;
  48:  DO[11:OFF:Called Pallet Stop Ver]=OFF ;
  49:  LBL[100] ;
  50:  CALL HOME    ;
/POS
/END

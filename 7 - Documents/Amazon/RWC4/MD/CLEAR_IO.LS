/PROG  CLEAR_IO
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 781;
CREATE		= DATE 18-04-14  TIME 11:37:48;
MODIFIED	= DATE 20-04-15  TIME 11:40:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1097;
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
   1:  DO[2:OFF:Called Maint]=OFF ;
   2:  DO[3:OFF:Called Pick IncomingTot]=OFF ;
   3:  DO[4:OFF:Called Place Pallet]=OFF ;
   4:  DO[5:OFF:Called Place Jackpot]=OFF ;
   5:  DO[6:OFF:Called Pick Jackpot]=OFF ;
   6:  DO[7:OFF:Called Pallet Height Ch]=OFF ;
   7:  DO[8:OFF:Called Calibration Chec]=OFF ;
   8:  DO[9:OFF:called camera calibrati]=OFF ;
   9:  DO[10:OFF:Callled Place Plastic ]=OFF ;
  10:  DO[11:OFF:Called Pallet Stop Ver]=OFF ;
  11:   ;
  12:  DO[50:OFF:Picked Incoming]=OFF ;
  13:  DO[51:OFF:Placed Pallet]=OFF ;
  14:  DO[52:OFF]=OFF ;
  15:  DO[53:OFF]=OFF ;
  16:   ;
  17:  DO[55:ON :Clear Of Inc Conv]=ON ;
  18:  DO[56:ON :Clear Of Pallets 1-3]=ON ;
  19:  DO[57:ON :Clear Of Pallets 4-6]=ON ;
  20:  DO[58:ON :Clear Of Jackpot]=ON ;
  21:   ;
  22:  DO[60:OFF:At Height Check POS]=OFF ;
  23:  DO[61:OFF:At Left Master Height]=OFF ;
  24:  DO[62:OFF:At Right Master Height]=OFF ;
  25:  DO[63:OFF:Height Check Failed]=OFF ;
  26:  DO[70:OFF:Vision Failed]=OFF ;
  27:  DO[87:OFF:Lights ON]=OFF ;
  28:   ;
  29:  DO[90:OFF:picking jackpot left]=OFF ;
  30:  DO[91:OFF:picking jackpot right]=OFF ;
  31:  DO[92:OFF:Picked Jackpot]=OFF ;
  32:  DO[93:OFF:Placing Jackpot Left]=OFF ;
  33:  DO[94:OFF:Placing Jackpot Right]=OFF ;
  34:  DO[95:OFF:Placed Jackpot]=OFF ;
  35:   ;
  36:  DO[110:OFF:Stop Check Complet]=OFF ;
  37:  DO[117:OFF:Stop Check Failed]=OFF ;
  38:  DO[121:OFF:At PP Height CK 1]=OFF ;
  39:  DO[122:OFF:At PP Height CH 2]=OFF ;
  40:  DO[123:OFF:Height Check Comp]=OFF ;
  41:   ;
  42:  R[72:Vison Pass/Fail]=0    ;
  43:  R[73: Vison Retry]=0    ;
  44:  R[75:Vision X Found]=0    ;
  45:  R[76:Vision Y Found]=0    ;
  46:  R[77:Vision R Found]=0    ;
/POS
/END

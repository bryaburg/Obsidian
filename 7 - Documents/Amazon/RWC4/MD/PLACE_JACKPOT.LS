/PROG  PLACE_JACKPOT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1143;
CREATE		= DATE 19-01-24  TIME 11:17:36;
MODIFIED	= DATE 19-01-24  TIME 11:17:36;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 1615;
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
   1:  CALL CHECK_POS    ;
   2:  DO[16:ON :Data Cleared]=OFF ;
   3:   ;
   4:  DO[5:OFF:Called Place Jackpot]=ON ;
   5:  WAIT DI[96:ON :Left Jackpot Clear]=ON OR DI[97:ON :Right Jackpot Clear]=ON    ;
   6:   ;
   7:  DO[70:OFF:Vision Failed]=OFF ;
   8:   ;
   9:  IF DO[40:ON :At Home]=ON AND DI[96:ON :Left Jackpot Clear]=ON AND DI[33:ON :Left Side Clear to Ent]=OFF,CALL PLACE_JACKPOT_LEFT ;
  10:   ;
  11:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  12:   ;
  13:  IF DO[40:ON :At Home]=ON AND DI[97:ON :Right Jackpot Clear]=ON AND DI[32:ON :Right Side Clear toEnt]=OFF,CALL PLACE_JACKPOT_RIGHT ;
  14:   ;
  15:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  16:   ;
  17:  IF DI[35:OFF:Robot On LH Side]=ON AND DI[96:ON :Left Jackpot Clear]=ON AND DI[33:ON :Left Side Clear to Ent]=OFF,CALL PLACE_JACKPOT_LEFT ;
  18:   ;
  19:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  20:   ;
  21:  IF DI[34:OFF:Robot On RH Side]=ON AND DI[97:ON :Right Jackpot Clear]=ON AND DI[32:ON :Right Side Clear toEnt]=OFF,CALL PLACE_JACKPOT_RIGHT ;
  22:   ;
  23:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  24:   ;
  25:  IF DI[35:OFF:Robot On LH Side]=ON AND DI[33:ON :Left Side Clear to Ent]=ON AND DI[97:ON :Right Jackpot Clear]=ON AND DI[32:ON :Right Side Clear toEnt]=OFF,CALL PLACE_JACKPOT_RIGHT ;
  26:   ;
  27:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  28:   ;
  29:  IF DI[34:OFF:Robot On RH Side]=ON AND DI[32:ON :Right Side Clear toEnt]=ON AND DI[96:ON :Left Jackpot Clear]=ON AND DI[33:ON :Left Side Clear to Ent]=OFF,CALL PLACE_JACKPOT_LEFT ;
  30:   ;
  31:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  32:   ;
  33:  IF DI[35:OFF:Robot On LH Side]=ON AND DI[96:ON :Left Jackpot Clear]=OFF AND DI[97:ON :Right Jackpot Clear]=ON AND DI[32:ON :Right Side Clear toEnt]=OFF AND DI[33:ON :Left Side Clear to Ent]=OFF,
    :  CALL PLACE_JACKPOT_RIGHT ;
  34:   ;
  35:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  36:   ;
  37:  IF DI[34:OFF:Robot On RH Side]=ON AND DI[97:ON :Right Jackpot Clear]=OFF AND DI[96:ON :Left Jackpot Clear]=ON AND DI[32:ON :Right Side Clear toEnt]=OFF AND DI[33:ON :Left Side Clear to Ent]=OFF,
    :  CALL PLACE_JACKPOT_LEFT ;
  38:   ;
  39:  IF DI[95:OFF:Place Jackpot Ack]=ON,JMP LBL[99] ;
  40:   ;
  41:  LBL[99] ;
  42:   ;
  43:  DO[95:OFF:Placed Jackpot]=OFF ;
  44:  DO[94:OFF:Placing Jackpot Right]=OFF ;
  45:  DO[93:OFF:Placing Jackpot Left]=OFF ;
  46:  DO[5:OFF:Called Place Jackpot]=OFF ;
/POS
/END

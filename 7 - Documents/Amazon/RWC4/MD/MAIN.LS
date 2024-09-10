/PROG  MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 705;
CREATE		= DATE 19-09-18  TIME 15:33:18;
MODIFIED	= DATE 20-04-15  TIME 07:39:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 28;
MEMORY_SIZE	= 1185;
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
   1:  LBL[1] ;
   2:   ;
   3:  IF DI[1:OFF:Call Home]=ON,CALL HOME ;
   4:   ;
   5:  IF DI[2:OFF:Call Maint]=ON,CALL MOVETOMAINT ;
   6:   ;
   7:  IF DI[3:OFF:Call Pick Incoming Tote]=ON,CALL PICK_INCOMING ;
   8:   ;
   9:  IF DI[4:OFF:Call Place Pallet]=ON,CALL PLACE_PALLET ;
  10:   ;
  11:  IF DI[5:OFF:Call Place Jackpot]=ON,CALL PLACE_JACKPOT ;
  12:   ;
  13:  IF DI[6:OFF:Call Pick Jackpot]=ON,CALL PICK_JACKPOT ;
  14:   ;
  15:  IF DI[8:OFF:Call Calibration Check]=ON,CALL CALIBRATIONCHECK ;
  16:   ;
  17:  IF DI[9:OFF:call camera calibration]=ON,CALL CAMEA_CALIBRATION ;
  18:   ;
  19:  IF DI[10:OFF:Call Place Plastic Pal]=ON,CALL PLACE_PLASTIC_PALLET ;
  20:   ;
  21:  IF DI[11:OFF:Call Pallet Stop Verif]=ON,CALL PALLET_STOP_VERIFY ;
  22:   ;
  23:   ;
  24:  !Used to monitor J1 OVC state ;
  25:  CALL OVC_CHECK    ;
  26:   ;
  27:  WAIT    .10(sec) ;
  28:  JMP LBL[1] ;
/POS
/END

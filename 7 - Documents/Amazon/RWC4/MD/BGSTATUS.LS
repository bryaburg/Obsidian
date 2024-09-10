/PROG  BGSTATUS
/ATTR
OWNER		= ASCBIN;
COMMENT		= "Background Logic";
PROG_SIZE	= 642;
CREATE		= DATE 18-03-24  TIME 10:49:14;
MODIFIED	= DATE 20-04-15  TIME 15:34:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 970;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  !This program runs in the backgnd ;
   2:  !continuously whether the robot ;
   3:  !is in cycle or not ;
   4:  DO[33:OFF:In Step]=($SSR.$SINGLESTEP) ;
   5:  DO[39:ON :TP Connected]=($TX.$connected) ;
   6:   ;
   7:  DO[31:OFF]=($MOR_GRP[1].$ROB_MOVE) ;
   8:   ;
   9:  IF (R[1:Pallet Position]=0 AND R[2:Tote Orientation]=0 AND R[3:Pallet Level]=0 AND R[4:Tote Position]=0),DO[17:ON :ROBOT NO DATA]=(ON) ;
  10:  IF (R[1:Pallet Position]<>0 OR R[2:Tote Orientation]<>0 OR R[3:Pallet Level]<>0 OR R[4:Tote Position]<>0),DO[17:ON :ROBOT NO DATA]=(OFF) ;
  11:   ;
  12:  //IF (DI[65:OFF:wood pallets active]=ON) THEN ;
  13:  //R[6:Left Master Heit]=R[42:Wood LH master]    ;
  14:  //R[7:Right Master Het]=R[43:Wood RH master]    ;
  15:  //ENDIF ;
  16:  //IF (DI[66:ON :plastic pallets active]=ON) THEN ;
  17:  //R[6:Left Master Heit]=R[44:Plastic LH mastr]    ;
  18:  //R[7:Right Master Het]=R[45:plastic RH mastr]    ;
  19:  //ENDIF ;
/POS
/END

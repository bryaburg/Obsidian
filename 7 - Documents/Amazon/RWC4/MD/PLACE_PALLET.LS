/PROG  PLACE_PALLET
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 869;
CREATE		= DATE 19-04-25  TIME 09:54:50;
MODIFIED	= DATE 20-02-17  TIME 12:50:28;
FILE_NAME	= PLACE_PA;
VERSION		= 0;
LINE_COUNT	= 33;
MEMORY_SIZE	= 1425;
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
   2:   ;
   3:  PAYLOAD[1:EOAT with tote] ;
   4:   ;
   5:  DO[16:ON :Data Cleared]=OFF ;
   6:  DO[4:OFF:Called Place Pallet]=ON ;
   7:   ;
   8:  DO[70:OFF:Vision Failed]=OFF ;
   9:   ;
  10:  !Depending on what pallet to ;
  11:  !place, choose the proper path ;
  12:  !to stay out of DCS zones ;
  13:  PR[6:currentlocation]=JPOS    ;
  14:  R[20:Homing J1 Pos]=PR[6,1:currentlocation]    ;
  15:   ;
  16:  IF R[20:Homing J1 Pos]<(-100) OR R[20:Homing J1 Pos]>100,JMP LBL[2] ;
  17:   ;
  18:   ;
  19:  CALL MID_POINT    ;
  20:  JMP LBL[3] ;
  21:   ;
  22:  LBL[2] ;
  23:  CALL FRM_JACKPOTMID_POINT    ;
  24:   ;
  25:  LBL[3] ;
  26:  UTOOL_NUM=3 ;
  27:  !The Offset program sets all ;
  28:  !positions for the robot to place ;
  29:  IF R[1:Pallet Position]<=3,CALL OFFSETS_LEFT ;
  30:  IF R[1:Pallet Position]>=4,CALL OFFSETS_RIGHT ;
  31:  IF R[1:Pallet Position]<=3,CALL PLACE_PALLET_LEFT ;
  32:  IF R[1:Pallet Position]>=4,CALL PLACE_PALLET_RIGHT ;
  33:   ;
/POS
/END

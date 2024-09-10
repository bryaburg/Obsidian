/PROG  JR_UFCONFIG
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1579;
CREATE		= DATE 18-03-30  TIME 09:01:48;
MODIFIED	= DATE 20-02-17  TIME 11:25:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 83;
MEMORY_SIZE	= 1883;
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
   1:  !This Routine Sets All User ;
   2:  !Frames For Your Tote Positions ;
   3:  UFRAME_NUM=0 ;
   4:   ;
   5:  PR[90:Side B UF Master]=UFRAME[3:Pallet#3] ;
   6:   ;
   7:  !set user frame 1 pallet pos1 ;
   8:  PR[96,1:Side B Offset]=R[80:Pallet1 UF Xoff]    ;
   9:   ;
  10:  PR[96,2:Side B Offset]=R[81:Pallet1 UF Yoff]    ;
  11:   ;
  12:  CALL MATRIX(90,96,91) ;
  13:   ;
  14:  UFRAME[1:Pallet#1]=PR[91:Pallet 1 UF] ;
  15:   ;
  16:  !set user frame 2 pallet pos2 ;
  17:  PR[96,1:Side B Offset]=R[82:Pallet2 UF Xoff]    ;
  18:   ;
  19:  PR[96,2:Side B Offset]=R[83:Pallet2 UF Yoff]    ;
  20:   ;
  21:  CALL MATRIX(90,96,92) ;
  22:   ;
  23:  UFRAME[2:Pallet#2]=PR[92:Pallet 2 UF] ;
  24:   ;
  25:  !set user frame 3 pallet pos3 ;
  26:  PR[96,1:Side B Offset]=R[84:Pallet3 UF Xoff]    ;
  27:   ;
  28:  PR[96,2:Side B Offset]=R[85:Pallet3 UF Yoff]    ;
  29:   ;
  30:  CALL MATRIX(90,96,93) ;
  31:   ;
  32:  UFRAME[3:Pallet#3]=PR[93:Pallet 3 UF] ;
  33:   ;
  34:  !set user frame 4 pallet pos4 ;
  35:   ;
  36:  PR[96,1:Side B Offset]=R[86:Pallet4 UF Xoff]    ;
  37:   ;
  38:  PR[96,2:Side B Offset]=R[87:Pallet4 UF Yoff]    ;
  39:   ;
  40:  CALL MATRIX(90,96,94) ;
  41:   ;
  42:  UFRAME[4:Pallet#4]=PR[94] ;
  43:   ;
  44:  PR[80:Side A UF Master]=UFRAME[7:UFrame7] ;
  45:   ;
  46:  !set user frame 5 pallet pos5 ;
  47:  PR[86,1:Side A Offset]=R[88:Pallet5 UF Xoff]    ;
  48:   ;
  49:  PR[86,2:Side A Offset]=R[89:Pallet5 UF Yoff]    ;
  50:   ;
  51:  CALL MATRIX(80,86,81) ;
  52:   ;
  53:  UFRAME[5:Pallet#5]=PR[81:Pallet 4 UF] ;
  54:   ;
  55:  !set user frame 6 pallet pos6 ;
  56:  PR[86,1:Side A Offset]=R[90:Pallet6 UF Xoff]    ;
  57:   ;
  58:  PR[86,2:Side A Offset]=R[91:Pallet6 UF Yoff]    ;
  59:   ;
  60:  CALL MATRIX(80,86,82) ;
  61:   ;
  62:  UFRAME[6:Pallet#6]=PR[82:Pallet 5 UF] ;
  63:   ;
  64:  !set user frame 7 pallet pos7 ;
  65:   ;
  66:  PR[86,1:Side A Offset]=R[92]    ;
  67:   ;
  68:  PR[86,2:Side A Offset]=R[92]    ;
  69:   ;
  70:  CALL MATRIX(80,86,83) ;
  71:   ;
  72:  UFRAME[7:UFrame7]=PR[83:Pallet 6 UF] ;
  73:   ;
  74:  !set user frame 8 pallet pos8 ;
  75:   ;
  76:  PR[86,1:Side A Offset]=R[94]    ;
  77:   ;
  78:  PR[86,2:Side A Offset]=R[95]    ;
  79:   ;
  80:  CALL MATRIX(80,86,84) ;
  81:   ;
  82:  UFRAME[8:UFrame8]=PR[84] ;
  83:   ;
/POS
/END

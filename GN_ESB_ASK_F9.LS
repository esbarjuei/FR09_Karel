/PROG  GN_ESB_ASK_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "ESB ASK DATA";
PROG_SIZE    = 3071;
CREATE       = DATE 29-01-26  TIME 08:00:00;
MODIFIED     = DATE 29-01-26  TIME 08:00:00;
FILE_NAME    = GN_ESB_ASK_F9;
VERSION      = 0;
LINE_COUNT   = 99;
MEMORY_SIZE  = 3515;
PROTECT      = READ_WRITE;
TCD:  STACK_SIZE     = 0,
      TASK_PRIORITY = 50,
      TIME_SLICE    = 0,
      BUSY_LAMP_OFF = 0,
      ABORT_REQUEST = 0,
      PAUSE_REQUEST = 0;
DEFAULT_GROUP = 1,*,*,*,*;
CONTROL_CODE  = 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE : TRUE;
/MN
   1:  ! ===================================== ;
   2:  ! INITIALIZED STATE ;
   3:  ! ===================================== ;
   4:  LBL[1:INITIALIZED] ;
   5:  CALL GN_CLS_SC_F9 ;
   6:  ! ---- Operator / HMI Messages ---- ;
   7:  MESSAGE[GN CORP - FRONTIER 09] ;
   8:  MESSAGE[MAIN PROGRAM STARTING.] ;
   9:  IF (R[800:Load_MODE_SELECT]=1) THEN ;
  10:    MESSAGE[LOAD & UNLOAD MODE is MANUAL.] ;
  11:  ENDIF ;
  12:  IF (R[800:Load_MODE_SELECT]=0) THEN ;
  13:    MESSAGE[LOAD & UNLOAD MODE is AUTOMATIC.] ;
  14:  ENDIF ;
  15:  WAIT 1.00(sec) ;
  16:  ;
  17:  ! ===================================== ;
  18:  ! LOAD PART EOAT PALLET DATA ;
  19:  ! ===================================== ;
  20:  LBL[2:LOAD_DATA] ;
  21:  CALL GN_ESB_SET_CYL_DATA_F9 ;
  22:  CALL GN_ESB_SET_EOAT_DAT_F9 ;
  23:  CALL GN_ESB_SET_PALT_DAT_F9 ;
  24:  ;
  25:  ! ===================================== ;
  26:  ! ASKING ID DATA FROM USER ;
  27:  ! ===================================== ;
  28:  LBL[3:ASK_DATA] ;
  29:  CALL GN_ASK_ID_F9 ;
  30:  CALL GN_CK_PRT_F9 ;
  31:  CALL GN_CK_EOT_F9 ;
  32:  CALL GN_CK_PAL_F9 ;
  33:  ;
  34:  ! ===================================== ;
  35:  ! CHECK PART ID FROM USER ;
  36:  ! ===================================== ;
  37:  IF SR[41:PART Status]=SR[40:Status Result],JMP LBL[4] ;
  38:  MESSAGE[INVALID PART ID - TRY AGAIN] ;
  39:  WAIT 3.00(sec) ;
  40:  JMP LBL[3] ;
  41:  ;
  42:  ! ===================================== ;
  43:  ! PART ID OK ;
  44:  ! ===================================== ;
  45:  LBL[4:PART_ID_OK] ;
  46:  CALL GN_CLS_SC_F9 ;
  47:  MESSAGE[PART ID FOUND.] ;
  48:  WAIT 3.00(sec) ;
  49:  ;
  50:  ! ===================================== ;
  51:  ! CHECK EOAT ID FROM USER ;
  52:  ! ===================================== ;
  53:  IF SR[42:EOAT Status]=SR[40:Status Result],JMP LBL[5] ;
  54:  MESSAGE[INVALID EOAT ID - TRY AGAIN] ;
  55:  WAIT 3.00(sec) ;
  56:  JMP LBL[3] ;
  57:  ;
  58:  ! ===================================== ;
  59:  ! EOAT ID OK ;
  60:  ! ===================================== ;
  61:  LBL[5:EOAT_ID_OK] ;
  62:  CALL GN_CLS_SC_F9 ;
  63:  MESSAGE[EOAT ID FOUND.] ;
  64:  WAIT 3.00(sec) ;
  65:  ;
  66:  ! ===================================== ;
  67:  ! CHECK PALLET ID FROM USER ;
  68:  ! ===================================== ;
  69:  IF SR[43:PALLET Status]=SR[40:Status Result],JMP LBL[6] ;
  70:  MESSAGE[INVALID PALLET ID - TRY AGAIN] ;
  71:  WAIT 3.00(sec) ;
  72:  JMP LBL[3] ;
  73:  ;
  74:  ! ===================================== ;
  75:  ! PALLET ID OK ;
  76:  ! ===================================== ;
  77:  LBL[6:PALLET_ID_OK] ;
  78:  CALL GN_CLS_SC_F9 ;
  79:  MESSAGE[PALLET ID FOUND.] ;
  80:  CALL GN_RED_PO_F9 ;
  81:  WAIT 3.00(sec) ;
  82:  ;
  83:  ! ===================================== ;
  84:  ! CHECK PALLET SLOTS ;
  85:  ! ===================================== ;
  86:  CALL GN_CK_PNM_F9 ;
  87:  IF SR[44:PNM Status]=SR[40:Status Result],JMP LBL[7] ;
  88:  MESSAGE[INVALID PARTS NUM - TRY AGAIN] ;
  89:  WAIT 3.00(sec) ;
  90:  JMP LBL[3] ;
  91:  ;
  92:  ! ===================================== ;
  93:  ! PALLET SLOTS OK ;
  94:  ! ===================================== ;
  95:  LBL[7:PALLET_SLOTS_OK] ;
  96:  CALL GN_CLS_SC_F9 ;
  97:  MESSAGE[PALLET and PARTS NUM is OK.] ;
  98:  WAIT 3.00(sec) ;
  99:  CALL GN_CLS_SC_F9 ;
/POS
/END

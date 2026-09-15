/PROG  GN_ESB_ASK_F9
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ESB ASK DATA";
PROG_SIZE	= 3071;
CREATE		= DATE 29-01-26  TIME 08:00:00;
MODIFIED	= DATE 29-01-26  TIME 08:00:00;
FILE_NAME	= GN_ESB_ASK_F9;
VERSION		= 0;
LINE_COUNT	= 93;
MEMORY_SIZE	= 3515;
PROTECT		= READ_WRITE;
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
  01:  ! ===================================== ;
  02:  ! INITIALIZED STATE                     ;
  03:  ! ===================================== ;
  04:  LBL[1:INITIALIZED] ;
  05:  CALL GN_CLS_SC_F9 ;
  06:  ! ---- Operator / HMI Messages ---- ;
  07:  MESSAGE[GN CORP - FRONTIER 09] ;
  08:  MESSAGE[MAIN PROGRAM STARTING.] ;
  09:  WAIT 2.00(sec) ;
  10:  ;
  11:  ! ===================================== ;
  12:  ! LOAD PART EOAT PALLET DATA            ;
  13:  ! ===================================== ;
  14:  LBL[2:LOAD_DATA] ;
  15:  CALL GN_ESB_SET_CYL_DATA_F9 ;
  16:  CALL GN_ESB_SET_EOAT_DAT_F9 ;
  17:  CALL GN_ESB_SET_PALT_DAT_F9 ;
  18:  ;
  19:  ! ===================================== ;
  20:  ! ASKING ID DATA FROM USER              ;
  21:  ! ===================================== ;
  22:  LBL[3:ASK_DATA] ;
  23:  CALL GN_ASK_ID_F9 ;
  24:  CALL GN_CK_PRT_F9 ;
  25:  CALL GN_CK_EOT_F9 ;
  26:  CALL GN_CK_PAL_F9 ;
  27:  ;
  28:  ! ===================================== ;
  29:  ! CHECK PART ID FROM USER               ;
  30:  ! ===================================== ;
  31:  IF SR[41:PART Status]=SR[40:Status Result],JMP LBL[4] ;
  32:  MESSAGE[INVALID PART ID - TRY AGAIN] ;
  33:  WAIT 3.00(sec) ;
  34:  JMP LBL[3] ;
  35:  ;
  36:  ! ===================================== ;
  37:  ! PART ID OK                            ;
  38:  ! ===================================== ;
  39:  LBL[4:PART_ID_OK] ;
  40:  CALL GN_CLS_SC_F9 ;
  41:  MESSAGE[PART ID FOUND.] ;
  42:  WAIT 3.00(sec) ;
  43:  ;
  44:  ! ===================================== ;
  45:  ! CHECK EOAT ID FROM USER               ;
  46:  ! ===================================== ;
  47:  IF SR[42:EOAT Status]=SR[40:Status Result],JMP LBL[5] ;
  48:  MESSAGE[INVALID EOAT ID - TRY AGAIN] ;
  49:  WAIT 3.00(sec) ;
  50:  JMP LBL[3] ;
  51:  ;
  52:  ! ===================================== ;
  53:  ! EOAT ID OK                            ;
  54:  ! ===================================== ;
  55:  LBL[5:EOAT_ID_OK] ;
  56:  CALL GN_CLS_SC_F9 ;
  57:  MESSAGE[EOAT ID FOUND.] ;
  58:  WAIT 3.00(sec) ;
  59:  ;
  60:  ! ===================================== ;
  61:  ! CHECK PALLET ID FROM USER             ;
  62:  ! ===================================== ;
  63:  IF SR[43:PALLET Status]=SR[40:Status Result],JMP LBL[6] ;
  64:  MESSAGE[INVALID PALLET ID - TRY AGAIN] ;
  65:  WAIT 3.00(sec) ;
  66:  JMP LBL[3] ;
  67:  ;
  68:  ! ===================================== ;
  69:  ! PALLET ID OK                          ;
  70:  ! ===================================== ;
  71:  LBL[6:PALLET_ID_OK] ;
  72:  CALL GN_CLS_SC_F9 ;
  73:  MESSAGE[PALLET ID FOUND.] ;
  74:  CALL GN_RED_PO_F9 ;
  75:  WAIT 3.00(sec) ;
  76:  ;
  77:  ! ===================================== ;
  78:  ! CHECK PALLET SLOTS                    ;
  79:  ! ===================================== ;
  80:  CALL GN_CK_PNM_F9 ;
  81:  IF SR[44:PNM Status]=SR[40:Status Result],JMP LBL[7] ;
  82:  MESSAGE[INVALID PARTS NUM - TRY AGAIN] ;
  83:  WAIT 3.00(sec) ;
  84:  JMP LBL[3] ;
  85:  ;
  86:  ! ===================================== ;
  87:  ! PALLET SLOTS OK                       ;
  88:  ! ===================================== ;
  89:  LBL[7:PALLET_SLOTS_OK] ;
  90:  CALL GN_CLS_SC_F9 ;
  91:  MESSAGE[PALLET and PARTS NUM is OK.] ;
  92:  WAIT 3.00(sec) ;
  93:  CALL GN_CLS_SC_F9 ;
/POS
/END

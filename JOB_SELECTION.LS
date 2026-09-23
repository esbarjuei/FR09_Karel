/PROG  JOB_SELECTION
/ATTR
OWNER       = MNEDITOR;
COMMENT     = "";
PROG_SIZE   = 0;
CREATE      = DATE 19-03-21  TIME 16:56:30;
MODIFIED    = DATE 26-09-22  TIME 00:00:00;
FILE_NAME   = ;
VERSION     = 0;
LINE_COUNT  = 100;
MEMORY_SIZE = 0;
PROTECT     = READ_WRITE;
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
   1:  !SR[1] = JOB_VAR_ID_GRIP ;
   2:  !SR[2] = JOB_VAR_OD_GRIP ;
   3:  !SR[3] = JOB_VAR_45ANGLE ;
   4:  !SR[4] = JOB_VAR_COMPOSITE ;
   5:  !SR[5] = JOB_VAR_SLIP ;
   6:  !R[70] is the item number ;
   7:  !R[71] if using previous data ;
   8:  !SR[21] & SR[22] should be same ;
   9:  SR[21]=R[70] ;
  10:  SR[22]=R[71] ;
  11:  R[108]=5 ;
  12:  IF (R[70]<10000) THEN ;
  13:    R[108]=4 ;
  14:  ENDIF ;
  15:  IF (R[70]<1000) THEN ;
  16:    R[108]=3 ;
  17:  ENDIF ;
  18:  IF (R[70]<100) THEN ;
  19:    R[108]=2 ;
  20:  ENDIF ;
  21:  IF (R[70]<10) THEN ;
  22:    R[108]=1 ;
  23:  ENDIF ;
  24:  SR[23]=SUBSTR SR[21],1,R[108] ;
  25:  R[196]=SR[23] ;
  26:  SR[24]=SUBSTR SR[22],1,R[108] ;
  27:  R[197]=SR[24] ;
  28:  !--------------------------- ;
  29:  !KAREL PROGRAM ;
  30:  !Selection code = 9990 ;
  31:  !Last Modified: 2026-09-16 ;
  32:  !Modified by: ERFAN ;
  33:  !--------------------------- ;
  34:  IF (R[196]=9990) THEN ;
  35:    IF (R[418:Load OD-ID]=11) THEN ;
  36:      CALL GN_CLS_SC_F9 ;
  37:      MESSAGE[ID Gripping !] ;
  38:      WAIT .50(sec) ;
  39:      CALL SR[1](SR[23],SR[24]) ;
  40:    ENDIF ;
  41:    IF (R[418:Load OD-ID]=99) THEN ;
  42:      CALL GN_CLS_SC_F9 ;
  43:      MESSAGE[OD Gripping !] ;
  44:      WAIT .50(sec) ;
  45:      CALL SR[2](SR[23],SR[24]) ;
  46:    ENDIF ;
  47:  ENDIF ;
/POS
/END

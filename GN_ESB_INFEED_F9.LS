/PROG  GN_ESB_INFEED_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "INFEED OPERATION";
PROG_SIZE    = 3071;
CREATE       = DATE 12-05-26  TIME 08:00:00;
MODIFIED     = DATE 12-05-26  TIME 08:00:00;
FILE_NAME    = GN_ESB_INFEED_F9;
VERSION      = 0;
LINE_COUNT   = 200;
MEMORY_SIZE  = 3515;
PROTECT      = READ_WRITE;
TCD:  STACK_SIZE     = 0,
      TASK_PRIORITY = 50,
      TIME_SLICE    = 0,
      BUSY_LAMP_OFF = 0,
      ABORT_REQUEST = 0,
      PAUSE_REQUEST = 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE   : TRUE;

/MN
   1:  UFRAME_NUM = 12 ;
   2:  UTOOL_NUM  = 1  ;
   3:  ;
   4:  ! ===================================== ;
   5:  ! Moving to the INFEED POSITION TOP ;
   6:  ! ===================================== ;
   7:  L PR[190:Infeed Position Top] 500mm/sec FINE ;
   8:  WAIT 0.5 (sec) ;
   9:  ;
  10:  ! ===================================== ;
  11:  ! Open or close gripper based on OD or ID ;
  12:  ! ===================================== ;
  13:  ;
  14:  IF (R[418:Load OD11 ID99]=11) THEN ;
  15:     CALL GN_ESB_OPN_GRP_F9 ;
  16:  ELSE ;
  17:     IF (R[418:Load OD11 ID99]=99) THEN ;
  18:        CALL GN_ESB_CLS_GRP_F9 ;
  19:     ELSE ;
  20:        MESSAGE[INVALID OD/ID VALUE] ;
  21:        ABORT ;
  22:     ENDIF ;
  23:  ENDIF ;
  24:  ;
  25:  ! ===================================== ;
  26:  ! Moving to the INFEED POSITION BOTTOM ;
  27:  ! ===================================== ;
  28: ! L PR[191:Infeed Position Bottom] 500mm/sec FINE ;
  29:  !WAIT 0.5 (sec) ;
  30:  !;
  31:  ! ===================================== ;
  32:  ! Grabbing the Object ;
  33:  ! ===================================== ;
  34:  !IF (R[418:Load OD11 ID99]=11) THEN ;
  35:    ! CALL GN_ESB_GRAB_OD_F9 ;
  36:  !ELSE ;
  37:    ! IF (R[418:Load OD11 ID99]=99) THEN ;
  38:      !  CALL GN_ESB_GRAB_ID_F9 ;
  39:     !ELSE ;
  40:      !  MESSAGE[INVALID OD/ID VALUE] ;
  41:       ! ABORT ;
  42:     !ENDIF ;
  43:  !ENDIF ;
/POS
/END

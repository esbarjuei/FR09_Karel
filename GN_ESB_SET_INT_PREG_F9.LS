/PROG  GN_ESB_SET_INT_PREG_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "SET INITIAL POSITION REGISTERS";
PROG_SIZE    = 3071;
CREATE       = DATE 12-05-26  TIME 08:00:00;
MODIFIED     = DATE 12-05-26  TIME 08:00:00;
FILE_NAME    = GN_ESB_SET_INT_PREG_F9;
VERSION      = 0;
LINE_COUNT   = 60;
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
   1:  ;
   2:  ! ===================================== ;
   3:  ! SET THE INFEED POSITION TOP ;
   4:  ! ===================================== ;
   5:  UFRAME_NUM = 12 ;
   6:  UTOOL_NUM  = 1 ;
   7:  ! PR[190:INFEED POSITION TOP] = PR[180:ACTIVE PALLET ORIGIN] ;
   8:  PR[190:INFEED POSITION TOP] = LPOS ;
   9:  PR[190,1] = PR[180,1] ;
  10:  PR[190,2] = PR[180,2] ;
  11:  R[169:TMP] = R[410:Part Height (mm)]*3 ;
  12:  PR[190,3] = R[169:TMP] ;
  13:  ! PR[190,4] = PR[180,4] ;
  14:  ! PR[190,5] = PR[180,5] ;
  15:  ! PR[190,6] = PR[180,6] ;
  16:  MESSAGE[SET UP INFD POS TOP !] ;
  17:  ;
  18:  ! ===================================== ;
  19:  ! MAKE THE INFEED POSITION BOTTOM ;
  20:  ! ===================================== ;
  21:  ! PR[191:INFEED POSITION BOTTOM] = PR[190:INFEED POSITION TOP] ;
  22:  PR[191:INFEED POSITION BOTTOM] = LPOS ;
  23:  PR[191,1] = PR[190,1] ;
  24:  PR[191,2] = PR[190,2] ;
  25:  PR[191,3] = PR[180,3] ;
  26:  ! PR[191,4] = PR[190,4] ;
  27:  ! PR[191,5] = PR[190,5] ;
  28:  ! PR[191,6] = PR[190,6] ;
  29:  MESSAGE[SET UP INFD POS BTM !] ;
  30:  ;
  31:  ! ===================================== ;
  32:  ! SET THE INFEED POSITION TO GRAB ;
  33:  ! ===================================== ;
  34:  IF (R[700:GRAB_MODE_SELECT]=0),JMP LBL[100] ;
  35:  IF (R[700:GRAB_MODE_SELECT]=1),JMP LBL[101] ;
  36:  MESSAGE[Error in infeed position] ;
  37:  PAUSE ;
  38:  LBL[100] ;
  39:  PR[191,3] = R[410] + R[417] + R[701] ;
  40:  JMP LBL[999] ;
  41:  LBL[101] ;
  42:  PR[191,3] = R[702:INFEED USER HEIGHT] ;
  43:  LBL[999] ;
/POS
/END


/PROG  GN_ESB_SVE_INFD_Z_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "SAVE THE GRAB HEIGHT POSITION BY USER";
PROG_SIZE    = 3071;
CREATE       = DATE 08-06-26  TIME 08:00:00;
MODIFIED     = DATE 08-06-26  TIME 08:00:00;
FILE_NAME    = GN_ESB_SVE_INFD_Z_F9;
VERSION      = 0;
LINE_COUNT   = 30;
MEMORY_SIZE  = 3515;
PROTECT      = READ_WRITE;
TCD:  STACK_SIZE     = 0,
      TASK_PRIORITY = 50,
      TIME_SLICE    = 0,
      BUSY_LAMP_OFF = 0,
      ABORT_REQUEST = 0,
      PAUSE_REQUEST = 0;
DEFAULT_GROUP = *,*,*,*,*;
CONTROL_CODE  = 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE : TRUE;

/MN
    1:  UFRAME_NUM=12 ;
    2:  UTOOL_NUM=1 ;
	3:  ;
    4:  ! ===================================== ;
	5:  ! Get the height for grabbing the object from the user
	6:  ! ===================================== ;
    7:  PR[192:INFEED USER POSITION]=LPOS ;
	8:  R[702:INFEED USER HEIGHT]=PR[192,3] ;
/POS
/END

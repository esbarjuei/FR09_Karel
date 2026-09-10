/PROG  GN_ESB_SET_GRB_HGT_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "SET THE GRAB HEIGHT POSITION";
PROG_SIZE    = 3071;
CREATE       = DATE 05-06-26  TIME 08:00:00;
MODIFIED     = DATE 05-06-26  TIME 08:00:00;
FILE_NAME    = GN_ESB_SET_GRB_HGT_F9;
VERSION      = 0;
LINE_COUNT   = 20;
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
	5:  ! Adjust the height for grabbing the object
	6:  ! ===================================== ;
    7:  PR[191:INFEED POSITION BOTTOM]=PR[190:INFEED POSITION TOP];
	8:  PR[191,3]=R[410:Part Height (mm)]+R[417:Mounting Block] ;
/POS
/END

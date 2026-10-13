/PROG  GN_TCH_PRU_F9
/ATTR
OWNER           = MNEDITOR;
COMMENT         = "Teaching Pre-unloading Position";
PROG_SIZE       = 3071;
CREATE          = DATE 10-08-26  TIME 08:00:00;
MODIFIED        = DATE 29-08-26  TIME 08:00:00;
FILE_NAME       = GN_TCH_PRU_F9;
VERSION         = 0;
LINE_COUNT      = 9;
MEMORY_SIZE     = 3515;
PROTECT         = READ_WRITE;
TCD:  STACK_SIZE     = 0,
      TASK_PRIORITY  = 50,
      TIME_SLICE     = 0,
      BUSY_LAMP_OFF  = 0,
      ABORT_REQUEST = 0,
      PAUSE_REQUEST = 0;
DEFAULT_GROUP   = 1,*,*,*,*;
CONTROL_CODE    = 00000000 00000000;
/APPL

AUTO_SINGULARITY_HEADER;
  ENABLE_SINGULARITY_AVOIDANCE : TRUE;
/MN
   1:  ! ===================================== ;
   2:  ! RECORD THE CURRENT POSITION ;
   3:  ! ===================================== ;
   4:  PR[172:PRE_UNLOAD]=LPOS ;
   5:  R[864:PRUNLOAD_X]=PR[172,1] ;
   6:  R[865:PRUNLOAD_Y]=PR[172,2] ;
   7:  R[866:PRUNLOAD_Z]=PR[172,3] ;
   8:  R[867:PRUNLOAD_A]=PR[172,4] ;
   9:  R[868:PRUNLOAD_B]=PR[172,5] ;
  10:  R[869:PRUNLOAD_C]=PR[172,6] ;
   5:  ! ===================================== ;
   6:  CALL GN_CLS_SC_F9 ;
   7:  MESSAGE[PRE_UnLoad POS is recorded.] ;
   8:  WAIT 1.00(sec) ;
   9:  ! ===================================== ;
/POS
/END

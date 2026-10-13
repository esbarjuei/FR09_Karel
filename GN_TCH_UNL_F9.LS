/PROG  GN_TCH_UNL_F9
/ATTR
OWNER           = MNEDITOR;
COMMENT         = "Teaching Unloading Position";
PROG_SIZE       = 3071;
CREATE          = DATE 10-08-26  TIME 08:00:00;
MODIFIED        = DATE 29-08-26  TIME 08:00:00;
FILE_NAME       = GN_TCH_UNL_F9;
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
   4:  PR[173:UNLOAD]=LPOS ;
   5:  R[871:UNLOAD_X]=PR[173,1] ;
   6:  R[872:UNLOAD_Y]=PR[173,2] ;
   7:  R[873:UNLOAD_Z]=PR[173,3] ;
   8:  R[874:UNLOAD_A]=PR[173,4] ;
   9:  R[875:UNLOAD_B]=PR[173,5] ;
  10:  R[876:UNLOAD_C]=PR[173,6] ;
   5:  ! ===================================== ;
   6:  CALL GN_CLS_SC_F9 ;
   7:  MESSAGE[UnLoad POS is recorded.] ;
   8:  WAIT 1.00(sec) ;
   9:  ! ===================================== ;
/POS
/END

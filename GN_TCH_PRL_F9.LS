/PROG  GN_TCH_PRL_F9
/ATTR
OWNER           = MNEDITOR;
COMMENT         = "Teaching Preloading Position";
PROG_SIZE       = 3071;
CREATE          = DATE 10-08-26  TIME 08:00:00;
MODIFIED        = DATE 29-08-26  TIME 08:00:00;
FILE_NAME       = GN_TCH_PRL_F9;
VERSION         = 0;
LINE_COUNT      = 15;
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
   4:  PR[170:PRE_LOAD]=LPOS ;
   5:  R[850:PRLOAD_X]=PR[170,1] ;
   6:  R[851:PRLOAD_Y]=PR[170,2] ;
   7:  R[852:PRLOAD_Z]=PR[170,3] ;
   8:  R[853:PRLOAD_A]=PR[170,4] ;
   9:  R[854:PRLOAD_B]=PR[170,5] ;
  10:  R[855:PRLOAD_C]=PR[170,6] ;
  11:  ! ===================================== ;
  12:  CALL GN_CLS_SC_F9 ;
  13:  MESSAGE[Preload POS is recorded.] ;
  14:  WAIT 1.00(sec) ;
  15:  ! ===================================== ;
/POS
/END

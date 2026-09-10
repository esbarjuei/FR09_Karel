/PROG  GN_ESB_GRAB_OD_F9
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRABBING OD";
PROG_SIZE	= 3071;
CREATE		= DATE 08-05-26  TIME 08:00:00;
MODIFIED	= DATE 08-05-26  TIME 08:00:00;
FILE_NAME	= GN_ESB_GRAB_OD_F9;
VERSION		= 0;
LINE_COUNT	= 100;
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
   1:  IF (RI[3]=ON) THEN ;
   2:     UFRAME_NUM=12 ;
   3:     UTOOL_NUM=1 ;
   4:  ;
   5:  ! ===================================== ;
   6:  ! Close & open the gripper to ensure full clamp ;
   7:  ! ===================================== ;
   8:     CALL GN_ESB_CLS_GRP_F9 ;
   9:     WAIT 0.50(sec) ;
  10:     PR[200:GRAB_POSITION]=LPOS ;
  11:     PR[200,3]=PR[200,3]+R[86] ;
  12:     L PR[200] 50mm/sec CNT50 ;
  13:     CALL GN_ESB_OPN_GRP_F9 ;
  14:     WAIT 0.50(sec) ;
  15:     PR[200,3]=PR[200,3]-R[86] ;
  16:     L PR[200] 50mm/sec FINE ;
  17:     CALL GN_ESB_CLS_GRP_F9 ;
  18:     MESSAGE[Grabbing OD completed.] ;
  19:  ;
  20:  ! ===================================== ;
  21:     ! Verify part is gripped ;
  22:  ! ===================================== ;
  23:     IF ((DI[1]=OFF) OR (DI[2]=OFF)) THEN ;
  24:        MESSAGE[Grab failed!] ;
  25:        PAUSE ;
  26:     ENDIF ;
  27:  ELSE ;
  28:     MESSAGE[No tools on the robot!] ;
  29:        PAUSE ;
  30:  ENDIF ;
/END

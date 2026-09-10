/PROG  GN_ESB_SET_PALT_DAT_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "SET PALLET DATA (5 ITEMS + XYZ ORG)";
PROG_SIZE    = 1200;
CREATE       = DATE 26-01-30  TIME 16:10:00;
MODIFIED     = DATE 26-01-30  TIME 16:10:00;
FILE_NAME    = GN_ESB_SET_PALT_DAT_F9;
VERSION      = 0;
LINE_COUNT   = 120;
MEMORY_SIZE  = 2400;
PROTECT      = READ_WRITE;
DEFAULT_GROUP = *,*,*,*,*;
/MN
   1:  ! ===================================== ;
   2:  ! PALLET DATA (MM UNITS)               ;
   3:  ! START REGISTER: R[600]               ;
   4:  ! 10 REGISTERS PER PALLET             ;
   5:  ! ===================================== ;

   6:  ! -------- PALLET 1 -------- ;
   7:  R[600:ID_P1]        = 1 ;
   8:  R[601:P1_ROWS]      = 1 ;
   9:  R[602:P1_COLS]      = 1 ;
  10:  R[603:P1_ROW_DIST]  = 1.0 ;
  11:  R[604:P1_COL_DIST]  = 1.0 ;
  12:  R[605:P1_HEIGHT]    = 1.0 ;
  13:  R[606:P1_SLOTS]     = 1 ;
  14:  R[607:P1_X_ORG]     = 100.0 ;
  15:  R[608:P1_Y_ORG]     = 200.0 ;
  16:  R[609:P1_Z_ORG]     = 300.0 ;

   17:  ! -------- PALLET 2 -------- ;
   18:  R[610:ID_P2]        = 2 ;
   19:  R[611:P2_ROWS]      = 2 ;
   20:  R[612:P2_COLS]      = 2 ;
   21:  R[613:P2_ROW_DIST]  = 5.5 ;
   22:  R[614:P2_COL_DIST]  = 5.5 ;
   23:  R[615:P2_HEIGHT]    = 5.5 ;
   24:  R[616:P2_SLOTS]     = 5 ;
   25:  R[617:P2_X_ORG]     = 110.0 ;
   26:  R[618:P2_Y_ORG]     = 210.0 ;
   27:  R[619:P2_Z_ORG]     = 310.0 ;

   28:  ! -------- PALLET 3 -------- ;
   29:  R[620:ID_P3]        = 3 ;
   30:  R[621:P3_ROWS]      = 2 ;
   31:  R[622:P3_COLS]      = 2 ;
   32:  R[623:P3_ROW_DIST]  = 4.4 ;
   33:  R[624:P3_COL_DIST]  = 4.4 ;
   34:  R[625:P3_HEIGHT]    = 4.4 ;
   35:  R[626:P3_SLOTS]     = 5 ;
   36:  R[627:P3_X_ORG]     = 120.0 ;
   37:  R[628:P3_Y_ORG]     = 220.0 ;
   38:  R[629:P3_Z_ORG]     = 320.0 ;

   39:  ! -------- PALLET 4 -------- ;
   40:  R[630:ID_P4]        = 4 ;
   41:  R[631:P4_ROWS]      = 0 ;
   42:  R[632:P4_COLS]      = 0 ;
   43:  R[633:P4_ROW_DIST]  = 0 ;
   44:  R[634:P4_COL_DIST]  = 0 ;
   45:  R[635:P4_HEIGHT]    = 0 ;
   46:  R[636:P4_SLOTS]     = 0 ;
   47:  R[637:P4_X_ORG]     = 0 ;
   48:  R[638:P4_Y_ORG]     = 0 ;
   49:  R[639:P4_Z_ORG]     = 0 ;

   50:  ! -------- PALLET 5 -------- ;
   51:  R[640:ID_P5]        = 5 ;
   52:  R[641:P5_ROWS]      = 0 ;
   53:  R[642:P5_COLS]      = 0 ;
   54:  R[643:P5_ROW_DIST]  = 0 ;
   55:  R[644:P5_COL_DIST]  = 0 ;
   56:  R[645:P5_HEIGHT]    = 0 ;
   57:  R[646:P5_SLOTS]     = 0 ;
   58:  R[647:P5_X_ORG]     = 0 ;
   59:  R[648:P5_Y_ORG]     = 0 ;
   60:  R[649:P5_Z_ORG]     = 0 ;

   61:  MESSAGE['PALLET DATA LOADED'] ;
   62:  WAIT 2.00(sec) ;
/POS
/END

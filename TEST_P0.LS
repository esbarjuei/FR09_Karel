/PROG  TEST_P0
/ATTR
OWNER       = MNEDITOR;
COMMENT     = "SET PALLET DATA (5 ITEMS)";
PROG_SIZE   = 1600;
CREATE      = DATE 26-03-31  TIME 16:10:00;
MODIFIED    = DATE 26-03-31  TIME 16:45:00;
FILE_NAME   = TEST_P0;
VERSION     = 2;
LINE_COUNT  = 128;
MEMORY_SIZE = 2800;
PROTECT     = READ_WRITE;
DEFAULT_GROUP = *,*,*,*,*;
/MN
   1:  ! ===================================== ;
   2:  ! PALLET DATA (MM UNITS)                 ;
   3:  ! START REGISTER: R[600]                 ;
   4:  ! 6 REGISTERS PER PALLET                ;
   5:  ! TOTAL ITEMS: 10                       ;
   6:  ! ===================================== ;
   
   7: UFRAME_NUM=1 ;
   7: UTOOL_NUM=1 ;

   

   7:  ! -------- PALLET 1 -------- ;
   8:  R[600:PALT1_ID]        = 1 ;
   9:  R[601:PALT1_Rows]      = 0 ;
  10:  R[602:PALT1_Columns]   = 0 ;
  11:  R[603:PALT1_Row_Dist_mm]  = 0 ;
  12:  R[604:PALT1_Col_Dist_mm]  = 0 ;
  13:  R[605:PALT1_Hgt_mm]       = 0 ;
  14:  PR[170,1]=100 ; -- X_mm ;
  15:  PR[170,2]=200 ; -- Y_mm ; 
  16:  PR[170,3]=300 ; -- Z_mm ;
  17:  PR[170,4]=0 ;   -- W_deg ;
  18:  PR[170,5]=0 ;   -- P_deg ;
  19:  PR[170,6]=0 ;   -- R_deg ;
  20:  PR[170:Pallet1 Origin];

  14:  ! -------- PALLET 2 -------- ;
  15:  R[606:PALT2_ID]        = 2 ;
  16:  R[607:PALT2_Rows]      = 0 ;
  17:  R[608:PALT2_Columns]   = 0 ;
  18:  R[609:PALT2_Row_Dist_mm]  = 0 ;
  19:  R[610:PALT2_Col_Dist_mm]  = 0 ;
  20:  R[611:PALT2_Hgt_mm]       = 0 ;

  21:  ! -------- PALLET 3 -------- ;
  22:  R[612:PALT3_ID]        = 3 ;
  23:  R[613:PALT3_Rows]      = 0 ;
  24:  R[614:PALT3_Columns]   = 0 ;
  25:  R[615:PALT3_Row_Dist_mm]  = 0 ;
  26:  R[616:PALT3_Col_Dist_mm]  = 0 ;
  27:  R[617:PALT3_Hgt_mm]       = 0 ;

  28:  ! -------- PALLET 4 -------- ;
  29:  R[618:PALT4_ID]        = 4 ;
  30:  R[619:PALT4_Rows]      = 0 ;
  31:  R[620:PALT4_Columns]   = 0 ;
  32:  R[621:PALT4_Row_Dist_mm]  = 0 ;
  33:  R[622:PALT4_Col_Dist_mm]  = 0 ;
  34:  R[623:PALT4_Hgt_mm]       = 0 ;

  35:  ! -------- PALLET 5 -------- ;
  36:  R[624:PALT5_ID]        = 5 ;
  37:  R[625:PALT5_Rows]      = 0 ;
  38:  R[626:PALT5_Columns]   = 0 ;
  39:  R[627:PALT5_Row_Dist_mm]  = 0 ;
  40:  R[628:PALT5_Col_Dist_mm]  = 0 ;
  41:  R[629:PALT5_Hgt_mm]       = 0 ;

  42:  ! -------- PALLET 6 -------- ;
  43:  R[630:PALT6_ID]        = 6 ;
  44:  R[631:PALT6_Rows]      = 0 ;
  45:  R[632:PALT6_Columns]   = 0 ;
  46:  R[633:PALT6_Row_Dist_mm]  = 0 ;
  47:  R[634:PALT6_Col_Dist_mm]  = 0 ;
  48:  R[635:PALT6_Hgt_mm]       = 0 ;

  49:  ! -------- PALLET 7 -------- ;
  50:  R[636:PALT7_ID]        = 7 ;
  51:  R[637:PALT7_Rows]      = 0 ;
  52:  R[638:PALT7_Columns]   = 0 ;
  53:  R[639:PALT7_Row_Dist_mm]  = 0 ;
  54:  R[640:PALT7_Col_Dist_mm]  = 0 ;
  55:  R[641:PALT7_Hgt_mm]       = 0 ;

  56:  ! -------- PALLET 8 -------- ;
  57:  R[642:PALT8_ID]        = 8 ;
  58:  R[643:PALT8_Rows]      = 0 ;
  59:  R[644:PALT8_Columns]   = 0 ;
  60:  R[645:PALT8_Row_Dist_mm]  = 0 ;
  61:  R[646:PALT8_Col_Dist_mm]  = 0 ;
  62:  R[647:PALT8_Hgt_mm]       = 0 ;

  63:  ! -------- PALLET 9 -------- ;
  64:  R[648:PALT9_ID]        = 9 ;
  65:  R[649:PALT9_Rows]      = 0 ;
  66:  R[650:PALT9_Columns]   = 0 ;
  67:  R[651:PALT9_Row_Dist_mm]  = 0 ;
  68:  R[652:PALT9_Col_Dist_mm]  = 0 ;
  69:  R[653:PALT9_Hgt_mm]       = 0 ;

  70:  ! -------- PALLET 10 -------- ;
  71:  R[654:PALT10_ID]       = 10 ;
  72:  R[655:PALT10_Rows]     = 0 ;
  73:  R[656:PALT10_Columns]  = 0 ;
  74:  R[657:PALT10_Row_Dist_mm] = 0 ;
  75:  R[658:PALT10_Col_Dist_mm] = 0 ;
  76:  R[659:PALT10_Hgt_mm]      = 0 ;

  77: MESSAGE['PALLET DATA LOADED'] ;
  78: WAIT 2.00(sec) ;
/POS
/END

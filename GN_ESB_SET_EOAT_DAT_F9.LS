/PROG  GN_ESB_SET_EOAT_DAT_F9
/ATTR
OWNER       = MNEDITOR;
COMMENT     = "SET EOAT DATA (20 ITEMS)";
PROG_SIZE    = 1600;
CREATE       = DATE 26-03-10  TIME 16:10:00;
MODIFIED     = DATE 26-03-10  TIME 16:45:00;
FILE_NAME    = GN_ESB_SET_EOAT_DAT_F9;
VERSION      = 2;
LINE_COUNT   = 100;
MEMORY_SIZE  = 2800;
PROTECT      = READ_WRITE;
DEFAULT_GROUP = *,*,*,*,*;
/MN
   1:  ! ===================================== ;
   2:  ! EOAT DATA (MM UNITS)                  ;
   3:  ! START REGISTER: R[500]                ;
   4:  ! 5 REGISTERS PER EOAT                  ;
   5:  ! TOTAL ITEMS: 20                       ;
   6:  ! ===================================== ;

   7:  ! -------- EOAT 1 -------- ;
   8:  R[500:Eoat1_ID]                 = 1 ;
   9:  R[501:Eoat1_Jaw_hgt_mm]         = 0 ;
  10:  R[502:Eoat1_Mtg_blk_mm]         = 0 ;
  11:  R[503:Eoat1_Lod_OD<99>_ID<11>]     = 11 ;
  12:  R[504:Eoat1_unLd_OD<99>_ID<11>]    = 11 ;

  13:  ! -------- EOAT 2 -------- ;
  14:  R[505:Eoat2_ID]                 = 2 ;
  15:  R[506:Eoat2_Jaw_hgt_mm]         = 2.0 ;
  16:  R[507:Eoat2_Mtg_blk_mm]         = 2.0 ;
  17:  R[508:Eoat2_Lod_OD<99>_ID<11>]     = 11 ;
  18:  R[509:Eoat2_unLd_OD<99>_ID<11>]    =11 ;

  19:  ! -------- EOAT 3 -------- ;
  20:  R[510:Eoat3_ID]                 = 3 ;
  21:  R[511:Eoat3_Jaw_hgt_mm]         = 0 ;
  22:  R[512:Eoat3_Mtg_blk_mm]         = 0 ;
  23:  R[513:Eoat3_Lod_OD<99>_ID<11>]     = 0 ;
  24:  R[514:Eoat3_unLd_OD<99>_ID<11>]    = 0 ;

  25:  ! -------- EOAT 4 -------- ;
  26:  R[515:Eoat4_ID]                 = 4 ;
  27:  R[516:Eoat4_Jaw_hgt_mm]         = 0 ;
  28:  R[517:Eoat4_Mtg_blk_mm]         = 0 ;
  29:  R[518:Eoat4_Lod_OD<99>_ID<11>]     = 0 ;
  30:  R[519:Eoat4_unLd_OD<99>_ID<11>]    = 0 ;

  31:  ! -------- EOAT 5 -------- ;
  32:  R[520:Eoat5_ID]                 = 5 ;
  33:  R[521:Eoat5_Jaw_hgt_mm]         = 0 ;
  34:  R[522:Eoat5_Mtg_blk_mm]         = 0 ;
  35:  R[523:Eoat5_Lod_OD<99>_ID<11>]     = 0 ;
  36:  R[524:Eoat5_unLd_OD<99>_ID<11>]    = 0 ;

  37:  ! -------- EOAT 6 -------- ;
  38:  R[525:Eoat6_ID]                 = 6 ;
  39:  R[526:Eoat6_Jaw_hgt_mm]         = 0 ;
  40:  R[527:Eoat6_Mtg_blk_mm]         = 0 ;
  41:  R[528:Eoat6_Lod_OD<99>_ID<11>]     = 0 ;
  42:  R[529:Eoat6_unLd_OD<99>_ID<11>]    = 0 ;

  43:  ! -------- EOAT 7 -------- ;
  44:  R[530:Eoat7_ID]                 = 7 ;
  45:  R[531:Eoat7_Jaw_hgt_mm]         = 0 ;
  46:  R[532:Eoat7_Mtg_blk_mm]         = 0 ;
  47:  R[533:Eoat7_Lod_OD<99>_ID<11>]     = 0 ;
  48:  R[534:Eoat7_unLd_OD<99>_ID<11>]    = 0 ;

  49:  ! -------- EOAT 8 -------- ;
  50:  R[535:Eoat8_ID]                 = 8 ;
  51:  R[536:Eoat8_Jaw_hgt_mm]         = 0 ;
  52:  R[537:Eoat8_Mtg_blk_mm]         = 0 ;
  53:  R[538:Eoat8_Lod_OD<99>_ID<11>]     = 0 ;
  54:  R[539:Eoat8_unLd_OD<99>_ID<11>]    = 0 ;

  55:  ! -------- EOAT 9 -------- ;
  56:  R[540:Eoat9_ID]                 = 9 ;
  57:  R[541:Eoat9_Jaw_hgt_mm]         = 0 ;
  58:  R[542:Eoat9_Mtg_blk_mm]         = 0 ;
  59:  R[543:Eoat9_Lod_OD<99>_ID<11>]     = 0 ;
  60:  R[544:Eoat9_unLd_OD<99>_ID<11>]    = 0 ;

  61:  ! -------- EOAT 10 -------- ;
  62:  R[545:Eoat10_ID]                = 10 ;
  63:  R[546:Eoat10_Jaw_hgt_mm]        = 0 ;
  64:  R[547:Eoat10_Mtg_blk_mm]        = 0 ;
  65:  R[548:Eoat10_Lod_OD<99>_ID<11>]    = 0 ;
  66:  R[549:Eoat10_unLd_OD<99>_ID<11>]   = 0 ;

  67:  ! -------- EOAT 11 -------- ;
  68:  R[550:Eoat11_ID]                = 11 ;
  69:  R[551:Eoat11_Jaw_hgt_mm]        = 0 ;
  70:  R[552:Eoat11_Mtg_blk_mm]        = 0 ;
  71:  R[553:Eoat11_Lod_OD<99>_ID<11>]    = 0 ;
  72:  R[554:Eoat11_unLd_OD<99>_ID<11>]   = 0 ;

  73:  ! -------- EOAT 12 -------- ;
  74:  R[555:Eoat12_ID]                = 12 ;
  75:  R[556:Eoat12_Jaw_hgt_mm]        = 0 ;
  76:  R[557:Eoat12_Mtg_blk_mm]        = 0 ;
  77:  R[558:Eoat12_Lod_OD<99>_ID<11>]    = 0 ;
  78:  R[559:Eoat12_unLd_OD<99>_ID<11>]   = 0 ;

  79:  ! -------- EOAT 13 -------- ;
  80:  R[560:Eoat13_ID]                = 13 ;
  81:  R[561:Eoat13_Jaw_hgt_mm]        = 0 ;
  82:  R[562:Eoat13_Mtg_blk_mm]        = 0 ;
  83:  R[563:Eoat13_Lod_OD<99>_ID<11>]    = 0 ;
  84:  R[564:Eoat13_unLd_OD<99>_ID<11>]   = 0 ;

  85:  ! -------- EOAT 14 -------- ;
  86:  R[565:Eoat14_ID]                = 14 ;
  87:  R[566:Eoat14_Jaw_hgt_mm]        = 0 ;
  88:  R[567:Eoat14_Mtg_blk_mm]        = 0 ;
  89:  R[568:Eoat14_Lod_OD<99>_ID<11>]    = 0 ;
  90:  R[569:Eoat14_unLd_OD<99>_ID<11>]   = 0 ;

  91:  ! -------- EOAT 15 -------- ;
  92:  R[570:Eoat15_ID]                = 15 ;
  93:  R[571:Eoat15_Jaw_hgt_mm]        = 0 ;
  94:  R[572:Eoat15_Mtg_blk_mm]        = 0 ;
  95:  R[573:Eoat15_Lod_OD<99>_ID<11>]    = 0 ;
  96:  R[574:Eoat15_unLd_OD<99>_ID<11>]   = 0 ;

  97:  ! -------- EOAT 16 -------- ;
  98:  R[575:Eoat16_ID]                = 16 ;
  99:  R[576:Eoat16_Jaw_hgt_mm]        = 0 ;
 100:  R[577:Eoat16_Mtg_blk_mm]        = 0 ;
 101:  R[578:Eoat16_Lod_OD<99>_ID<11>]    = 0 ;
 102:  R[579:Eoat16_unLd_OD<99>_ID<11>]   = 0 ;

 103:  ! -------- EOAT 17 -------- ;
 104:  R[580:Eoat17_ID]                = 17 ;
 105:  R[581:Eoat17_Jaw_hgt_mm]        = 0 ;
 106:  R[582:Eoat17_Mtg_blk_mm]        = 0 ;
 107:  R[583:Eoat17_Lod_OD<99>_ID<11>]    = 0 ;
 108:  R[584:Eoat17_unLd_OD<99>_ID<11>]   = 0 ;

 109:  ! -------- EOAT 18 -------- ;
 110:  R[585:Eoat18_ID]                = 18 ;
 111:  R[586:Eoat18_Jaw_hgt_mm]        = 0 ;
 112:  R[587:Eoat18_Mtg_blk_mm]        = 0 ;
 113:  R[588:Eoat18_Lod_OD<99>_ID<11>]    = 0 ;
 114:  R[589:Eoat18_unLd_OD<99>_ID<11>]   = 0 ;

 115:  ! -------- EOAT 19 -------- ;
 116:  R[590:Eoat19_ID]                = 19 ;
 117:  R[591:Eoat19_Jaw_hgt_mm]        = 0 ;
 118:  R[592:Eoat19_Mtg_blk_mm]        = 0 ;
 119:  R[593:Eoat19_Lod_OD<99>_ID<11>]    = 0 ;
 120:  R[594:Eoat19_unLd_OD<99>_ID<11>]   = 0 ;

 121:  ! -------- EOAT 20 -------- ;
 122:  R[595:Eoat20_ID]                = 20 ;
 123:  R[596:Eoat20_Jaw_hgt_mm]        = 0 ;
 124:  R[597:Eoat20_Mtg_blk_mm]        = 0 ;
 125:  R[598:Eoat20_Lod_OD<99>_ID<11>]    = 0 ;
 126:  R[599:Eoat20_unLd_OD<99>_ID<11>]   = 0 ;

 127:  MESSAGE['EOAT DATA LOADED'] ;
 128:  WAIT 2.00(sec) ;
/POS
/END

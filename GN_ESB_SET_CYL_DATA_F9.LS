/PROG  GN_ESB_SET_CYL_DATA_F9
/ATTR
OWNER        = MNEDITOR;
COMMENT      = "SET CYLINDER PART DATA (20 PCS)";
PROG_SIZE    = 1200;
CREATE       = DATE 26-01-30  TIME 16:10:00;
MODIFIED     = DATE 26-01-30  TIME 16:10:00;
FILE_NAME    = GN_SET_CYL_DATA_F9;
VERSION      = 0;
LINE_COUNT   = 190;
MEMORY_SIZE  = 2400;
PROTECT      = READ_WRITE;
DEFAULT_GROUP = *,*,*,*,*;
/MN
    1:   ! ===================================== ;
	2:   ! CYLINDER PART DATA (MM UNITS)         ;
	3:   ! START REGISTER: R[300]                ;
	4:   ! 5 REGISTERS PER PART                  ;
	5:   ! TOTAL PARTS: 20                       ;
	6:   ! ===================================== ;

	7:   ! -------- PART 1 -------- ;
	8:   R[300:Part1_ID]              = 1 ;
	9:   R[301:Part1_Height_mm]       = 0 ;
	10:  R[302:Part1_OD_mm]           = 0 ;
	11:  R[303:Part1_ID_mm]           = 0 ;
	12:  R[304:Part1_Weight_kg]       = 0 ;

	13:  ! -------- PART 2 -------- ;
	14:  R[305:Part2_ID]              = 2 ;
	15:  R[306:Part2_Height_mm]       = 0 ;
	16:  R[307:Part2_OD_mm]           = 0 ;
	17:  R[308:Part2_ID_mm]           = 0 ;
	18:  R[309:Part2_Weight_kg]       = 0 ;

	19:  ! -------- PART 3 -------- ;
	20:  R[310:Part3_ID]              = 3 ;
	21:  R[311:Part3_Height_mm]       = 0 ;
	22:  R[312:Part3_OD_mm]           = 0 ;
	23:  R[313:Part3_ID_mm]           = 0 ;
	24:  R[314:Part3_Weight_kg]       = 0 ;

	25:  ! -------- PART 4 -------- ;
	26:  R[315:Part4_ID]              = 4 ;
	27:  R[316:Part4_Height_mm]       = 0 ;
	28:  R[317:Part4_OD_mm]           = 0 ;
	29:  R[318:Part4_ID_mm]           = 0 ;
	30:  R[319:Part4_Weight_kg]       = 0 ;

	31:  ! -------- PART 5 -------- ;
	32:  R[320:Part5_ID]              = 5 ;
	33:  R[321:Part5_Height_mm]       = 0 ;
	34:  R[322:Part5_OD_mm]           = 0 ;
	35:  R[323:Part5_ID_mm]           = 0 ;
	36:  R[324:Part5_Weight_kg]       = 0 ;

	37:  ! -------- PART 6 -------- ;
	38:  R[325:Part6_ID]              = 6 ;
	39:  R[326:Part6_Height_mm]       = 300.0 ;
	40:  R[327:Part6_OD_mm]           = 6.0 ;
	41:  R[328:Part6_ID_mm]           = 6.0 ;
	42:  R[329:Part6_Weight_kg]       = 6.0 ;

	43:  ! -------- PART 7 -------- ;
	44:  R[330:Part7_ID]              = 7 ;
	45:  R[331:Part7_Height_mm]       = 0 ;
	46:  R[332:Part7_OD_mm]           = 0 ;
	47:  R[333:Part7_ID_mm]           = 0 ;
	48:  R[334:Part7_Weight_kg]       = 0 ;

	49:  ! -------- PART 8 -------- ;
	50:  R[335:Part8_ID]              = 8 ;
	51:  R[336:Part8_Height_mm]       = 0 ;
	52:  R[337:Part8_OD_mm]           = 0 ;
	53:  R[338:Part8_ID_mm]           = 0 ;
	54:  R[339:Part8_Weight_kg]       = 0 ;

	55:  ! -------- PART 9 -------- ;
	56:  R[340:Part9_ID]              = 9 ;
	57:  R[341:Part9_Height_mm]       = 0 ;
	58:  R[342:Part9_OD_mm]           = 0 ;
	59:  R[343:Part9_ID_mm]           = 0 ;
	60:  R[344:Part9_Weight_kg]       = 0 ;

	61:  ! -------- PART 10 -------- ;
	62:  R[345:Part10_ID]             = 10 ;
	63:  R[346:Part10_Height_mm]      = 0 ;
	64:  R[347:Part10_OD_mm]          = 0 ;
	65:  R[348:Part10_ID_mm]          = 0 ;
	66:  R[349:Part10_Weight_kg]      = 0 ;

	67:  ! -------- PART 11 -------- ;
	68:  R[350:Part11_ID]             = 11 ;
	69:  R[351:Part11_Height_mm]      = 0 ;
	70:  R[352:Part11_OD_mm]          = 0 ;
	71:  R[353:Part11_ID_mm]          = 0 ;
	72:  R[354:Part11_Weight_kg]      = 0 ;

	73:  ! -------- PART 12 -------- ;
	74:  R[355:Part12_ID]             = 12 ;
	75:  R[356:Part12_Height_mm]      = 0 ;
	76:  R[357:Part12_OD_mm]          = 0 ;
	77:  R[358:Part12_ID_mm]          = 0 ;
	78:  R[359:Part12_Weight_kg]      = 0 ;

	79:  ! -------- PART 13 -------- ;
	80:  R[360:Part13_ID]             = 13 ;
	81:  R[361:Part13_Height_mm]      = 0 ;
	82:  R[362:Part13_OD_mm]          = 0 ;
	83:  R[363:Part13_ID_mm]          = 0 ;
	84:  R[364:Part13_Weight_kg]      = 0 ;

	85:  ! -------- PART 14 -------- ;
	86:  R[365:Part14_ID]             = 14 ;
	87:  R[366:Part14_Height_mm]      = 0 ;
	88:  R[367:Part14_OD_mm]          = 0 ;
	89:  R[368:Part14_ID_mm]          = 0 ;
	90:  R[369:Part14_Weight_kg]      = 0 ;

	91:  ! -------- PART 15 -------- ;
	92:  R[370:Part15_ID]             = 15 ;
	93:  R[371:Part15_Height_mm]      = 0 ;
	94:  R[372:Part15_OD_mm]          = 0 ;
	95:  R[373:Part15_ID_mm]          = 0 ;
	96:  R[374:Part15_Weight_kg]      = 0 ;

	97:  ! -------- PART 16 -------- ;
	98:  R[375:Part16_ID]             = 16 ;
	99:  R[376:Part16_Height_mm]      = 0 ;
	100: R[377:Part16_OD_mm]          = 0 ;
	101: R[378:Part16_ID_mm]          = 0 ;
	102: R[379:Part16_Weight_kg]      = 0 ;

	103: ! -------- PART 17 -------- ;
	104: R[380:Part17_ID]             = 17 ;
	105: R[381:Part17_Height_mm]      = 0 ;
	106: R[382:Part17_OD_mm]          = 0 ;
	107: R[383:Part17_ID_mm]          = 0 ;
	108: R[384:Part17_Weight_kg]      = 0 ;

	109: ! -------- PART 18 -------- ;
	110: R[385:Part18_ID]             = 18 ;
	111: R[386:Part18_Height_mm]      = 0 ;
	112: R[387:Part18_OD_mm]          = 0 ;
	113: R[388:Part18_ID_mm]          = 0 ;
	114: R[389:Part18_Weight_kg]      = 0 ;

	115: ! -------- PART 19 -------- ;
	116: R[390:Part19_ID]             = 19 ;
	117: R[391:Part19_Height_mm]      = 0 ;
	118: R[392:Part19_OD_mm]          = 0 ;
	119: R[393:Part19_ID_mm]          = 0 ;
	120: R[394:Part19_Weight_kg]      = 0 ;

	121: ! -------- PART 20 -------- ;
	122: R[395:Part20_ID]             = 20 ;
	123: R[396:Part20_Height_mm]      = 0 ;
	124: R[397:Part20_OD_mm]          = 0 ;
	125: R[398:Part20_ID_mm]          = 0 ;
	126: R[399:Part20_Weight_kg]      = 0 ;

	127:  MESSAGE['CYLINDER DATA LOADED'] ;
	128:   WAIT 2.00(sec) ;

/POS
/END

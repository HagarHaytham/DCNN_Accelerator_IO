//
// Verilog description for cell JDecomp, 
// Wed Apr 24 13:22:38 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module JDecomp ( clk, en, rst, recPack, wordDone, packetDone, decompWord ) ;

    input clk ;
    input en ;
    input rst ;
    input [15:0]recPack ;
    output wordDone ;
    output packetDone ;
    output [15:0]decompWord ;

    wire upCEn, countVal_6, bgnSec, nx914, loadEn, nx8, dnCount_4, nx916, 
         dnCount_3, nx917, dnCount_2, dnCount_1, dnCount_0, countVal_0, nx22, 
         nx28, nx30, nx42, nx52, countVal_1, nx58, nx60, nx72, countVal_2, nx90, 
         nx92, nx104, countVal_3, nx122, nx124, nx136, countVal_4, nx154, nx156, 
         nx168, countVal_5, nx186, nx188, nx200, nx216, nx222, nx226, nx228, 
         nx230, LorR, nx234, nx238, nx244, nx252, nx266, nx272, nx282, nx292, 
         nx294, bgn, nx308, nx316, nx318, nx332, nx336, nx338, nx344, nx350, v, 
         nx358, nx360, upCount_2, nx921, upCount_1, upCount_0, rstUpC, nx450, 
         upCount_3, delayedPacket, nx506, nx534, nx929, nx939, nx949, nx959, 
         nx969, nx979, nx989, nx999, nx1009, nx1019, nx1029, nx1039, nx1049, 
         nx1059, nx1069, nx1079, nx1089, nx1099, nx1109, nx1119, nx1129, nx1139, 
         nx1149, nx1159, nx1169, nx1179, nx1189, nx1199, nx1209, nx1219, nx1229, 
         nx1239, nx1249, nx1259, nx1269, nx1279, nx1291, nx1299, nx1303, nx1306, 
         nx1310, nx1314, nx1316, nx1319, nx1323, nx1326, nx1329, nx1333, nx1338, 
         nx1342, nx1345, nx1347, nx1352, nx1354, nx1356, nx1360, nx1362, nx1368, 
         nx1371, nx1372, nx1374, nx1378, nx1382, nx1386, nx1388, nx1393, nx1396, 
         nx1401, nx1405, nx1407, nx1412, nx1413, nx1416, nx1422, nx1426, nx1428, 
         nx1432, nx1433, nx1436, nx1442, nx1446, nx1448, nx1452, nx1453, nx1455, 
         nx1458, nx1462, nx1464, nx1468, nx1469, nx1472, nx1477, nx1480, nx1484, 
         nx1488, nx1493, nx1495, nx1497, nx1499, nx1503, nx1505, nx1513, nx1515, 
         nx1520, nx1522, nx1527, nx1529, nx1534, nx1536, nx1541, nx1543, nx1548, 
         nx1550, nx1555, nx1557, nx1562, nx1564, nx1569, nx1571, nx1576, nx1578, 
         nx1583, nx1585, nx1590, nx1592, nx1597, nx1599, nx1604, nx1606, nx1611, 
         nx1613, nx1618, nx1620, nx1625, nx1627, nx1630, nx1633, nx1637, nx1641, 
         nx1643, nx1649, nx1652, nx1657, nx1658, nx1660, nx1662, nx1666, nx1668, 
         nx1671, nx1674, nx1676, nx1682, nx1685, nx1688, nx1695, nx1697, nx1699, 
         nx1701, nx1703, nx1705, nx1707, nx1709, nx1711, nx1713, nx1715, nx1717, 
         nx1719, nx1721, nx1723, nx1725, nx1727, nx1729, nx1731, nx1737, nx1739, 
         nx1741, nx1743, nx1745, nx1747, nx1749, nx1751, nx1753, nx1755, nx1757, 
         nx1759, nx1761, nx1763, nx1765, nx1767, nx1769, nx1771, nx1773;
    wire [26:0] \$dummy ;




    dffr shR_reg_initial_val_0 (.Q (decompWord[0]), .QB (\$dummy [0]), .D (
         nx1049), .CLK (clk), .R (rst)) ;
    nand02 ix1050 (.Y (nx1049), .A0 (nx1291), .A1 (nx1499)) ;
    nand02 ix1292 (.Y (nx1291), .A0 (decompWord[0]), .A1 (nx1709)) ;
    dff reg_upCEn (.Q (upCEn), .QB (\$dummy [1]), .D (nx1029), .CLK (clk)) ;
    oai21 ix351 (.Y (nx350), .A0 (nx238), .A1 (nx1488), .B0 (nx1368)) ;
    oai21 ix239 (.Y (nx238), .A0 (nx1299), .A1 (nx230), .B0 (nx1707)) ;
    mux21 ix43 (.Y (nx42), .A0 (dnCount_0), .A1 (nx1303), .S0 (nx1703)) ;
    dffr reg_dnCount_0 (.Q (dnCount_0), .QB (nx1299), .D (nx42), .CLK (clk), .R (
         rst)) ;
    nand02 ix930 (.Y (nx929), .A0 (nx1306), .A1 (nx1484)) ;
    nand03 ix1307 (.Y (nx1306), .A0 (countVal_0), .A1 (nx1705), .A2 (nx1717)) ;
    dff reg_countVal_0 (.Q (countVal_0), .QB (nx1303), .D (nx929), .CLK (clk)) ;
    nor02_2x ix29 (.Y (nx28), .A0 (en), .A1 (rst)) ;
    nand03 ix1311 (.Y (nx1310), .A0 (bgnSec), .A1 (LorR), .A2 (bgn)) ;
    mux21 ix1000 (.Y (nx999), .A0 (nx1314), .A1 (nx1316), .S0 (nx294)) ;
    dff reg_bgnSec (.Q (bgnSec), .QB (nx1314), .D (nx999), .CLK (clk)) ;
    inv01 ix1317 (.Y (nx1316), .A (nx252)) ;
    nor03_2x ix253 (.Y (nx252), .A0 (nx1319), .A1 (nx52), .A2 (nx230)) ;
    nand02 ix1320 (.Y (nx1319), .A0 (nx1721), .A1 (nx1323)) ;
    nand02 ix990 (.Y (nx989), .A0 (nx1326), .A1 (nx1469)) ;
    nand02 ix1327 (.Y (nx1326), .A0 (LorR), .A1 (nx1329)) ;
    dff reg_LorR (.Q (LorR), .QB (nx1323), .D (nx989), .CLK (clk)) ;
    nor03_2x ix235 (.Y (nx234), .A0 (nx1299), .A1 (nx228), .A2 (nx226)) ;
    nand02 ix229 (.Y (nx228), .A0 (nx1333), .A1 (nx1372)) ;
    oai21 ix73 (.Y (nx72), .A0 (nx1703), .A1 (nx1453), .B0 (nx1458)) ;
    dff reg_loadEn (.Q (loadEn), .QB (\$dummy [2]), .D (nx8), .CLK (clk)) ;
    nand02 ix9 (.Y (nx8), .A0 (nx1338), .A1 (nx1731)) ;
    nand04 ix1339 (.Y (nx1338), .A0 (nx1721), .A1 (bgnSec), .A2 (LorR), .A3 (bgn
           )) ;
    oai21 ix1010 (.Y (nx1009), .A0 (nx1342), .A1 (nx266), .B0 (nx1455)) ;
    dff reg_bgn (.Q (bgn), .QB (nx1342), .D (nx1009), .CLK (clk)) ;
    nand02 ix267 (.Y (nx266), .A0 (nx1345), .A1 (nx1705)) ;
    nand03 ix1346 (.Y (nx1345), .A0 (nx1347), .A1 (nx1319), .A2 (nx1453)) ;
    nor03_2x ix1348 (.Y (nx1347), .A0 (dnCount_1), .A1 (dnCount_2), .A2 (nx226)
             ) ;
    dffr reg_dnCount_1 (.Q (dnCount_1), .QB (nx1333), .D (nx72), .CLK (clk), .R (
         rst)) ;
    dffr reg_dnCount_2 (.Q (dnCount_2), .QB (nx1372), .D (nx104), .CLK (clk), .R (
         rst)) ;
    oai21 ix105 (.Y (nx104), .A0 (nx1701), .A1 (nx1352), .B0 (nx1356)) ;
    nor02_2x ix1355 (.Y (nx1354), .A0 (dnCount_0), .A1 (dnCount_1)) ;
    nand02 ix1357 (.Y (nx1356), .A0 (countVal_2), .A1 (nx1701)) ;
    dff reg_countVal_2 (.Q (countVal_2), .QB (nx1371), .D (nx949), .CLK (clk)) ;
    nand02 ix950 (.Y (nx949), .A0 (nx1360), .A1 (nx1362)) ;
    nand03 ix1361 (.Y (nx1360), .A0 (countVal_2), .A1 (nx1705), .A2 (nx1717)) ;
    oai22 ix1363 (.Y (nx1362), .A0 (nx92), .A1 (nx90), .B0 (nx1725), .B1 (nx914)
          ) ;
    nor02ii ix91 (.Y (nx90), .A0 (nx1731), .A1 (recPack[10])) ;
    nand02 ix1369 (.Y (nx1368), .A0 (en), .A1 (nx1721)) ;
    nor03_2x ix311 (.Y (nx914), .A0 (nx1314), .A1 (nx1323), .A2 (nx1342)) ;
    nand03 ix227 (.Y (nx226), .A0 (nx1374), .A1 (nx1413), .A2 (nx1433)) ;
    nor02_2x ix1375 (.Y (nx1374), .A0 (dnCount_3), .A1 (dnCount_4)) ;
    dffr reg_dnCount_3 (.Q (dnCount_3), .QB (nx1393), .D (nx136), .CLK (clk), .R (
         rst)) ;
    oai21 ix137 (.Y (nx136), .A0 (nx1701), .A1 (nx1378), .B0 (nx1382)) ;
    nand02 ix1383 (.Y (nx1382), .A0 (countVal_3), .A1 (nx1701)) ;
    dff reg_countVal_3 (.Q (countVal_3), .QB (\$dummy [3]), .D (nx959), .CLK (
        clk)) ;
    nand02 ix960 (.Y (nx959), .A0 (nx1386), .A1 (nx1388)) ;
    nand03 ix1387 (.Y (nx1386), .A0 (countVal_3), .A1 (nx1705), .A2 (nx1717)) ;
    oai22 ix1389 (.Y (nx1388), .A0 (nx124), .A1 (nx122), .B0 (nx1725), .B1 (
          nx914)) ;
    nor02ii ix123 (.Y (nx122), .A0 (nx1731), .A1 (recPack[11])) ;
    dffr reg_dnCount_4 (.Q (dnCount_4), .QB (nx1412), .D (nx168), .CLK (clk), .R (
         rst)) ;
    oai21 ix169 (.Y (nx168), .A0 (nx1701), .A1 (nx1396), .B0 (nx1401)) ;
    nand02 ix1402 (.Y (nx1401), .A0 (countVal_4), .A1 (nx1701)) ;
    dff reg_countVal_4 (.Q (countVal_4), .QB (\$dummy [4]), .D (nx969), .CLK (
        clk)) ;
    nand02 ix970 (.Y (nx969), .A0 (nx1405), .A1 (nx1407)) ;
    nand03 ix1406 (.Y (nx1405), .A0 (countVal_4), .A1 (nx1705), .A2 (nx1717)) ;
    oai22 ix1408 (.Y (nx1407), .A0 (nx156), .A1 (nx154), .B0 (nx1725), .B1 (
          nx914)) ;
    nor02ii ix155 (.Y (nx154), .A0 (nx1731), .A1 (recPack[12])) ;
    oai21 ix201 (.Y (nx200), .A0 (nx1701), .A1 (nx1416), .B0 (nx1422)) ;
    dffr dnCount_5 (.Q (\$dummy [5]), .QB (nx1413), .D (nx200), .CLK (clk), .R (
         rst)) ;
    nand03 ix143 (.Y (nx917), .A0 (nx1354), .A1 (nx1372), .A2 (nx1393)) ;
    nand02 ix1423 (.Y (nx1422), .A0 (countVal_5), .A1 (nx1703)) ;
    dff reg_countVal_5 (.Q (countVal_5), .QB (nx1432), .D (nx979), .CLK (clk)) ;
    nand02 ix980 (.Y (nx979), .A0 (nx1426), .A1 (nx1428)) ;
    nand03 ix1427 (.Y (nx1426), .A0 (countVal_5), .A1 (nx1705), .A2 (nx1717)) ;
    oai22 ix1429 (.Y (nx1428), .A0 (nx188), .A1 (nx186), .B0 (nx1727), .B1 (
          nx914)) ;
    nor02ii ix187 (.Y (nx186), .A0 (nx1731), .A1 (recPack[13])) ;
    oai21 ix217 (.Y (nx216), .A0 (nx1703), .A1 (nx1436), .B0 (nx1442)) ;
    dffr dnCount_6 (.Q (\$dummy [6]), .QB (nx1433), .D (nx216), .CLK (clk), .R (
         rst)) ;
    nand04 ix175 (.Y (nx916), .A0 (nx1354), .A1 (nx1372), .A2 (nx1393), .A3 (
           nx1412)) ;
    nand02 ix1443 (.Y (nx1442), .A0 (countVal_6), .A1 (nx1703)) ;
    dff reg_countVal_6 (.Q (countVal_6), .QB (nx1452), .D (nx1019), .CLK (clk)
        ) ;
    nand02 ix1020 (.Y (nx1019), .A0 (nx1446), .A1 (nx1448)) ;
    nand03 ix1447 (.Y (nx1446), .A0 (countVal_6), .A1 (nx1705), .A2 (nx1717)) ;
    oai22 ix1449 (.Y (nx1448), .A0 (nx318), .A1 (nx316), .B0 (nx1727), .B1 (
          nx914)) ;
    nor02ii ix317 (.Y (nx316), .A0 (nx1731), .A1 (recPack[14])) ;
    nand02 ix1456 (.Y (nx1455), .A0 (en), .A1 (nx1721)) ;
    nand02 ix1459 (.Y (nx1458), .A0 (countVal_1), .A1 (nx1703)) ;
    dff reg_countVal_1 (.Q (countVal_1), .QB (nx1468), .D (nx939), .CLK (clk)) ;
    nand02 ix940 (.Y (nx939), .A0 (nx1462), .A1 (nx1464)) ;
    nand03 ix1463 (.Y (nx1462), .A0 (countVal_1), .A1 (nx1707), .A2 (nx1717)) ;
    oai22 ix1465 (.Y (nx1464), .A0 (nx60), .A1 (nx58), .B0 (nx1727), .B1 (nx914)
          ) ;
    nor02ii ix59 (.Y (nx58), .A0 (nx1731), .A1 (recPack[9])) ;
    nand02 ix1470 (.Y (nx1469), .A0 (nx272), .A1 (nx238)) ;
    nand02 ix273 (.Y (nx272), .A0 (nx1472), .A1 (nx1721)) ;
    nand04 ix1473 (.Y (nx1472), .A0 (nx1347), .A1 (nx244), .A2 (nx1453), .A3 (
           nx1707)) ;
    nor02_2x ix245 (.Y (nx244), .A0 (rst), .A1 (LorR)) ;
    nand04 ix231 (.Y (nx230), .A0 (nx1477), .A1 (nx1374), .A2 (nx1413), .A3 (
           nx1433)) ;
    nor02_2x ix1478 (.Y (nx1477), .A0 (dnCount_1), .A1 (dnCount_2)) ;
    oai21 ix295 (.Y (nx294), .A0 (en), .A1 (nx1480), .B0 (nx1721)) ;
    aoi22 ix1481 (.Y (nx1480), .A0 (bgnSec), .A1 (nx308), .B0 (nx1347), .B1 (
          nx282)) ;
    nor02_2x ix309 (.Y (nx308), .A0 (nx1323), .A1 (nx1342)) ;
    nor02_2x ix283 (.Y (nx282), .A0 (LorR), .A1 (nx1299)) ;
    oai22 ix1485 (.Y (nx1484), .A0 (nx30), .A1 (nx22), .B0 (nx1727), .B1 (nx914)
          ) ;
    nor02ii ix23 (.Y (nx22), .A0 (nx1368), .A1 (recPack[8])) ;
    nor02_2x ix293 (.Y (nx292), .A0 (en), .A1 (nx1480)) ;
    nand03 ix345 (.Y (nx344), .A0 (nx1719), .A1 (nx1329), .A2 (nx338)) ;
    nand03 ix339 (.Y (nx338), .A0 (nx1493), .A1 (nx1495), .A2 (nx1497)) ;
    nor03_2x ix1494 (.Y (nx1493), .A0 (countVal_1), .A1 (countVal_2), .A2 (
             countVal_0)) ;
    nor02_2x ix1496 (.Y (nx1495), .A0 (countVal_3), .A1 (countVal_4)) ;
    nor02_2x ix1498 (.Y (nx1497), .A0 (countVal_5), .A1 (countVal_6)) ;
    nand02 ix1500 (.Y (nx1499), .A0 (v), .A1 (nx1695)) ;
    dff reg_v (.Q (v), .QB (\$dummy [7]), .D (nx1039), .CLK (clk)) ;
    nand02 ix1040 (.Y (nx1039), .A0 (nx1503), .A1 (nx1505)) ;
    nand03 ix1504 (.Y (nx1503), .A0 (v), .A1 (nx1707), .A2 (nx1719)) ;
    oai22 ix1506 (.Y (nx1505), .A0 (nx360), .A1 (nx358), .B0 (nx1729), .B1 (
          nx914)) ;
    nor02ii ix359 (.Y (nx358), .A0 (nx1368), .A1 (recPack[15])) ;
    dffr shR_reg_initial_val_1 (.Q (decompWord[1]), .QB (\$dummy [8]), .D (
         nx1059), .CLK (clk), .R (rst)) ;
    nand02 ix1060 (.Y (nx1059), .A0 (nx1513), .A1 (nx1515)) ;
    nand02 ix1514 (.Y (nx1513), .A0 (decompWord[1]), .A1 (nx1709)) ;
    nand02 ix1516 (.Y (nx1515), .A0 (decompWord[0]), .A1 (nx1695)) ;
    dffr shR_reg_initial_val_2 (.Q (decompWord[2]), .QB (\$dummy [9]), .D (
         nx1069), .CLK (clk), .R (rst)) ;
    nand02 ix1070 (.Y (nx1069), .A0 (nx1520), .A1 (nx1522)) ;
    nand02 ix1521 (.Y (nx1520), .A0 (decompWord[2]), .A1 (nx1709)) ;
    nand02 ix1523 (.Y (nx1522), .A0 (decompWord[1]), .A1 (nx1695)) ;
    dffr shR_reg_initial_val_3 (.Q (decompWord[3]), .QB (\$dummy [10]), .D (
         nx1079), .CLK (clk), .R (rst)) ;
    nand02 ix1080 (.Y (nx1079), .A0 (nx1527), .A1 (nx1529)) ;
    nand02 ix1528 (.Y (nx1527), .A0 (decompWord[3]), .A1 (nx1709)) ;
    nand02 ix1530 (.Y (nx1529), .A0 (decompWord[2]), .A1 (nx1695)) ;
    dffr shR_reg_initial_val_4 (.Q (decompWord[4]), .QB (\$dummy [11]), .D (
         nx1089), .CLK (clk), .R (rst)) ;
    nand02 ix1090 (.Y (nx1089), .A0 (nx1534), .A1 (nx1536)) ;
    nand02 ix1535 (.Y (nx1534), .A0 (decompWord[4]), .A1 (nx1709)) ;
    nand02 ix1537 (.Y (nx1536), .A0 (decompWord[3]), .A1 (nx1695)) ;
    dffr shR_reg_initial_val_5 (.Q (decompWord[5]), .QB (\$dummy [12]), .D (
         nx1099), .CLK (clk), .R (rst)) ;
    nand02 ix1100 (.Y (nx1099), .A0 (nx1541), .A1 (nx1543)) ;
    nand02 ix1542 (.Y (nx1541), .A0 (decompWord[5]), .A1 (nx1709)) ;
    nand02 ix1544 (.Y (nx1543), .A0 (decompWord[4]), .A1 (nx1695)) ;
    dffr shR_reg_initial_val_6 (.Q (decompWord[6]), .QB (\$dummy [13]), .D (
         nx1109), .CLK (clk), .R (rst)) ;
    nand02 ix1110 (.Y (nx1109), .A0 (nx1548), .A1 (nx1550)) ;
    nand02 ix1549 (.Y (nx1548), .A0 (decompWord[6]), .A1 (nx1709)) ;
    nand02 ix1551 (.Y (nx1550), .A0 (decompWord[5]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_7 (.Q (decompWord[7]), .QB (\$dummy [14]), .D (
         nx1119), .CLK (clk), .R (rst)) ;
    nand02 ix1120 (.Y (nx1119), .A0 (nx1555), .A1 (nx1557)) ;
    nand02 ix1556 (.Y (nx1555), .A0 (decompWord[7]), .A1 (nx1711)) ;
    nand02 ix1558 (.Y (nx1557), .A0 (decompWord[6]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_8 (.Q (decompWord[8]), .QB (\$dummy [15]), .D (
         nx1129), .CLK (clk), .R (rst)) ;
    nand02 ix1130 (.Y (nx1129), .A0 (nx1562), .A1 (nx1564)) ;
    nand02 ix1563 (.Y (nx1562), .A0 (decompWord[8]), .A1 (nx1711)) ;
    nand02 ix1565 (.Y (nx1564), .A0 (decompWord[7]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_9 (.Q (decompWord[9]), .QB (\$dummy [16]), .D (
         nx1139), .CLK (clk), .R (rst)) ;
    nand02 ix1140 (.Y (nx1139), .A0 (nx1569), .A1 (nx1571)) ;
    nand02 ix1570 (.Y (nx1569), .A0 (decompWord[9]), .A1 (nx1711)) ;
    nand02 ix1572 (.Y (nx1571), .A0 (decompWord[8]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_10 (.Q (decompWord[10]), .QB (\$dummy [17]), .D (
         nx1149), .CLK (clk), .R (rst)) ;
    nand02 ix1150 (.Y (nx1149), .A0 (nx1576), .A1 (nx1578)) ;
    nand02 ix1577 (.Y (nx1576), .A0 (decompWord[10]), .A1 (nx1711)) ;
    nand02 ix1579 (.Y (nx1578), .A0 (decompWord[9]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_11 (.Q (decompWord[11]), .QB (\$dummy [18]), .D (
         nx1159), .CLK (clk), .R (rst)) ;
    nand02 ix1160 (.Y (nx1159), .A0 (nx1583), .A1 (nx1585)) ;
    nand02 ix1584 (.Y (nx1583), .A0 (decompWord[11]), .A1 (nx1711)) ;
    nand02 ix1586 (.Y (nx1585), .A0 (decompWord[10]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_12 (.Q (decompWord[12]), .QB (\$dummy [19]), .D (
         nx1169), .CLK (clk), .R (rst)) ;
    nand02 ix1170 (.Y (nx1169), .A0 (nx1590), .A1 (nx1592)) ;
    nand02 ix1591 (.Y (nx1590), .A0 (decompWord[12]), .A1 (nx1711)) ;
    nand02 ix1593 (.Y (nx1592), .A0 (decompWord[11]), .A1 (nx1697)) ;
    dffr shR_reg_initial_val_13 (.Q (decompWord[13]), .QB (\$dummy [20]), .D (
         nx1179), .CLK (clk), .R (rst)) ;
    nand02 ix1180 (.Y (nx1179), .A0 (nx1597), .A1 (nx1599)) ;
    nand02 ix1598 (.Y (nx1597), .A0 (decompWord[13]), .A1 (nx1711)) ;
    nand02 ix1600 (.Y (nx1599), .A0 (decompWord[12]), .A1 (nx1699)) ;
    dffr shR_reg_initial_val_14 (.Q (decompWord[14]), .QB (\$dummy [21]), .D (
         nx1189), .CLK (clk), .R (rst)) ;
    nand02 ix1190 (.Y (nx1189), .A0 (nx1604), .A1 (nx1606)) ;
    nand02 ix1605 (.Y (nx1604), .A0 (decompWord[14]), .A1 (nx1713)) ;
    nand02 ix1607 (.Y (nx1606), .A0 (decompWord[13]), .A1 (nx1699)) ;
    dffr shR_reg_initial_val_15 (.Q (decompWord[15]), .QB (\$dummy [22]), .D (
         nx1199), .CLK (clk), .R (rst)) ;
    nand02 ix1200 (.Y (nx1199), .A0 (nx1611), .A1 (nx1613)) ;
    nand02 ix1612 (.Y (nx1611), .A0 (decompWord[15]), .A1 (nx1713)) ;
    nand02 ix1614 (.Y (nx1613), .A0 (decompWord[14]), .A1 (nx1699)) ;
    mux21 ix1280 (.Y (nx1279), .A0 (nx1729), .A1 (nx1618), .S0 (nx1620)) ;
    dff reg_packDone (.Q (packetDone), .QB (nx1618), .D (nx1279), .CLK (clk)) ;
    oai21 ix535 (.Y (nx534), .A0 (wordDone), .A1 (nx1674), .B0 (nx1707)) ;
    dff reg_wdDone (.Q (wordDone), .QB (\$dummy [23]), .D (nx1259), .CLK (clk)
        ) ;
    nand02 ix1260 (.Y (nx1259), .A0 (nx1625), .A1 (nx1627)) ;
    nand03 ix1626 (.Y (nx1625), .A0 (wordDone), .A1 (en), .A2 (nx1723)) ;
    nand04 ix1628 (.Y (nx1627), .A0 (nx921), .A1 (nx1723), .A2 (upCount_3), .A3 (
           nx1671)) ;
    nor02_2x ix479 (.Y (nx921), .A0 (nx1630), .A1 (nx1662)) ;
    oai21 ix1240 (.Y (nx1239), .A0 (nx1633), .A1 (nx1713), .B0 (nx1660)) ;
    dffr reg_upCount_2 (.Q (upCount_2), .QB (nx1630), .D (nx1239), .CLK (clk), .R (
         nx450)) ;
    inv01 ix451 (.Y (nx450), .A (nx1637)) ;
    nor02_2x ix1638 (.Y (nx1637), .A0 (rstUpC), .A1 (rst)) ;
    dff reg_rstUpC (.Q (rstUpC), .QB (\$dummy [24]), .D (nx1209), .CLK (clk)) ;
    inv01 ix1210 (.Y (nx1209), .A (nx1641)) ;
    oai21 ix1642 (.Y (nx1641), .A0 (rstUpC), .A1 (nx1643), .B0 (nx1707)) ;
    nor02_2x ix1644 (.Y (nx1643), .A0 (nx336), .A1 (nx332)) ;
    nand03 ix337 (.Y (nx336), .A0 (nx1468), .A1 (nx1371), .A2 (nx1303)) ;
    nand03 ix333 (.Y (nx332), .A0 (nx1495), .A1 (nx1432), .A2 (nx1452)) ;
    oai21 ix1230 (.Y (nx1229), .A0 (nx1652), .A1 (nx1713), .B0 (nx1658)) ;
    dffr reg_upCount_1 (.Q (upCount_1), .QB (nx1649), .D (nx1229), .CLK (clk), .R (
         nx450)) ;
    dffr reg_upCount_0 (.Q (upCount_0), .QB (nx1657), .D (nx1219), .CLK (clk), .R (
         nx450)) ;
    nand02 ix1659 (.Y (nx1658), .A0 (upCount_1), .A1 (nx1713)) ;
    nand02 ix1661 (.Y (nx1660), .A0 (upCount_2), .A1 (nx1713)) ;
    nand02 ix1663 (.Y (nx1662), .A0 (upCount_1), .A1 (upCount_0)) ;
    dffr reg_upCount_3 (.Q (upCount_3), .QB (\$dummy [25]), .D (nx1249), .CLK (
         clk), .R (nx450)) ;
    oai21 ix1250 (.Y (nx1249), .A0 (nx1666), .A1 (nx1715), .B0 (nx1668)) ;
    xnor2 ix1667 (.Y (nx1666), .A0 (upCount_3), .A1 (nx921)) ;
    nand02 ix1669 (.Y (nx1668), .A0 (upCount_3), .A1 (nx1715)) ;
    inv01 ix1672 (.Y (nx1671), .A (en)) ;
    nand04 ix1675 (.Y (nx1674), .A0 (nx1676), .A1 (nx1323), .A2 (nx1354), .A3 (
           nx1372)) ;
    nor03_2x ix1677 (.Y (nx1676), .A0 (dnCount_3), .A1 (dnCount_4), .A2 (nx222)
             ) ;
    nand02 ix223 (.Y (nx222), .A0 (nx1413), .A1 (nx1433)) ;
    nand02 ix1270 (.Y (nx1269), .A0 (nx1682), .A1 (nx1685)) ;
    nand03 ix1683 (.Y (nx1682), .A0 (delayedPacket), .A1 (en), .A2 (nx1723)) ;
    dff reg_delayedPacket (.Q (delayedPacket), .QB (\$dummy [26]), .D (nx1269), 
        .CLK (clk)) ;
    nand04 ix1686 (.Y (nx1685), .A0 (nx506), .A1 (nx1723), .A2 (wordDone), .A3 (
           nx1368)) ;
    nor02_2x ix507 (.Y (nx506), .A0 (nx226), .A1 (nx1688)) ;
    nand04 ix1689 (.Y (nx1688), .A0 (nx1323), .A1 (nx1299), .A2 (nx1333), .A3 (
           nx1372)) ;
    inv02 ix1694 (.Y (nx1695), .A (nx1715)) ;
    inv02 ix1696 (.Y (nx1697), .A (nx1715)) ;
    inv02 ix1698 (.Y (nx1699), .A (nx1715)) ;
    buf02 ix1700 (.Y (nx1701), .A (loadEn)) ;
    buf02 ix1702 (.Y (nx1703), .A (loadEn)) ;
    inv02 ix1704 (.Y (nx1705), .A (nx1729)) ;
    inv02 ix1706 (.Y (nx1707), .A (nx1729)) ;
    inv02 ix1708 (.Y (nx1709), .A (upCEn)) ;
    inv02 ix1710 (.Y (nx1711), .A (upCEn)) ;
    inv02 ix1712 (.Y (nx1713), .A (upCEn)) ;
    inv02 ix1714 (.Y (nx1715), .A (upCEn)) ;
    buf02 ix1716 (.Y (nx1717), .A (nx1310)) ;
    buf02 ix1718 (.Y (nx1719), .A (nx1310)) ;
    inv02 ix1720 (.Y (nx1721), .A (rst)) ;
    inv02 ix1722 (.Y (nx1723), .A (rst)) ;
    inv02 ix1724 (.Y (nx1725), .A (nx28)) ;
    inv02 ix1726 (.Y (nx1727), .A (nx28)) ;
    inv02 ix1728 (.Y (nx1729), .A (nx28)) ;
    nand02 ix1730 (.Y (nx1731), .A0 (en), .A1 (nx1721)) ;
    mux21 ix1030 (.Y (nx1029), .A0 (nx1737), .A1 (nx1715), .S0 (nx1739)) ;
    inv01 ix1736 (.Y (nx1737), .A (nx350)) ;
    inv01 ix1738 (.Y (nx1739), .A (nx344)) ;
    nor02_2x ix1330 (.Y (nx1329), .A0 (nx234), .A1 (nx1729)) ;
    xnor2 ix1353 (.Y (nx1352), .A0 (nx1372), .A1 (nx1741)) ;
    inv01 ix1740 (.Y (nx1741), .A (nx1354)) ;
    nor02_2x ix93 (.Y (nx92), .A0 (nx1725), .A1 (nx1743)) ;
    inv01 ix1742 (.Y (nx1743), .A (recPack[2])) ;
    xnor2 ix1379 (.Y (nx1378), .A0 (nx1393), .A1 (nx1745)) ;
    nand03 ix1381 (.Y (nx1745), .A0 (nx1299), .A1 (nx1333), .A2 (nx1372)) ;
    nor02_2x ix125 (.Y (nx124), .A0 (nx1725), .A1 (nx1747)) ;
    inv01 ix1746 (.Y (nx1747), .A (recPack[3])) ;
    xnor2 ix1397 (.Y (nx1396), .A0 (nx1412), .A1 (nx1749)) ;
    nand02 ix1399 (.Y (nx1749), .A0 (nx1751), .A1 (nx1393)) ;
    nor03_2x ix111 (.Y (nx1751), .A0 (dnCount_0), .A1 (dnCount_1), .A2 (
             dnCount_2)) ;
    nor02_2x ix157 (.Y (nx156), .A0 (nx1725), .A1 (nx1753)) ;
    inv01 ix1752 (.Y (nx1753), .A (recPack[4])) ;
    xnor2 ix1417 (.Y (nx1416), .A0 (nx1413), .A1 (nx1755)) ;
    nand02 ix1420 (.Y (nx1755), .A0 (nx1757), .A1 (nx1412)) ;
    inv01 ix1756 (.Y (nx1757), .A (nx917)) ;
    nor02_2x ix189 (.Y (nx188), .A0 (nx1725), .A1 (nx1759)) ;
    inv01 ix1758 (.Y (nx1759), .A (recPack[5])) ;
    xnor2 ix1437 (.Y (nx1436), .A0 (nx1433), .A1 (nx1761)) ;
    nand02 ix1440 (.Y (nx1761), .A0 (nx1763), .A1 (nx1413)) ;
    inv01 ix1762 (.Y (nx1763), .A (nx916)) ;
    nor02_2x ix319 (.Y (nx318), .A0 (nx1727), .A1 (nx1765)) ;
    inv01 ix1764 (.Y (nx1765), .A (recPack[6])) ;
    xnor2 ix1454 (.Y (nx1453), .A0 (nx1333), .A1 (dnCount_0)) ;
    nor02_2x ix61 (.Y (nx60), .A0 (nx1727), .A1 (nx1767)) ;
    inv01 ix1766 (.Y (nx1767), .A (recPack[1])) ;
    xnor2 ix53 (.Y (nx52), .A0 (nx1333), .A1 (nx1299)) ;
    nor02_2x ix31 (.Y (nx30), .A0 (nx1727), .A1 (nx1769)) ;
    inv01 ix1768 (.Y (nx1769), .A (recPack[0])) ;
    nor02_2x ix1489 (.Y (nx1488), .A0 (nx292), .A1 (rst)) ;
    nor02_2x ix361 (.Y (nx360), .A0 (nx1729), .A1 (nx1771)) ;
    inv01 ix1770 (.Y (nx1771), .A (recPack[7])) ;
    nor02_2x ix1621 (.Y (nx1620), .A0 (nx534), .A1 (delayedPacket)) ;
    xnor2 ix1634 (.Y (nx1633), .A0 (nx1630), .A1 (nx1773)) ;
    nand02 ix467 (.Y (nx1773), .A0 (upCount_1), .A1 (upCount_0)) ;
    xnor2 ix1653 (.Y (nx1652), .A0 (nx1649), .A1 (nx1657)) ;
    xnor2 ix1220 (.Y (nx1219), .A0 (nx1657), .A1 (upCEn)) ;
endmodule


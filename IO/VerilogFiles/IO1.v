//
// Verilog description for cell IO, 
// Fri Apr 26 20:43:50 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module IO ( clk, rst, interrupt, loadProcess, CNNImage, ready, done, din, dout, 
            processDone, processCntrlAccL ) ;

    input clk ;
    input rst ;
    input interrupt ;
    input loadProcess ;
    input CNNImage ;
    output ready ;
    output done ;
    input [15:0]din ;
    output [3:0]dout ;
    input processDone ;
    output processCntrlAccL ;

    wire GND0, IOContU_t_currentState_6, decompCntrlCNN, nx8, nx14, doneCNNCntrl, 
         JsonDecompU_upCount_2, JsonDecompU_upCEn, JsonDecompU_countVal_6, 
         JsonDecompU_bgnSec, nx464, JsonDecompU_dnCount_6, JsonDecompU_loadEn, 
         nx30, JsonDecompU_dnCount_5, JsonDecompU_dnCount_4, nx467, 
         JsonDecompU_dnCount_3, nx468, JsonDecompU_dnCount_2, 
         JsonDecompU_dnCount_1, JsonDecompU_dnCount_0, JsonDecompU_countVal_0, 
         dataIOIntrDecomp_8, nx48, dataIOIntrDecomp_0, nx58, nx60, nx72, 
         JsonDecompU_countVal_1, dataIOIntrDecomp_9, nx92, dataIOIntrDecomp_1, 
         nx98, nx110, JsonDecompU_countVal_2, dataIOIntrDecomp_10, nx132, 
         dataIOIntrDecomp_2, nx138, nx150, JsonDecompU_countVal_3, nx172, 
         dataIOIntrDecomp_3, nx178, nx190, JsonDecompU_countVal_4, nx212, 
         dataIOIntrDecomp_4, nx218, nx230, JsonDecompU_countVal_5, 
         dataIOIntrDecomp_13, nx252, dataIOIntrDecomp_5, nx258, nx270, nx286, 
         nx296, nx302, nx304, JsonDecompU_LorR, nx310, nx473, nx320, nx338, 
         nx350, JsonDecompU_bgn, dataIOIntrDecomp_14, nx376, dataIOIntrDecomp_6, 
         nx382, nx396, nx400, nx402, nx412, nx475, JsonDecompU_upCount_1, 
         JsonDecompU_upCount_0, JsonDecompU_rstUpC, nx436, JsonDecompU_upCount_3, 
         nx488, IOContU_t_currentState_5, decompCntrlImg, doneImgCntrl, 
         ImgDecompU_decomp, nx500, nx502, nx504, nx506, nx508, ImgDecompU_packet, 
         ImgDecompU_cnt_1, nx478, ImgDecompU_bgn, nx480, nx481, nx483, nx514, 
         nx518, nx526, nx530, ImgDecompU_cnt_0, ImgDecompU_rstc1, nx564, nx572, 
         nx574, nx580, nx584, ImgDecompU_cnt_2, nx586, nx598, nx606, 
         ImgDecompU_cnt_3, nx620, nx628, nx636, ImgDecompU_cnt_5, 
         ImgDecompU_cnt_4, nx650, nx662, nx664, ImgDecompU_cnt_6, nx680, nx682, 
         nx696, nx706, nx722, nx734, ImgDecompU_cnt2_2, nx487, ImgDecompU_cnt2_1, 
         ImgDecompU_cnt2_0, ImgDecompU_rstc2, nx490, nx768, nx786, nx808, 
         ImgDecompU_cnt2_4, ImgDecompU_cnt2_3, nx840, nx848, ImgDecompU_cnt2_6, 
         ImgDecompU_cnt2_5, nx492, nx870, nx876, nx880, nx888, nx892, nx493, 
         nx902, nx920, nx922, nx940, nx956, nx966, nx972, 
         IOContU_t_currentState_0, nx986, nx501, nx511, nx521, nx531, nx541, 
         nx551, nx561, nx571, nx581, nx591, nx601, nx611, nx621, nx631, nx641, 
         nx651, nx661, nx671, nx681, nx691, nx701, nx711, nx721, nx731, nx741, 
         nx751, nx761, nx771, nx781, nx791, nx801, nx811, nx821, nx831, nx841, 
         nx851, nx861, nx871, nx881, nx891, nx901, nx907, nx911, nx921, nx927, 
         nx931, nx941, nx951, nx961, nx971, nx981, nx991, nx1001, nx1011, nx1021, 
         nx1027, nx1033, nx1036, nx1042, nx1044, nx1047, nx1050, nx1054, nx1058, 
         nx1060, nx1062, nx1065, nx1067, nx1070, nx1074, nx1077, nx1080, nx1084, 
         nx1087, nx1090, nx1096, nx1100, nx1103, nx1106, nx1110, nx1113, nx1118, 
         nx1122, nx1124, nx1128, nx1130, nx1134, nx1136, nx1138, nx1141, nx1143, 
         nx1146, nx1148, nx1151, nx1156, nx1158, nx1160, nx1162, nx1165, nx1170, 
         nx1172, nx1175, nx1179, nx1181, nx1185, nx1187, nx1191, nx1193, nx1195, 
         nx1198, nx1200, nx1203, nx1205, nx1208, nx1210, nx1212, nx1215, nx1221, 
         nx1224, nx1227, nx1229, nx1237, nx1240, nx1242, nx1244, nx1246, nx1252, 
         nx1255, nx1257, nx1259, nx1262, nx1266, nx1269, nx1272, nx1276, nx1280, 
         nx1282, nx1288, nx1291, nx1293, nx1296, nx1298, nx1303, nx1305, nx1309, 
         nx1311, nx1313, nx1317, nx1321, nx1323, nx1329, nx1332, nx1335, nx1340, 
         nx1343, nx1346, nx1349, nx1352, nx1356, nx1358, nx1362, nx1365, nx1368, 
         nx1374, nx1377, nx1380, nx1384, nx1386, nx1388, nx1390, nx1392, nx1395, 
         nx1404, nx1407, nx1410, nx1416, nx1418, nx1420, nx1423, nx1425, nx1428, 
         nx1430, nx1433, nx1435, nx1439, nx1441, nx1450, nx1452, nx1454, nx1457, 
         nx1459, nx1463, nx1467, nx1474, nx1477, nx1480, nx1484, nx1488, nx1490, 
         nx1493, nx1496, nx1500, nx1504, nx1507, nx1511, nx1517, nx1521, nx1523, 
         nx1527, nx1529, nx1532, nx1535, nx1539, nx1542, nx1545, nx1549, nx1552, 
         nx1557, nx1559, nx1560, nx1564, nx1566, nx1570, nx1572, nx1576, nx1580, 
         nx1584, nx1586, nx1591, nx1594, nx1599, nx1603, nx1605, nx1610, nx1611, 
         nx1614, nx1620, nx1624, nx1626, nx1630, nx1631, nx1634, nx1640, nx1644, 
         nx1646, nx1650, nx1651, nx1654, nx1656, nx1658, nx1660, nx1662, nx1664, 
         nx1669, nx1673, nx1676, nx1681, nx1684, nx1687, nx1689, nx1692, nx1695, 
         nx1697, nx1699, nx1700, nx1702, nx1704, nx1708, nx1710, nx1714, nx1716, 
         nx1727, nx1729, nx1731, nx1733, nx1735, nx1737, nx1739, nx1743, nx1747, 
         nx1749, nx1751, nx1753, nx1755, nx1757, nx1759, nx1761, nx1763, nx1765, 
         nx1767, nx1773, nx1775, nx1777, nx1779, nx1781, nx1783, nx1785, nx1787, 
         nx1789, nx1791, nx1793, nx1795, nx1797, nx1799, nx1801, nx1803, nx1805, 
         nx1807, nx1809, nx1811, nx1813, nx1815, nx1817, nx1819, nx1821, nx1823, 
         nx1825, nx1827, nx1829, nx1831, nx1833, nx1835, nx1837, nx1839, nx1841, 
         nx1843, nx1845, nx1847, nx1849, nx1851, nx1853, nx1855, nx1857, nx1859, 
         nx1861;
    wire [15:0] \$dummy ;




    fake_vcc ix1028 (.Y (nx1027)) ;
    fake_gnd ix439 (.Y (GND0)) ;
    nor03_2x ix957 (.Y (nx956), .A0 (nx1033), .A1 (nx1716), .A2 (loadProcess)) ;
    nand04 ix987 (.Y (nx986), .A0 (nx1036), .A1 (nx1050), .A2 (nx1459), .A3 (
           nx1714)) ;
    nor02_2x ix1037 (.Y (nx1036), .A0 (IOContU_t_currentState_0), .A1 (done)) ;
    dffs_ni IOContU_reg_t_currentState_0 (.Q (IOContU_t_currentState_0), .QB (
            \$dummy [0]), .D (GND0), .CLK (clk), .S (rst)) ;
    dffr IOContU_reg_t_currentState_8 (.Q (done), .QB (\$dummy [1]), .D (nx972)
         , .CLK (clk), .R (rst)) ;
    nor02_2x ix973 (.Y (nx972), .A0 (nx1042), .A1 (nx1044)) ;
    inv01 ix1043 (.Y (nx1042), .A (processDone)) ;
    dffr IOContU_reg_t_currentState_7 (.Q (\$dummy [2]), .QB (nx1044), .D (nx966
         ), .CLK (clk), .R (rst)) ;
    oai21 ix967 (.Y (nx966), .A0 (processDone), .A1 (nx1044), .B0 (nx1047)) ;
    dffr IOContU_reg_t_currentState_4 (.Q (processCntrlAccL), .QB (nx1047), .D (
         nx956), .CLK (clk), .R (rst)) ;
    nand02 ix1051 (.Y (nx1050), .A0 (IOContU_t_currentState_5), .A1 (
           doneImgCntrl)) ;
    oai21 ix941 (.Y (nx940), .A0 (nx1054), .A1 (doneImgCntrl), .B0 (nx1062)) ;
    dffr IOContU_reg_t_currentState_5 (.Q (IOContU_t_currentState_5), .QB (
         nx1054), .D (nx940), .CLK (clk), .R (rst)) ;
    mux21 ix1022 (.Y (nx1021), .A0 (nx1058), .A1 (nx1060), .S0 (nx493)) ;
    dffr ImgDecompU_reg_decompressed (.Q (doneImgCntrl), .QB (nx1058), .D (
         nx1021), .CLK (clk), .R (rst)) ;
    nand02 ix1061 (.Y (nx1060), .A0 (nx1062), .A1 (nx1070)) ;
    dffr IOContU_reg_t_currentState_2 (.Q (decompCntrlImg), .QB (nx1062), .D (
         nx8), .CLK (clk), .R (rst)) ;
    nor02_2x ix9 (.Y (nx8), .A0 (nx1743), .A1 (nx1067)) ;
    nand02 ix1066 (.Y (nx1065), .A0 (interrupt), .A1 (loadProcess)) ;
    nand02 ix1068 (.Y (nx1067), .A0 (CNNImage), .A1 (ready)) ;
    dffr IOContU_reg_t_currentState_1 (.Q (ready), .QB (nx1033), .D (nx986), .CLK (
         clk), .R (rst)) ;
    mux21 ix1012 (.Y (nx1011), .A0 (nx1070), .A1 (decompCntrlImg), .S0 (nx902)
          ) ;
    oai21 ix903 (.Y (nx902), .A0 (nx1060), .A1 (nx1074), .B0 (nx1457)) ;
    inv01 ix1075 (.Y (nx1074), .A (nx493)) ;
    nand03 ix931 (.Y (nx493), .A0 (nx1077), .A1 (nx1452), .A2 (nx1454)) ;
    nand04 ix1078 (.Y (nx1077), .A0 (nx808), .A1 (nx1441), .A2 (nx876), .A3 (
           nx892)) ;
    nor03_2x ix809 (.Y (nx808), .A0 (nx1080), .A1 (nx786), .A2 (nx1439)) ;
    nand02 ix1081 (.Y (nx1080), .A0 (ImgDecompU_packet), .A1 (nx1106)) ;
    inv01 ix912 (.Y (nx911), .A (nx1084)) ;
    nor02_2x ix1085 (.Y (nx1084), .A0 (nx907), .A1 (nx478)) ;
    nor02_2x ix908 (.Y (nx907), .A0 (nx1087), .A1 (decompCntrlImg)) ;
    dffr ImgDecompU_reg_packet (.Q (ImgDecompU_packet), .QB (nx1087), .D (nx911)
         , .CLK (clk), .R (rst)) ;
    nor02_2x ix711 (.Y (nx478), .A0 (nx1090), .A1 (nx1321)) ;
    nand03 ix1091 (.Y (nx1090), .A0 (nx584), .A1 (nx1313), .A2 (nx1317)) ;
    nor02_2x ix585 (.Y (nx584), .A0 (nx572), .A1 (nx1309)) ;
    oai21 ix852 (.Y (nx851), .A0 (nx1096), .A1 (nx1751), .B0 (nx1305)) ;
    dffr ImgDecompU_reg_en1 (.Q (\$dummy [3]), .QB (nx1100), .D (nx821), .CLK (
         clk), .R (rst)) ;
    oai21 ix822 (.Y (nx821), .A0 (nx1749), .A1 (nx478), .B0 (nx1103)) ;
    nand03 ix1104 (.Y (nx1103), .A0 (nx526), .A1 (nx1210), .A2 (nx481)) ;
    nor02_2x ix527 (.Y (nx526), .A0 (ImgDecompU_packet), .A1 (nx1106)) ;
    oai21 ix812 (.Y (nx811), .A0 (nx1106), .A1 (nx518), .B0 (nx1160)) ;
    nand03 ix519 (.Y (nx518), .A0 (nx1110), .A1 (nx1160), .A2 (nx1162)) ;
    inv01 ix1111 (.Y (nx1110), .A (nx514)) ;
    nor03_2x ix515 (.Y (nx514), .A0 (nx1060), .A1 (nx1113), .A2 (nx483)) ;
    nand02 ix1114 (.Y (nx1113), .A0 (ImgDecompU_packet), .A1 (ImgDecompU_bgn)) ;
    dffr ImgDecompU_reg_bgn (.Q (ImgDecompU_bgn), .QB (nx1106), .D (nx811), .CLK (
         clk), .R (rst)) ;
    nor02ii ix727 (.Y (nx483), .A0 (nx508), .A1 (nx722)) ;
    nand04 ix509 (.Y (nx508), .A0 (nx1118), .A1 (nx1138), .A2 (nx1143), .A3 (
           nx1148)) ;
    nor03_2x ix1119 (.Y (nx1118), .A0 (dataIOIntrDecomp_0), .A1 (
             dataIOIntrDecomp_1), .A2 (dataIOIntrDecomp_2)) ;
    inv01 ix1123 (.Y (nx1122), .A (din[0])) ;
    dffr IOInterU_packetReg_reg_output_0 (.Q (dataIOIntrDecomp_0), .QB (nx1124)
         , .D (nx511), .CLK (clk), .R (rst)) ;
    inv01 ix1129 (.Y (nx1128), .A (din[1])) ;
    dffr IOInterU_packetReg_reg_output_1 (.Q (dataIOIntrDecomp_1), .QB (nx1130)
         , .D (nx541), .CLK (clk), .R (rst)) ;
    inv01 ix1135 (.Y (nx1134), .A (din[2])) ;
    dffr IOInterU_packetReg_reg_output_2 (.Q (dataIOIntrDecomp_2), .QB (nx1136)
         , .D (nx571), .CLK (clk), .R (rst)) ;
    dffr IOInterU_packetReg_reg_output_3 (.Q (dataIOIntrDecomp_3), .QB (nx1138)
         , .D (nx601), .CLK (clk), .R (rst)) ;
    inv01 ix1142 (.Y (nx1141), .A (din[3])) ;
    dffr IOInterU_packetReg_reg_output_4 (.Q (dataIOIntrDecomp_4), .QB (nx1143)
         , .D (nx631), .CLK (clk), .R (rst)) ;
    inv01 ix1147 (.Y (nx1146), .A (din[4])) ;
    dffr IOInterU_packetReg_reg_output_5 (.Q (dataIOIntrDecomp_5), .QB (nx1148)
         , .D (nx661), .CLK (clk), .R (rst)) ;
    inv01 ix1152 (.Y (nx1151), .A (din[5])) ;
    nor02_2x ix723 (.Y (nx722), .A0 (dataIOIntrDecomp_6), .A1 (nx1113)) ;
    inv01 ix1157 (.Y (nx1156), .A (din[6])) ;
    dffr IOInterU_packetReg_reg_output_6 (.Q (dataIOIntrDecomp_6), .QB (nx1158)
         , .D (nx721), .CLK (clk), .R (rst)) ;
    nor02_2x ix1163 (.Y (nx1162), .A0 (nx530), .A1 (nx478)) ;
    nor03_2x ix531 (.Y (nx530), .A0 (nx1165), .A1 (nx920), .A2 (nx1060)) ;
    nand02 ix1166 (.Y (nx1165), .A0 (nx1087), .A1 (ImgDecompU_bgn)) ;
    nor02_2x ix921 (.Y (nx920), .A0 (dataIOIntrDecomp_14), .A1 (nx664)) ;
    inv01 ix1171 (.Y (nx1170), .A (din[14])) ;
    dffr IOInterU_packetReg_reg_output_14 (.Q (dataIOIntrDecomp_14), .QB (nx1172
         ), .D (nx711), .CLK (clk), .R (rst)) ;
    nand04 ix665 (.Y (nx664), .A0 (nx1175), .A1 (nx1195), .A2 (nx1200), .A3 (
           nx1205)) ;
    nor03_2x ix1176 (.Y (nx1175), .A0 (dataIOIntrDecomp_8), .A1 (
             dataIOIntrDecomp_9), .A2 (dataIOIntrDecomp_10)) ;
    inv01 ix1180 (.Y (nx1179), .A (din[8])) ;
    dffr IOInterU_packetReg_reg_output_8 (.Q (dataIOIntrDecomp_8), .QB (nx1181)
         , .D (nx501), .CLK (clk), .R (rst)) ;
    inv01 ix1186 (.Y (nx1185), .A (din[9])) ;
    dffr IOInterU_packetReg_reg_output_9 (.Q (dataIOIntrDecomp_9), .QB (nx1187)
         , .D (nx531), .CLK (clk), .R (rst)) ;
    inv01 ix1192 (.Y (nx1191), .A (din[10])) ;
    dffr IOInterU_packetReg_reg_output_10 (.Q (dataIOIntrDecomp_10), .QB (nx1193
         ), .D (nx561), .CLK (clk), .R (rst)) ;
    dffr IOInterU_packetReg_reg_output_11 (.Q (\$dummy [4]), .QB (nx1195), .D (
         nx591), .CLK (clk), .R (rst)) ;
    inv01 ix1199 (.Y (nx1198), .A (din[11])) ;
    dffr IOInterU_packetReg_reg_output_12 (.Q (\$dummy [5]), .QB (nx1200), .D (
         nx621), .CLK (clk), .R (rst)) ;
    inv01 ix1204 (.Y (nx1203), .A (din[12])) ;
    dffr IOInterU_packetReg_reg_output_13 (.Q (dataIOIntrDecomp_13), .QB (nx1205
         ), .D (nx651), .CLK (clk), .R (rst)) ;
    inv01 ix1209 (.Y (nx1208), .A (din[13])) ;
    nand02 ix1211 (.Y (nx1210), .A0 (nx1172), .A1 (nx1212)) ;
    nand04 ix663 (.Y (nx662), .A0 (nx1215), .A1 (nx1193), .A2 (nx1195), .A3 (
           nx1200)) ;
    nor02_2x ix1216 (.Y (nx1215), .A0 (dataIOIntrDecomp_8), .A1 (
             dataIOIntrDecomp_9)) ;
    nor02_2x ix915 (.Y (nx481), .A0 (decompCntrlImg), .A1 (ImgDecompU_decomp)) ;
    dffr ImgDecompU_reg_decomp (.Q (ImgDecompU_decomp), .QB (nx1070), .D (nx1011
         ), .CLK (clk), .R (rst)) ;
    oai21 ix832 (.Y (nx831), .A0 (nx1221), .A1 (nx480), .B0 (nx1303)) ;
    dffs_ni ImgDecompU_reg_rstc1 (.Q (ImgDecompU_rstc1), .QB (nx1221), .D (nx831
            ), .CLK (clk), .S (rst)) ;
    nand02 ix713 (.Y (nx480), .A0 (nx1224), .A1 (nx1062)) ;
    nand04 ix1225 (.Y (nx1224), .A0 (nx636), .A1 (nx1262), .A2 (nx696), .A3 (
           nx706)) ;
    nor03_2x ix637 (.Y (nx636), .A0 (nx1227), .A1 (nx606), .A2 (nx628)) ;
    nand02 ix1228 (.Y (nx1227), .A0 (nx1229), .A1 (nx580)) ;
    nor02_2x ix581 (.Y (nx580), .A0 (ImgDecompU_packet), .A1 (nx574)) ;
    dffr reg_ImgDecompU_cnt_2 (.Q (ImgDecompU_cnt_2), .QB (nx1246), .D (nx861), 
         .CLK (clk), .R (ImgDecompU_rstc1)) ;
    oai21 ix862 (.Y (nx861), .A0 (nx1237), .A1 (nx1749), .B0 (nx1244)) ;
    dffr reg_ImgDecompU_cnt_1 (.Q (ImgDecompU_cnt_1), .QB (nx1240), .D (nx851), 
         .CLK (clk), .R (ImgDecompU_rstc1)) ;
    dffr reg_ImgDecompU_cnt_0 (.Q (ImgDecompU_cnt_0), .QB (nx1242), .D (nx841), 
         .CLK (clk), .R (ImgDecompU_rstc1)) ;
    nand02 ix1245 (.Y (nx1244), .A0 (ImgDecompU_cnt_2), .A1 (nx1749)) ;
    dffr reg_ImgDecompU_cnt_3 (.Q (ImgDecompU_cnt_3), .QB (nx1259), .D (nx871), 
         .CLK (clk), .R (ImgDecompU_rstc1)) ;
    oai21 ix872 (.Y (nx871), .A0 (nx1252), .A1 (nx1749), .B0 (nx1257)) ;
    nor02_2x ix587 (.Y (nx586), .A0 (nx1246), .A1 (nx1255)) ;
    nand02 ix1256 (.Y (nx1255), .A0 (ImgDecompU_cnt_1), .A1 (ImgDecompU_cnt_0)
           ) ;
    nand02 ix1258 (.Y (nx1257), .A0 (ImgDecompU_cnt_3), .A1 (nx1749)) ;
    dffr reg_ImgDecompU_cnt_5 (.Q (ImgDecompU_cnt_5), .QB (nx1282), .D (nx891), 
         .CLK (clk), .R (ImgDecompU_rstc1)) ;
    oai21 ix892 (.Y (nx891), .A0 (nx1266), .A1 (nx1751), .B0 (nx1280)) ;
    oai21 ix882 (.Y (nx881), .A0 (nx1272), .A1 (nx1749), .B0 (nx1276)) ;
    dffr reg_ImgDecompU_cnt_4 (.Q (ImgDecompU_cnt_4), .QB (nx1269), .D (nx881), 
         .CLK (clk), .R (ImgDecompU_rstc1)) ;
    nand02 ix1277 (.Y (nx1276), .A0 (ImgDecompU_cnt_4), .A1 (nx1751)) ;
    nand02 ix1281 (.Y (nx1280), .A0 (ImgDecompU_cnt_5), .A1 (nx1751)) ;
    nor02ii ix697 (.Y (nx696), .A0 (nx682), .A1 (nx1298)) ;
    xnor2 ix683 (.Y (nx682), .A0 (ImgDecompU_cnt_6), .A1 (nx1296)) ;
    dffr reg_ImgDecompU_cnt_6 (.Q (ImgDecompU_cnt_6), .QB (\$dummy [6]), .D (
         nx901), .CLK (clk), .R (ImgDecompU_rstc1)) ;
    oai21 ix902 (.Y (nx901), .A0 (nx1288), .A1 (nx1751), .B0 (nx1293)) ;
    xnor2 ix1289 (.Y (nx1288), .A0 (ImgDecompU_cnt_6), .A1 (nx650)) ;
    nor03_2x ix651 (.Y (nx650), .A0 (nx1282), .A1 (nx1269), .A2 (nx1291)) ;
    nand04 ix1292 (.Y (nx1291), .A0 (ImgDecompU_cnt_3), .A1 (ImgDecompU_cnt_2), 
           .A2 (ImgDecompU_cnt_1), .A3 (ImgDecompU_cnt_0)) ;
    nand02 ix1294 (.Y (nx1293), .A0 (ImgDecompU_cnt_6), .A1 (nx1751)) ;
    nand03 ix621 (.Y (nx620), .A0 (nx1215), .A1 (nx1193), .A2 (nx1195)) ;
    nor02_2x ix707 (.Y (nx706), .A0 (nx526), .A1 (nx1060)) ;
    aoi21 ix1304 (.Y (nx1303), .A0 (rst), .A1 (decompCntrlImg), .B0 (nx478)) ;
    nand02 ix1306 (.Y (nx1305), .A0 (ImgDecompU_cnt_1), .A1 (nx1751)) ;
    nand02 ix1310 (.Y (nx1309), .A0 (nx1087), .A1 (nx1311)) ;
    nand02 ix565 (.Y (nx564), .A0 (nx1181), .A1 (nx1187)) ;
    nand03 ix599 (.Y (nx598), .A0 (nx1181), .A1 (nx1187), .A2 (nx1193)) ;
    nand04 ix1322 (.Y (nx1321), .A0 (nx1262), .A1 (nx1323), .A2 (nx1298), .A3 (
           nx706)) ;
    xnor2 ix1324 (.Y (nx1323), .A0 (ImgDecompU_cnt_6), .A1 (nx680)) ;
    oai21 ix962 (.Y (nx961), .A0 (nx1329), .A1 (nx1755), .B0 (nx1435)) ;
    oai21 ix952 (.Y (nx951), .A0 (nx1335), .A1 (nx1755), .B0 (nx1433)) ;
    dffr reg_ImgDecompU_cnt2_1 (.Q (ImgDecompU_cnt2_1), .QB (nx1332), .D (nx951)
         , .CLK (clk), .R (ImgDecompU_rstc2)) ;
    nand02 ix932 (.Y (nx931), .A0 (nx1340), .A1 (nx1346)) ;
    inv01 ix1341 (.Y (nx1340), .A (nx927)) ;
    nor02_2x ix928 (.Y (nx927), .A0 (nx1343), .A1 (nx490)) ;
    dffs_ni ImgDecompU_reg_rstc2 (.Q (ImgDecompU_rstc2), .QB (nx1343), .D (nx931
            ), .CLK (clk), .S (rst)) ;
    nand02 ix899 (.Y (nx490), .A0 (nx1077), .A1 (nx1062)) ;
    aoi21 ix1347 (.Y (nx1346), .A0 (rst), .A1 (decompCntrlImg), .B0 (nx487)) ;
    nor02_2x ix897 (.Y (nx487), .A0 (nx1349), .A1 (nx1368)) ;
    nand04 ix1350 (.Y (nx1349), .A0 (nx734), .A1 (nx1352), .A2 (nx1356), .A3 (
           nx1365)) ;
    nor02_2x ix735 (.Y (nx734), .A0 (nx1087), .A1 (ImgDecompU_bgn)) ;
    nand02 ix501 (.Y (nx500), .A0 (nx1124), .A1 (nx1130)) ;
    dffr reg_ImgDecompU_cnt2_0 (.Q (ImgDecompU_cnt2_0), .QB (nx1358), .D (nx941)
         , .CLK (clk), .R (ImgDecompU_rstc2)) ;
    dffr ImgDecompU_reg_en2 (.Q (\$dummy [7]), .QB (nx1362), .D (nx921), .CLK (
         clk), .R (rst)) ;
    oai21 ix922 (.Y (nx921), .A0 (nx1753), .A1 (nx487), .B0 (nx1110)) ;
    nand03 ix1369 (.Y (nx1368), .A0 (nx880), .A1 (nx1430), .A2 (nx481)) ;
    nor03_2x ix881 (.Y (nx880), .A0 (nx840), .A1 (nx848), .A2 (nx870)) ;
    dffr reg_ImgDecompU_cnt2_4 (.Q (ImgDecompU_cnt2_4), .QB (nx1392), .D (nx981)
         , .CLK (clk), .R (ImgDecompU_rstc2)) ;
    oai21 ix982 (.Y (nx981), .A0 (nx1374), .A1 (nx1753), .B0 (nx1390)) ;
    oai21 ix972 (.Y (nx971), .A0 (nx1380), .A1 (nx1753), .B0 (nx1388)) ;
    dffr reg_ImgDecompU_cnt2_3 (.Q (ImgDecompU_cnt2_3), .QB (nx1377), .D (nx971)
         , .CLK (clk), .R (ImgDecompU_rstc2)) ;
    nor02_2x ix769 (.Y (nx768), .A0 (nx1384), .A1 (nx1386)) ;
    dffr reg_ImgDecompU_cnt2_2 (.Q (ImgDecompU_cnt2_2), .QB (nx1384), .D (nx961)
         , .CLK (clk), .R (ImgDecompU_rstc2)) ;
    nand02 ix1387 (.Y (nx1386), .A0 (ImgDecompU_cnt2_1), .A1 (ImgDecompU_cnt2_0)
           ) ;
    nand02 ix1389 (.Y (nx1388), .A0 (ImgDecompU_cnt2_3), .A1 (nx1753)) ;
    nand02 ix1391 (.Y (nx1390), .A0 (ImgDecompU_cnt2_4), .A1 (nx1753)) ;
    nand03 ix503 (.Y (nx502), .A0 (nx1124), .A1 (nx1130), .A2 (nx1136)) ;
    xnor2 ix871 (.Y (nx870), .A0 (ImgDecompU_cnt2_6), .A1 (nx1423)) ;
    dffr reg_ImgDecompU_cnt2_6 (.Q (ImgDecompU_cnt2_6), .QB (\$dummy [8]), .D (
         nx1001), .CLK (clk), .R (ImgDecompU_rstc2)) ;
    oai21 ix1002 (.Y (nx1001), .A0 (nx1404), .A1 (nx1755), .B0 (nx1420)) ;
    xnor2 ix1405 (.Y (nx1404), .A0 (ImgDecompU_cnt2_6), .A1 (nx492)) ;
    nor03_2x ix861 (.Y (nx492), .A0 (nx1407), .A1 (nx1392), .A2 (nx1418)) ;
    oai21 ix992 (.Y (nx991), .A0 (nx1410), .A1 (nx1753), .B0 (nx1416)) ;
    dffr reg_ImgDecompU_cnt2_5 (.Q (ImgDecompU_cnt2_5), .QB (nx1407), .D (nx991)
         , .CLK (clk), .R (ImgDecompU_rstc2)) ;
    nand02 ix1417 (.Y (nx1416), .A0 (ImgDecompU_cnt2_5), .A1 (nx1755)) ;
    nand04 ix1419 (.Y (nx1418), .A0 (ImgDecompU_cnt2_3), .A1 (ImgDecompU_cnt2_2)
           , .A2 (ImgDecompU_cnt2_1), .A3 (ImgDecompU_cnt2_0)) ;
    nand02 ix1421 (.Y (nx1420), .A0 (ImgDecompU_cnt2_6), .A1 (nx1755)) ;
    nand04 ix507 (.Y (nx506), .A0 (nx1428), .A1 (nx1136), .A2 (nx1138), .A3 (
           nx1143)) ;
    nor02_2x ix1429 (.Y (nx1428), .A0 (dataIOIntrDecomp_0), .A1 (
             dataIOIntrDecomp_1)) ;
    nand02 ix1434 (.Y (nx1433), .A0 (ImgDecompU_cnt2_1), .A1 (nx1755)) ;
    nand02 ix1436 (.Y (nx1435), .A0 (ImgDecompU_cnt2_2), .A1 (nx1755)) ;
    nand02 ix1440 (.Y (nx1439), .A0 (nx1356), .A1 (nx1365)) ;
    nand03 ix505 (.Y (nx504), .A0 (nx1428), .A1 (nx1136), .A2 (nx1138)) ;
    nor02_2x ix877 (.Y (nx876), .A0 (nx848), .A1 (nx870)) ;
    nor02ii ix893 (.Y (nx892), .A0 (nx888), .A1 (nx481)) ;
    nand02 ix1453 (.Y (nx1452), .A0 (nx1425), .A1 (nx722)) ;
    nor02ii ix1455 (.Y (nx1454), .A0 (nx922), .A1 (nx481)) ;
    nor03_2x ix923 (.Y (nx922), .A0 (nx1165), .A1 (dataIOIntrDecomp_14), .A2 (
             nx664)) ;
    nand02 ix1460 (.Y (nx1459), .A0 (IOContU_t_currentState_6), .A1 (
           doneCNNCntrl)) ;
    oai21 ix489 (.Y (nx488), .A0 (nx1463), .A1 (doneCNNCntrl), .B0 (nx1763)) ;
    dffr IOContU_reg_t_currentState_6 (.Q (IOContU_t_currentState_6), .QB (
         nx1463), .D (nx488), .CLK (clk), .R (rst)) ;
    dff JsonDecompU_reg_wdDone (.Q (doneCNNCntrl), .QB (\$dummy [9]), .D (nx801)
        , .CLK (clk)) ;
    nand02 ix802 (.Y (nx801), .A0 (nx1467), .A1 (nx1474)) ;
    nand03 ix1468 (.Y (nx1467), .A0 (doneCNNCntrl), .A1 (nx1757), .A2 (nx1727)
           ) ;
    dffr IOContU_reg_t_currentState_3 (.Q (decompCntrlCNN), .QB (\$dummy [10]), 
         .D (nx14), .CLK (clk), .R (rst)) ;
    nor03_2x ix15 (.Y (nx14), .A0 (nx1747), .A1 (CNNImage), .A2 (nx1033)) ;
    nand04 ix1475 (.Y (nx1474), .A0 (nx475), .A1 (nx1759), .A2 (
           JsonDecompU_upCount_3), .A3 (nx1763)) ;
    nor02_2x ix465 (.Y (nx475), .A0 (nx1477), .A1 (nx1704)) ;
    oai21 ix782 (.Y (nx781), .A0 (nx1480), .A1 (nx1681), .B0 (nx1702)) ;
    dffr reg_JsonDecompU_upCount_2 (.Q (JsonDecompU_upCount_2), .QB (nx1477), .D (
         nx781), .CLK (clk), .R (nx436)) ;
    inv01 ix440 (.Y (nx436), .A (nx1484)) ;
    nor02_2x ix1485 (.Y (nx1484), .A0 (JsonDecompU_rstUpC), .A1 (rst)) ;
    dff JsonDecompU_reg_rstUpC (.Q (JsonDecompU_rstUpC), .QB (\$dummy [11]), .D (
        nx751), .CLK (clk)) ;
    inv01 ix752 (.Y (nx751), .A (nx1488)) ;
    oai21 ix1489 (.Y (nx1488), .A0 (JsonDecompU_rstUpC), .A1 (nx1490), .B0 (nx58
          )) ;
    nor02_2x ix1491 (.Y (nx1490), .A0 (nx400), .A1 (nx396)) ;
    nand03 ix401 (.Y (nx400), .A0 (nx1493), .A1 (nx1570), .A2 (nx1539)) ;
    nand02 ix552 (.Y (nx551), .A0 (nx1496), .A1 (nx1664)) ;
    nand03 ix1497 (.Y (nx1496), .A0 (JsonDecompU_countVal_1), .A1 (nx1739), .A2 (
           nx1767)) ;
    dff JsonDecompU_reg_countVal_1 (.Q (JsonDecompU_countVal_1), .QB (nx1493), .D (
        nx551), .CLK (clk)) ;
    nor02_2x ix59 (.Y (nx58), .A0 (rst), .A1 (nx1727)) ;
    nand03 ix1501 (.Y (nx1500), .A0 (JsonDecompU_bgnSec), .A1 (JsonDecompU_LorR)
           , .A2 (JsonDecompU_bgn)) ;
    oai21 ix692 (.Y (nx691), .A0 (nx1504), .A1 (nx350), .B0 (nx1660)) ;
    dff JsonDecompU_reg_bgnSec (.Q (JsonDecompU_bgnSec), .QB (nx1504), .D (nx691
        ), .CLK (clk)) ;
    oai21 ix351 (.Y (nx350), .A0 (nx1727), .A1 (nx1507), .B0 (nx1759)) ;
    nor02ii ix1508 (.Y (nx1507), .A0 (nx473), .A1 (nx1765)) ;
    nor02ii ix343 (.Y (nx473), .A0 (nx304), .A1 (nx338)) ;
    nand03 ix305 (.Y (nx304), .A0 (nx1511), .A1 (nx1572), .A2 (nx1658)) ;
    nor03_2x ix1512 (.Y (nx1511), .A0 (JsonDecompU_dnCount_1), .A1 (
             JsonDecompU_dnCount_2), .A2 (nx1559)) ;
    oai21 ix111 (.Y (nx110), .A0 (nx1737), .A1 (nx1654), .B0 (nx1656)) ;
    dff JsonDecompU_reg_loadEn (.Q (JsonDecompU_loadEn), .QB (\$dummy [12]), .D (
        nx30), .CLK (clk)) ;
    nand02 ix31 (.Y (nx30), .A0 (nx1517), .A1 (nx1651)) ;
    nand04 ix1518 (.Y (nx1517), .A0 (nx1757), .A1 (JsonDecompU_bgnSec), .A2 (
           JsonDecompU_LorR), .A3 (JsonDecompU_bgn)) ;
    oai321 ix682 (.Y (nx681), .A0 (nx304), .A1 (nx1521), .A2 (nx1727), .B0 (
           nx1523), .B1 (nx310), .C0 (nx1757)) ;
    nand02 ix1522 (.Y (nx1521), .A0 (nx1757), .A1 (nx1523)) ;
    dff JsonDecompU_reg_LorR (.Q (JsonDecompU_LorR), .QB (nx1523), .D (nx681), .CLK (
        clk)) ;
    oai21 ix311 (.Y (nx310), .A0 (nx302), .A1 (nx296), .B0 (nx58)) ;
    nand03 ix303 (.Y (nx302), .A0 (nx1527), .A1 (nx1529), .A2 (
           JsonDecompU_dnCount_0)) ;
    dffr reg_JsonDecompU_dnCount_1 (.Q (JsonDecompU_dnCount_1), .QB (nx1527), .D (
         nx110), .CLK (clk), .R (rst)) ;
    oai21 ix151 (.Y (nx150), .A0 (nx1735), .A1 (nx1532), .B0 (nx1560)) ;
    dffr reg_JsonDecompU_dnCount_2 (.Q (JsonDecompU_dnCount_2), .QB (nx1529), .D (
         nx150), .CLK (clk), .R (rst)) ;
    nor02_2x ix1536 (.Y (nx1535), .A0 (JsonDecompU_dnCount_0), .A1 (
             JsonDecompU_dnCount_1)) ;
    dffr reg_JsonDecompU_dnCount_0 (.Q (JsonDecompU_dnCount_0), .QB (nx1559), .D (
         nx72), .CLK (clk), .R (rst)) ;
    mux21 ix73 (.Y (nx72), .A0 (JsonDecompU_dnCount_0), .A1 (nx1539), .S0 (
          nx1735)) ;
    nand02 ix522 (.Y (nx521), .A0 (nx1542), .A1 (nx1545)) ;
    nand03 ix1543 (.Y (nx1542), .A0 (JsonDecompU_countVal_0), .A1 (nx1739), .A2 (
           nx1765)) ;
    dff JsonDecompU_reg_countVal_0 (.Q (JsonDecompU_countVal_0), .QB (nx1539), .D (
        nx521), .CLK (clk)) ;
    oai22 ix1546 (.Y (nx1545), .A0 (nx60), .A1 (nx48), .B0 (nx1549), .B1 (nx1731
          )) ;
    nor03_2x ix61 (.Y (nx60), .A0 (nx1124), .A1 (rst), .A2 (nx1727)) ;
    nor03_2x ix49 (.Y (nx48), .A0 (nx1181), .A1 (rst), .A2 (nx1761)) ;
    nand02_2x ix1550 (.Y (nx1549), .A0 (nx1757), .A1 (nx1761)) ;
    nor03_2x ix367 (.Y (nx464), .A0 (nx1504), .A1 (nx1523), .A2 (nx1552)) ;
    dff JsonDecompU_reg_bgn (.Q (JsonDecompU_bgn), .QB (nx1552), .D (nx701), .CLK (
        clk)) ;
    oai21 ix702 (.Y (nx701), .A0 (nx1552), .A1 (nx320), .B0 (nx1557)) ;
    oai21 ix321 (.Y (nx320), .A0 (nx304), .A1 (nx338), .B0 (nx1739)) ;
    nor02_2x ix339 (.Y (nx338), .A0 (rst), .A1 (JsonDecompU_LorR)) ;
    nand02 ix1558 (.Y (nx1557), .A0 (nx1757), .A1 (nx1727)) ;
    nand02 ix1561 (.Y (nx1560), .A0 (JsonDecompU_countVal_2), .A1 (nx1735)) ;
    dff JsonDecompU_reg_countVal_2 (.Q (JsonDecompU_countVal_2), .QB (nx1570), .D (
        nx581), .CLK (clk)) ;
    nand02 ix582 (.Y (nx581), .A0 (nx1564), .A1 (nx1566)) ;
    nand03 ix1565 (.Y (nx1564), .A0 (JsonDecompU_countVal_2), .A1 (nx1739), .A2 (
           nx1765)) ;
    oai22 ix1567 (.Y (nx1566), .A0 (nx138), .A1 (nx132), .B0 (nx1549), .B1 (
          nx1731)) ;
    nor03_2x ix139 (.Y (nx138), .A0 (nx1136), .A1 (rst), .A2 (nx1727)) ;
    nor03_2x ix133 (.Y (nx132), .A0 (nx1193), .A1 (rst), .A2 (nx1761)) ;
    nand03 ix297 (.Y (nx296), .A0 (nx1572), .A1 (nx1611), .A2 (nx1631)) ;
    nor02_2x ix1573 (.Y (nx1572), .A0 (JsonDecompU_dnCount_3), .A1 (
             JsonDecompU_dnCount_4)) ;
    dffr reg_JsonDecompU_dnCount_3 (.Q (JsonDecompU_dnCount_3), .QB (nx1591), .D (
         nx190), .CLK (clk), .R (rst)) ;
    oai21 ix191 (.Y (nx190), .A0 (nx1735), .A1 (nx1576), .B0 (nx1580)) ;
    nand02 ix1581 (.Y (nx1580), .A0 (JsonDecompU_countVal_3), .A1 (nx1735)) ;
    dff JsonDecompU_reg_countVal_3 (.Q (JsonDecompU_countVal_3), .QB (
        \$dummy [13]), .D (nx611), .CLK (clk)) ;
    nand02 ix612 (.Y (nx611), .A0 (nx1584), .A1 (nx1586)) ;
    nand03 ix1585 (.Y (nx1584), .A0 (JsonDecompU_countVal_3), .A1 (nx1739), .A2 (
           nx1765)) ;
    oai22 ix1587 (.Y (nx1586), .A0 (nx178), .A1 (nx172), .B0 (nx1549), .B1 (
          nx1731)) ;
    nor03_2x ix179 (.Y (nx178), .A0 (nx1138), .A1 (rst), .A2 (nx1729)) ;
    nor03_2x ix173 (.Y (nx172), .A0 (nx1195), .A1 (rst), .A2 (nx1761)) ;
    dffr reg_JsonDecompU_dnCount_4 (.Q (JsonDecompU_dnCount_4), .QB (nx1610), .D (
         nx230), .CLK (clk), .R (rst)) ;
    oai21 ix231 (.Y (nx230), .A0 (nx1735), .A1 (nx1594), .B0 (nx1599)) ;
    nand02 ix1600 (.Y (nx1599), .A0 (JsonDecompU_countVal_4), .A1 (nx1735)) ;
    dff JsonDecompU_reg_countVal_4 (.Q (JsonDecompU_countVal_4), .QB (
        \$dummy [14]), .D (nx641), .CLK (clk)) ;
    nand02 ix642 (.Y (nx641), .A0 (nx1603), .A1 (nx1605)) ;
    nand03 ix1604 (.Y (nx1603), .A0 (JsonDecompU_countVal_4), .A1 (nx1739), .A2 (
           nx1765)) ;
    oai22 ix1606 (.Y (nx1605), .A0 (nx218), .A1 (nx212), .B0 (nx1549), .B1 (
          nx1731)) ;
    nor03_2x ix219 (.Y (nx218), .A0 (nx1143), .A1 (rst), .A2 (nx1729)) ;
    nor03_2x ix213 (.Y (nx212), .A0 (nx1200), .A1 (rst), .A2 (nx1761)) ;
    oai21 ix271 (.Y (nx270), .A0 (nx1737), .A1 (nx1614), .B0 (nx1620)) ;
    dffr reg_JsonDecompU_dnCount_5 (.Q (JsonDecompU_dnCount_5), .QB (nx1611), .D (
         nx270), .CLK (clk), .R (rst)) ;
    nand03 ix197 (.Y (nx468), .A0 (nx1535), .A1 (nx1529), .A2 (nx1591)) ;
    nand02 ix1621 (.Y (nx1620), .A0 (JsonDecompU_countVal_5), .A1 (nx1737)) ;
    dff JsonDecompU_reg_countVal_5 (.Q (JsonDecompU_countVal_5), .QB (nx1630), .D (
        nx671), .CLK (clk)) ;
    nand02 ix672 (.Y (nx671), .A0 (nx1624), .A1 (nx1626)) ;
    nand03 ix1625 (.Y (nx1624), .A0 (JsonDecompU_countVal_5), .A1 (nx1739), .A2 (
           nx1765)) ;
    oai22 ix1627 (.Y (nx1626), .A0 (nx258), .A1 (nx252), .B0 (nx1549), .B1 (
          nx1731)) ;
    nor03_2x ix259 (.Y (nx258), .A0 (nx1148), .A1 (rst), .A2 (nx1729)) ;
    nor03_2x ix253 (.Y (nx252), .A0 (nx1205), .A1 (rst), .A2 (nx1761)) ;
    oai21 ix287 (.Y (nx286), .A0 (nx1737), .A1 (nx1634), .B0 (nx1640)) ;
    dffr reg_JsonDecompU_dnCount_6 (.Q (JsonDecompU_dnCount_6), .QB (nx1631), .D (
         nx286), .CLK (clk), .R (rst)) ;
    nand04 ix237 (.Y (nx467), .A0 (nx1535), .A1 (nx1529), .A2 (nx1591), .A3 (
           nx1610)) ;
    nand02 ix1641 (.Y (nx1640), .A0 (JsonDecompU_countVal_6), .A1 (nx1737)) ;
    dff JsonDecompU_reg_countVal_6 (.Q (JsonDecompU_countVal_6), .QB (nx1650), .D (
        nx731), .CLK (clk)) ;
    nand02 ix732 (.Y (nx731), .A0 (nx1644), .A1 (nx1646)) ;
    nand03 ix1645 (.Y (nx1644), .A0 (JsonDecompU_countVal_6), .A1 (nx58), .A2 (
           nx1765)) ;
    oai22 ix1647 (.Y (nx1646), .A0 (nx382), .A1 (nx376), .B0 (nx1549), .B1 (
          nx1731)) ;
    nor03_2x ix383 (.Y (nx382), .A0 (nx1158), .A1 (rst), .A2 (nx1729)) ;
    nor03_2x ix377 (.Y (nx376), .A0 (nx1172), .A1 (rst), .A2 (nx1761)) ;
    nand02 ix1652 (.Y (nx1651), .A0 (nx1757), .A1 (nx1729)) ;
    nand02 ix1657 (.Y (nx1656), .A0 (JsonDecompU_countVal_1), .A1 (nx1737)) ;
    nor02_2x ix1659 (.Y (nx1658), .A0 (JsonDecompU_dnCount_5), .A1 (
             JsonDecompU_dnCount_6)) ;
    nand04 ix1661 (.Y (nx1660), .A0 (nx1662), .A1 (nx1759), .A2 (nx1523), .A3 (
           nx1651)) ;
    nor02_2x ix1663 (.Y (nx1662), .A0 (nx302), .A1 (nx296)) ;
    oai22 ix1665 (.Y (nx1664), .A0 (nx98), .A1 (nx92), .B0 (nx1549), .B1 (nx1731
          )) ;
    nor03_2x ix99 (.Y (nx98), .A0 (nx1130), .A1 (rst), .A2 (nx1729)) ;
    nor03_2x ix93 (.Y (nx92), .A0 (nx1187), .A1 (rst), .A2 (nx1763)) ;
    nand03 ix397 (.Y (nx396), .A0 (nx1669), .A1 (nx1630), .A2 (nx1650)) ;
    nor02_2x ix1670 (.Y (nx1669), .A0 (JsonDecompU_countVal_3), .A1 (
             JsonDecompU_countVal_4)) ;
    oai21 ix772 (.Y (nx771), .A0 (nx1676), .A1 (nx1681), .B0 (nx1700)) ;
    dffr reg_JsonDecompU_upCount_1 (.Q (JsonDecompU_upCount_1), .QB (nx1673), .D (
         nx771), .CLK (clk), .R (nx436)) ;
    dffr reg_JsonDecompU_upCount_0 (.Q (JsonDecompU_upCount_0), .QB (nx1699), .D (
         nx761), .CLK (clk), .R (nx436)) ;
    oai21 ix742 (.Y (nx741), .A0 (nx1684), .A1 (nx1687), .B0 (nx1689)) ;
    nor02ii ix1685 (.Y (nx1684), .A0 (nx412), .A1 (nx1651)) ;
    nor04 ix413 (.Y (nx412), .A0 (rst), .A1 (nx1729), .A2 (nx1662), .A3 (nx1767)
          ) ;
    nor03_2x ix1688 (.Y (nx1687), .A0 (nx1733), .A1 (nx310), .A2 (nx1490)) ;
    nand03 ix1690 (.Y (nx1689), .A0 (JsonDecompU_upCEn), .A1 (nx1692), .A2 (
           nx402)) ;
    dff JsonDecompU_reg_upCEn (.Q (JsonDecompU_upCEn), .QB (nx1681), .D (nx741)
        , .CLK (clk)) ;
    nor02_2x ix1693 (.Y (nx1692), .A0 (nx1733), .A1 (nx310)) ;
    nand03 ix403 (.Y (nx402), .A0 (nx1695), .A1 (nx1669), .A2 (nx1697)) ;
    nor03_2x ix1696 (.Y (nx1695), .A0 (JsonDecompU_countVal_1), .A1 (
             JsonDecompU_countVal_2), .A2 (JsonDecompU_countVal_0)) ;
    nor02_2x ix1698 (.Y (nx1697), .A0 (JsonDecompU_countVal_5), .A1 (
             JsonDecompU_countVal_6)) ;
    nand02 ix1701 (.Y (nx1700), .A0 (JsonDecompU_upCount_1), .A1 (nx1681)) ;
    nand02 ix1703 (.Y (nx1702), .A0 (JsonDecompU_upCount_2), .A1 (nx1681)) ;
    nand02 ix1705 (.Y (nx1704), .A0 (JsonDecompU_upCount_1), .A1 (
           JsonDecompU_upCount_0)) ;
    dffr reg_JsonDecompU_upCount_3 (.Q (JsonDecompU_upCount_3), .QB (
         \$dummy [15]), .D (nx791), .CLK (clk), .R (nx436)) ;
    oai21 ix792 (.Y (nx791), .A0 (nx1708), .A1 (nx1681), .B0 (nx1710)) ;
    xnor2 ix1709 (.Y (nx1708), .A0 (JsonDecompU_upCount_3), .A1 (nx475)) ;
    nand02 ix1711 (.Y (nx1710), .A0 (JsonDecompU_upCount_3), .A1 (nx1681)) ;
    nand02 ix1715 (.Y (nx1714), .A0 (nx1716), .A1 (ready)) ;
    inv01 ix1717 (.Y (nx1716), .A (interrupt)) ;
    tri01 tri_dout_0 (.Y (dout[0]), .A (nx1027), .E (GND0)) ;
    tri01 tri_dout_1 (.Y (dout[1]), .A (nx1027), .E (GND0)) ;
    tri01 tri_dout_2 (.Y (dout[2]), .A (nx1027), .E (GND0)) ;
    tri01 tri_dout_3 (.Y (dout[3]), .A (nx1027), .E (GND0)) ;
    inv02 ix1726 (.Y (nx1727), .A (nx1763)) ;
    inv02 ix1728 (.Y (nx1729), .A (nx1763)) ;
    buf02 ix1730 (.Y (nx1731), .A (nx464)) ;
    buf02 ix1732 (.Y (nx1733), .A (nx464)) ;
    buf02 ix1734 (.Y (nx1735), .A (JsonDecompU_loadEn)) ;
    buf02 ix1736 (.Y (nx1737), .A (JsonDecompU_loadEn)) ;
    nor02_2x ix1738 (.Y (nx1739), .A0 (rst), .A1 (nx1727)) ;
    inv02 ix1742 (.Y (nx1743), .A (nx1857)) ;
    inv02 ix1746 (.Y (nx1747), .A (nx1857)) ;
    buf02 ix1748 (.Y (nx1749), .A (nx1100)) ;
    buf02 ix1750 (.Y (nx1751), .A (nx1100)) ;
    buf02 ix1752 (.Y (nx1753), .A (nx1362)) ;
    buf02 ix1754 (.Y (nx1755), .A (nx1362)) ;
    inv02 ix1756 (.Y (nx1757), .A (rst)) ;
    inv02 ix1758 (.Y (nx1759), .A (rst)) ;
    inv04 ix1760 (.Y (nx1761), .A (decompCntrlCNN)) ;
    inv04 ix1762 (.Y (nx1763), .A (decompCntrlCNN)) ;
    buf02 ix1764 (.Y (nx1765), .A (nx1500)) ;
    buf02 ix1766 (.Y (nx1767), .A (nx1500)) ;
    xnor2 ix573 (.Y (nx572), .A0 (nx1240), .A1 (nx1773)) ;
    xnor2 ix1097 (.Y (nx1096), .A0 (nx1240), .A1 (nx1242)) ;
    xnor2 ix842 (.Y (nx841), .A0 (nx1242), .A1 (nx1775)) ;
    inv01 ix1774 (.Y (nx1775), .A (nx1749)) ;
    mux21 ix512 (.Y (nx511), .A0 (nx1124), .A1 (nx1122), .S0 (nx1857)) ;
    mux21 ix542 (.Y (nx541), .A0 (nx1130), .A1 (nx1128), .S0 (nx1857)) ;
    mux21 ix572 (.Y (nx571), .A0 (nx1136), .A1 (nx1134), .S0 (nx1857)) ;
    mux21 ix602 (.Y (nx601), .A0 (nx1138), .A1 (nx1141), .S0 (nx1857)) ;
    mux21 ix632 (.Y (nx631), .A0 (nx1143), .A1 (nx1146), .S0 (nx1857)) ;
    mux21 ix662 (.Y (nx661), .A0 (nx1148), .A1 (nx1151), .S0 (nx1859)) ;
    mux21 ix722 (.Y (nx721), .A0 (nx1158), .A1 (nx1156), .S0 (nx1859)) ;
    nor02_2x ix1161 (.Y (nx1160), .A0 (nx478), .A1 (decompCntrlImg)) ;
    mux21 ix712 (.Y (nx711), .A0 (nx1172), .A1 (nx1170), .S0 (nx1859)) ;
    mux21 ix502 (.Y (nx501), .A0 (nx1181), .A1 (nx1179), .S0 (nx1859)) ;
    mux21 ix532 (.Y (nx531), .A0 (nx1187), .A1 (nx1185), .S0 (nx1859)) ;
    mux21 ix562 (.Y (nx561), .A0 (nx1193), .A1 (nx1191), .S0 (nx1859)) ;
    mux21 ix592 (.Y (nx591), .A0 (nx1195), .A1 (nx1198), .S0 (nx1859)) ;
    mux21 ix622 (.Y (nx621), .A0 (nx1200), .A1 (nx1203), .S0 (nx1861)) ;
    mux21 ix652 (.Y (nx651), .A0 (nx1205), .A1 (nx1208), .S0 (nx1861)) ;
    nor02_2x ix1213 (.Y (nx1212), .A0 (nx662), .A1 (dataIOIntrDecomp_13)) ;
    xnor2 ix1230 (.Y (nx1229), .A0 (nx1240), .A1 (nx1777)) ;
    xnor2 ix571 (.Y (nx1777), .A0 (nx1187), .A1 (dataIOIntrDecomp_8)) ;
    xnor2 ix575 (.Y (nx574), .A0 (nx1181), .A1 (nx1242)) ;
    xnor2 ix607 (.Y (nx606), .A0 (nx1246), .A1 (nx1779)) ;
    xnor2 ix1238 (.Y (nx1237), .A0 (nx1246), .A1 (nx1781)) ;
    nand02 ix553 (.Y (nx1781), .A0 (ImgDecompU_cnt_1), .A1 (ImgDecompU_cnt_0)) ;
    xnor2 ix1248 (.Y (nx1779), .A0 (nx1193), .A1 (nx1215)) ;
    xnor2 ix629 (.Y (nx628), .A0 (nx1259), .A1 (nx1783)) ;
    xnor2 ix1253 (.Y (nx1252), .A0 (nx1259), .A1 (nx1785)) ;
    inv01 ix1784 (.Y (nx1785), .A (nx586)) ;
    xnor2 ix1261 (.Y (nx1783), .A0 (nx1195), .A1 (nx1175)) ;
    xnor2 ix1263 (.Y (nx1262), .A0 (nx1282), .A1 (nx1787)) ;
    xnor2 ix1267 (.Y (nx1266), .A0 (nx1282), .A1 (nx1789)) ;
    nand03 ix649 (.Y (nx1789), .A0 (ImgDecompU_cnt_4), .A1 (ImgDecompU_cnt_3), .A2 (
           nx1791)) ;
    xnor2 ix1273 (.Y (nx1272), .A0 (nx1269), .A1 (nx1793)) ;
    nand03 ix609 (.Y (nx1793), .A0 (ImgDecompU_cnt_3), .A1 (ImgDecompU_cnt_2), .A2 (
           nx1795)) ;
    inv01 ix1794 (.Y (nx1795), .A (nx1255)) ;
    nor03_2x ix1279 (.Y (nx1791), .A0 (nx1246), .A1 (nx1240), .A2 (nx1242)) ;
    xnor2 ix671 (.Y (nx1787), .A0 (nx1205), .A1 (nx662)) ;
    xnor2 ix1297 (.Y (nx1296), .A0 (nx1172), .A1 (nx1797)) ;
    inv01 ix1796 (.Y (nx1797), .A (nx1212)) ;
    xnor2 ix1299 (.Y (nx1298), .A0 (nx1269), .A1 (nx1799)) ;
    xnor2 ix689 (.Y (nx1799), .A0 (nx1200), .A1 (nx620)) ;
    xnor2 ix1308 (.Y (nx1773), .A0 (nx1187), .A1 (nx1181)) ;
    xnor2 ix1312 (.Y (nx1311), .A0 (nx1181), .A1 (ImgDecompU_cnt_0)) ;
    xnor2 ix1314 (.Y (nx1313), .A0 (nx1246), .A1 (nx1801)) ;
    xnor2 ix605 (.Y (nx1801), .A0 (nx1193), .A1 (nx564)) ;
    xnor2 ix1318 (.Y (nx1317), .A0 (nx1259), .A1 (nx1803)) ;
    xnor2 ix627 (.Y (nx1803), .A0 (nx1195), .A1 (nx598)) ;
    xnor2 ix681 (.Y (nx680), .A0 (nx1172), .A1 (nx1805)) ;
    inv01 ix1804 (.Y (nx1805), .A (nx664)) ;
    xnor2 ix787 (.Y (nx786), .A0 (nx1384), .A1 (nx1807)) ;
    xnor2 ix1330 (.Y (nx1329), .A0 (nx1384), .A1 (nx1809)) ;
    nand02 ix767 (.Y (nx1809), .A0 (ImgDecompU_cnt2_1), .A1 (ImgDecompU_cnt2_0)
           ) ;
    xnor2 ix1336 (.Y (nx1335), .A0 (nx1332), .A1 (nx1358)) ;
    xnor2 ix1353 (.Y (nx1352), .A0 (nx1384), .A1 (nx1811)) ;
    xnor2 ix785 (.Y (nx1811), .A0 (nx1136), .A1 (nx500)) ;
    xnor2 ix1357 (.Y (nx1356), .A0 (nx1124), .A1 (ImgDecompU_cnt2_0)) ;
    xnor2 ix942 (.Y (nx941), .A0 (nx1358), .A1 (nx1813)) ;
    inv01 ix1812 (.Y (nx1813), .A (nx1753)) ;
    xnor2 ix1366 (.Y (nx1365), .A0 (nx1332), .A1 (nx1815)) ;
    xnor2 ix795 (.Y (nx1815), .A0 (nx1130), .A1 (dataIOIntrDecomp_0)) ;
    xnor2 ix841 (.Y (nx840), .A0 (nx1392), .A1 (nx1817)) ;
    xnor2 ix1375 (.Y (nx1374), .A0 (nx1392), .A1 (nx1819)) ;
    nand03 ix821 (.Y (nx1819), .A0 (ImgDecompU_cnt2_3), .A1 (ImgDecompU_cnt2_2)
           , .A2 (nx1821)) ;
    inv01 ix1820 (.Y (nx1821), .A (nx1386)) ;
    xnor2 ix1381 (.Y (nx1380), .A0 (nx1377), .A1 (nx1823)) ;
    inv01 ix1822 (.Y (nx1823), .A (nx768)) ;
    xnor2 ix1394 (.Y (nx1817), .A0 (nx1143), .A1 (nx1395)) ;
    nor02_2x ix1396 (.Y (nx1395), .A0 (nx502), .A1 (dataIOIntrDecomp_3)) ;
    xnor2 ix849 (.Y (nx848), .A0 (nx1377), .A1 (nx1825)) ;
    xnor2 ix1400 (.Y (nx1825), .A0 (nx1138), .A1 (nx1118)) ;
    xnor2 ix1411 (.Y (nx1410), .A0 (nx1407), .A1 (nx1827)) ;
    nand03 ix823 (.Y (nx1827), .A0 (ImgDecompU_cnt2_4), .A1 (ImgDecompU_cnt2_3)
           , .A2 (nx1829)) ;
    nor03_2x ix1415 (.Y (nx1829), .A0 (nx1384), .A1 (nx1332), .A2 (nx1358)) ;
    xnor2 ix1424 (.Y (nx1423), .A0 (nx1158), .A1 (nx1831)) ;
    inv01 ix1830 (.Y (nx1831), .A (nx1425)) ;
    nor02_2x ix1426 (.Y (nx1425), .A0 (nx506), .A1 (dataIOIntrDecomp_5)) ;
    xnor2 ix1431 (.Y (nx1430), .A0 (nx1407), .A1 (nx1833)) ;
    xnor2 ix887 (.Y (nx1833), .A0 (nx1148), .A1 (nx506)) ;
    xnor2 ix1438 (.Y (nx1807), .A0 (nx1136), .A1 (nx1428)) ;
    xnor2 ix1442 (.Y (nx1441), .A0 (nx1392), .A1 (nx1835)) ;
    xnor2 ix839 (.Y (nx1835), .A0 (nx1143), .A1 (nx504)) ;
    xnor2 ix889 (.Y (nx888), .A0 (nx1407), .A1 (nx1837)) ;
    xnor2 ix1449 (.Y (nx1837), .A0 (nx1148), .A1 (nx1450)) ;
    nor02_2x ix1451 (.Y (nx1450), .A0 (nx504), .A1 (dataIOIntrDecomp_4)) ;
    nor02_2x ix1458 (.Y (nx1457), .A0 (nx487), .A1 (decompCntrlImg)) ;
    xnor2 ix1481 (.Y (nx1480), .A0 (nx1477), .A1 (nx1839)) ;
    xnor2 ix1533 (.Y (nx1532), .A0 (nx1529), .A1 (nx1841)) ;
    inv01 ix1840 (.Y (nx1841), .A (nx1535)) ;
    xnor2 ix1577 (.Y (nx1576), .A0 (nx1591), .A1 (nx1843)) ;
    nand03 ix1579 (.Y (nx1843), .A0 (nx1559), .A1 (nx1527), .A2 (nx1529)) ;
    xnor2 ix1595 (.Y (nx1594), .A0 (nx1610), .A1 (nx1845)) ;
    nand02 ix1597 (.Y (nx1845), .A0 (nx1847), .A1 (nx1591)) ;
    nor03_2x ix157 (.Y (nx1847), .A0 (JsonDecompU_dnCount_0), .A1 (
             JsonDecompU_dnCount_1), .A2 (JsonDecompU_dnCount_2)) ;
    xnor2 ix1615 (.Y (nx1614), .A0 (nx1611), .A1 (nx1849)) ;
    nand02 ix1618 (.Y (nx1849), .A0 (nx1851), .A1 (nx1610)) ;
    inv01 ix1850 (.Y (nx1851), .A (nx468)) ;
    xnor2 ix1635 (.Y (nx1634), .A0 (nx1631), .A1 (nx1853)) ;
    nand02 ix1638 (.Y (nx1853), .A0 (nx1855), .A1 (nx1611)) ;
    inv01 ix1854 (.Y (nx1855), .A (nx467)) ;
    xnor2 ix1655 (.Y (nx1654), .A0 (nx1527), .A1 (JsonDecompU_dnCount_0)) ;
    nand02 ix453 (.Y (nx1839), .A0 (JsonDecompU_upCount_1), .A1 (
           JsonDecompU_upCount_0)) ;
    xnor2 ix1677 (.Y (nx1676), .A0 (nx1673), .A1 (nx1699)) ;
    xnor2 ix762 (.Y (nx761), .A0 (nx1699), .A1 (JsonDecompU_upCEn)) ;
    inv02 ix1856 (.Y (nx1857), .A (nx1065)) ;
    inv02 ix1858 (.Y (nx1859), .A (nx1065)) ;
    inv02 ix1860 (.Y (nx1861), .A (nx1065)) ;
endmodule


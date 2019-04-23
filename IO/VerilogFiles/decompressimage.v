//
// Verilog description for cell DecompressImage, 
// Tue Apr 23 19:59:20 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module DecompressImage ( clk, rst, din, proces, decompressed, word, dataOut ) ;

    input clk ;
    input rst ;
    input [15:0]din ;
    input proces ;
    output decompressed ;
    output word ;
    output [15:0]dataOut ;

    wire packet, cnt_0, en1, nx610, bgn, nx612, decomp, nx0, nx4, nx6, nx8, nx10, 
         nx14, nx18, cnt2_0, en2, nx613, nx614, rstc2, nx615, cnt2_1, nx70, 
         cnt2_2, nx72, nx90, nx98, cnt2_3, nx116, nx118, cnt2_6, cnt2_5, nx616, 
         cnt2_4, nx150, nx152, nx158, nx164, nx166, nx172, nx174, nx180, nx184, 
         nx618, nx194, nx196, nx198, nx200, nx619, nx204, nx208, nx212, nx214, 
         nx216, nx240, rstc1, cnt_1, nx300, cnt_2, nx302, nx320, nx328, cnt_3, 
         nx346, nx348, cnt_6, cnt_5, nx620, cnt_4, nx380, nx382, nx388, nx394, 
         nx396, nx402, nx404, nx410, nx414, nx420, nx446, nx450, nx452, nx628, 
         nx638, nx648, nx658, nx668, nx678, nx688, nx698, nx708, nx718, nx728, 
         nx738, nx748, nx758, nx768, nx778, nx788, nx798, nx808, nx818, nx824, 
         nx828, nx838, nx848, nx859, nx863, nx866, nx869, nx872, nx874, nx876, 
         nx882, nx885, nx888, nx890, nx894, nx897, nx900, nx904, nx907, nx913, 
         nx916, nx920, nx923, nx925, nx927, nx930, nx933, nx937, nx939, nx941, 
         nx943, nx946, nx951, nx953, nx955, nx957, nx959, nx961, nx966, nx969, 
         nx971, nx975, nx978, nx981, nx986, nx988, nx992, nx995, nx997, nx999, 
         nx1009, nx1011, nx1013, nx1019, nx1021, nx1025, nx1030, nx1033, nx1036, 
         nx1040, nx1043, nx1047, nx1049, nx1051, nx1055, nx1057, nx1059, nx1062, 
         nx1064, nx1069, nx1071, nx1074, nx1077, nx1079, nx1084, nx1086, nx1089, 
         nx1092, nx1095, nx1098, nx1100, nx1102, nx1106, nx1108, nx1110, nx1112, 
         nx1114, nx1116, nx1119, nx1121, nx1123, nx1127, nx1130, nx1133, nx1137, 
         nx1140, nx1144, nx1148, nx1150, nx1152, nx1156, nx1160, nx1165, nx1173, 
         nx1177, nx1180, nx1182, nx1186, nx1188, nx1191, nx1193, nx1195, nx1199, 
         nx1201, nx1203, nx1208, nx1210, nx1213, nx1217, nx1219, nx1226, nx1228, 
         nx1232, nx1234, nx1236, nx1242, nx1244, nx1246, nx1248, nx1250, nx1252, 
         nx1254, nx1256, nx1258, nx1260, nx1262, nx1264, nx1266, nx1268, nx1270, 
         nx1272, nx1274, nx1276, nx1278, nx1280, nx1282, nx1284, nx1286, nx1288, 
         nx1290, nx1292, nx1294, nx1296;
    wire [4:0] \$dummy ;




    assign dataOut[14] = dataOut[15] ;
    assign dataOut[13] = dataOut[15] ;
    assign dataOut[12] = dataOut[15] ;
    assign dataOut[11] = dataOut[15] ;
    assign dataOut[10] = dataOut[15] ;
    assign dataOut[9] = dataOut[15] ;
    assign dataOut[8] = dataOut[15] ;
    assign dataOut[7] = dataOut[15] ;
    assign dataOut[6] = dataOut[15] ;
    assign dataOut[5] = dataOut[15] ;
    assign dataOut[4] = dataOut[15] ;
    assign dataOut[3] = dataOut[15] ;
    assign dataOut[2] = dataOut[15] ;
    assign dataOut[1] = dataOut[15] ;
    assign dataOut[0] = dataOut[15] ;
    nand02 ix437 (.Y (dataOut[15]), .A0 (nx859), .A1 (nx1195)) ;
    nand02 ix860 (.Y (nx859), .A0 (din[7]), .A1 (packet)) ;
    inv01 ix829 (.Y (nx828), .A (nx863)) ;
    nor02_2x ix864 (.Y (nx863), .A0 (nx824), .A1 (nx610)) ;
    nor02_2x ix825 (.Y (nx824), .A0 (nx866), .A1 (proces)) ;
    dffr reg_packet (.Q (packet), .QB (nx866), .D (nx828), .CLK (clk), .R (rst)
         ) ;
    nor02ii ix423 (.Y (nx610), .A0 (nx869), .A1 (nx420)) ;
    nand03 ix870 (.Y (nx869), .A0 (nx328), .A1 (nx388), .A2 (nx410)) ;
    nor03_2x ix329 (.Y (nx328), .A0 (nx872), .A1 (nx300), .A2 (nx320)) ;
    nand02 ix873 (.Y (nx872), .A0 (nx866), .A1 (nx874)) ;
    xnor2 ix875 (.Y (nx874), .A0 (din[8]), .A1 (nx876)) ;
    dffr reg_cnt_0 (.Q (cnt_0), .QB (nx876), .D (nx758), .CLK (clk), .R (rstc1)
         ) ;
    oai21 ix749 (.Y (nx748), .A0 (nx882), .A1 (nx612), .B0 (nx1165)) ;
    dffs_ni reg_rstc1 (.Q (rstc1), .QB (nx882), .D (nx748), .CLK (clk), .S (rst)
            ) ;
    nand02 ix425 (.Y (nx612), .A0 (nx885), .A1 (nx925)) ;
    nand02 ix886 (.Y (nx885), .A0 (nx414), .A1 (nx420)) ;
    nor02ii ix415 (.Y (nx414), .A0 (nx888), .A1 (nx328)) ;
    nand04 ix889 (.Y (nx888), .A0 (nx890), .A1 (nx1123), .A2 (nx1156), .A3 (
           nx1160)) ;
    dffr reg_cnt_3 (.Q (cnt_3), .QB (nx1116), .D (nx788), .CLK (clk), .R (rstc1)
         ) ;
    oai21 ix789 (.Y (nx788), .A0 (nx894), .A1 (nx1226), .B0 (nx1114)) ;
    nor02_2x ix303 (.Y (nx302), .A0 (nx897), .A1 (nx1112)) ;
    oai21 ix779 (.Y (nx778), .A0 (nx900), .A1 (nx1226), .B0 (nx1110)) ;
    dffr reg_cnt_2 (.Q (cnt_2), .QB (nx897), .D (nx778), .CLK (clk), .R (rstc1)
         ) ;
    oai21 ix769 (.Y (nx768), .A0 (nx907), .A1 (nx1226), .B0 (nx1108)) ;
    dffr reg_cnt_1 (.Q (cnt_1), .QB (nx904), .D (nx768), .CLK (clk), .R (rstc1)
         ) ;
    dffr reg_en1 (.Q (en1), .QB (\$dummy [0]), .D (nx738), .CLK (clk), .R (rst)
         ) ;
    oai21 ix739 (.Y (nx738), .A0 (nx1226), .A1 (nx610), .B0 (nx913)) ;
    nand02 ix914 (.Y (nx913), .A0 (nx619), .A1 (nx1102)) ;
    nor02_2x ix249 (.Y (nx619), .A0 (packet), .A1 (nx916)) ;
    oai21 ix729 (.Y (nx728), .A0 (nx916), .A1 (nx240), .B0 (nx1100)) ;
    nand04 ix241 (.Y (nx240), .A0 (nx920), .A1 (nx885), .A2 (nx925), .A3 (nx913)
           ) ;
    inv01 ix921 (.Y (nx920), .A (nx613)) ;
    nor03_2x ix237 (.Y (nx613), .A0 (nx923), .A1 (nx946), .A2 (nx18)) ;
    nand02 ix924 (.Y (nx923), .A0 (nx925), .A1 (nx927)) ;
    inv01 ix926 (.Y (nx925), .A (proces)) ;
    oai21 ix719 (.Y (nx718), .A0 (proces), .A1 (nx930), .B0 (nx1098)) ;
    nor02_2x ix931 (.Y (nx930), .A0 (nx216), .A1 (nx615)) ;
    nor02_2x ix217 (.Y (nx216), .A0 (nx923), .A1 (nx933)) ;
    nor02_2x ix934 (.Y (nx933), .A0 (nx18), .A1 (nx212)) ;
    nor02ii ix19 (.Y (nx18), .A0 (nx10), .A1 (nx14)) ;
    nand04 ix11 (.Y (nx10), .A0 (nx937), .A1 (nx939), .A2 (nx941), .A3 (nx943)
           ) ;
    nor03_2x ix938 (.Y (nx937), .A0 (din[0]), .A1 (din[1]), .A2 (din[2])) ;
    inv01 ix940 (.Y (nx939), .A (din[3])) ;
    inv01 ix942 (.Y (nx941), .A (din[4])) ;
    inv01 ix944 (.Y (nx943), .A (din[5])) ;
    nor02_2x ix15 (.Y (nx14), .A0 (din[6]), .A1 (nx946)) ;
    nand02 ix947 (.Y (nx946), .A0 (packet), .A1 (bgn)) ;
    dffr reg_bgn (.Q (bgn), .QB (nx916), .D (nx728), .CLK (clk), .R (rst)) ;
    oai21 ix213 (.Y (nx212), .A0 (nx200), .A1 (nx959), .B0 (nx618)) ;
    nand04 ix201 (.Y (nx200), .A0 (nx951), .A1 (nx953), .A2 (nx955), .A3 (nx957)
           ) ;
    nor03_2x ix952 (.Y (nx951), .A0 (din[8]), .A1 (din[9]), .A2 (din[10])) ;
    inv01 ix954 (.Y (nx953), .A (din[11])) ;
    inv01 ix956 (.Y (nx955), .A (din[12])) ;
    inv01 ix958 (.Y (nx957), .A (din[13])) ;
    nand03 ix960 (.Y (nx959), .A0 (nx961), .A1 (nx866), .A2 (bgn)) ;
    inv01 ix962 (.Y (nx961), .A (din[14])) ;
    nor02_2x ix231 (.Y (nx618), .A0 (proces), .A1 (decomp)) ;
    dffr reg_decomp (.Q (decomp), .QB (nx927), .D (nx718), .CLK (clk), .R (rst)
         ) ;
    nand02 ix191 (.Y (nx615), .A0 (nx966), .A1 (nx925)) ;
    nand03 ix967 (.Y (nx966), .A0 (nx946), .A1 (nx184), .A2 (nx618)) ;
    nor02ii ix185 (.Y (nx184), .A0 (nx969), .A1 (nx98)) ;
    nand04 ix970 (.Y (nx969), .A0 (nx971), .A1 (nx1089), .A2 (nx1092), .A3 (
           nx1095)) ;
    oai21 ix679 (.Y (nx678), .A0 (nx975), .A1 (nx1234), .B0 (nx1086)) ;
    nor02_2x ix73 (.Y (nx72), .A0 (nx978), .A1 (nx1049)) ;
    oai21 ix669 (.Y (nx668), .A0 (nx981), .A1 (nx1234), .B0 (nx1084)) ;
    dffr reg_cnt2_2 (.Q (cnt2_2), .QB (nx978), .D (nx668), .CLK (clk), .R (rstc2
         )) ;
    dffs_ni reg_rstc2 (.Q (rstc2), .QB (\$dummy [1]), .D (nx638), .CLK (clk), .S (
            rst)) ;
    nand02 ix639 (.Y (nx638), .A0 (nx986), .A1 (nx988)) ;
    nand03 ix987 (.Y (nx986), .A0 (rstc2), .A1 (nx966), .A2 (nx925)) ;
    aoi21 ix989 (.Y (nx988), .A0 (rst), .A1 (proces), .B0 (nx614)) ;
    nor03_2x ix189 (.Y (nx614), .A0 (nx0), .A1 (nx992), .A2 (nx923)) ;
    nor02_2x ix1 (.Y (nx0), .A0 (nx866), .A1 (nx916)) ;
    nand03 ix993 (.Y (nx992), .A0 (nx98), .A1 (nx158), .A2 (nx180)) ;
    nor03_2x ix99 (.Y (nx98), .A0 (nx995), .A1 (nx70), .A2 (nx90)) ;
    nand02 ix996 (.Y (nx995), .A0 (packet), .A1 (nx997)) ;
    xnor2 ix998 (.Y (nx997), .A0 (din[0]), .A1 (nx999)) ;
    dffr reg_cnt2_0 (.Q (cnt2_0), .QB (nx999), .D (nx648), .CLK (clk), .R (rstc2
         )) ;
    dffr reg_en2 (.Q (en2), .QB (\$dummy [2]), .D (nx628), .CLK (clk), .R (rst)
         ) ;
    oai21 ix629 (.Y (nx628), .A0 (nx1232), .A1 (nx614), .B0 (nx920)) ;
    dffr reg_cnt2_1 (.Q (cnt2_1), .QB (nx1013), .D (nx658), .CLK (clk), .R (
         rstc2)) ;
    oai21 ix659 (.Y (nx658), .A0 (nx1009), .A1 (nx1232), .B0 (nx1011)) ;
    nand02 ix1012 (.Y (nx1011), .A0 (cnt2_1), .A1 (nx1232)) ;
    xnor2 ix1020 (.Y (nx1019), .A0 (din[2]), .A1 (nx1021)) ;
    nor02_2x ix1022 (.Y (nx1021), .A0 (din[0]), .A1 (din[1])) ;
    nor02_2x ix159 (.Y (nx158), .A0 (nx118), .A1 (nx152)) ;
    xnor2 ix1026 (.Y (nx1025), .A0 (din[3]), .A1 (nx937)) ;
    xnor2 ix153 (.Y (nx152), .A0 (cnt2_6), .A1 (nx1062)) ;
    dffr reg_cnt2_6 (.Q (cnt2_6), .QB (\$dummy [3]), .D (nx708), .CLK (clk), .R (
         rstc2)) ;
    oai21 ix709 (.Y (nx708), .A0 (nx1030), .A1 (nx1234), .B0 (nx1059)) ;
    xnor2 ix1031 (.Y (nx1030), .A0 (cnt2_6), .A1 (nx616)) ;
    nor03_2x ix143 (.Y (nx616), .A0 (nx1033), .A1 (nx1040), .A2 (nx1057)) ;
    oai21 ix699 (.Y (nx698), .A0 (nx1036), .A1 (nx1232), .B0 (nx1055)) ;
    dffr reg_cnt2_5 (.Q (cnt2_5), .QB (nx1033), .D (nx698), .CLK (clk), .R (
         rstc2)) ;
    oai21 ix689 (.Y (nx688), .A0 (nx1043), .A1 (nx1232), .B0 (nx1051)) ;
    dffr reg_cnt2_4 (.Q (cnt2_4), .QB (nx1040), .D (nx688), .CLK (clk), .R (
         rstc2)) ;
    dffr reg_cnt2_3 (.Q (cnt2_3), .QB (nx1047), .D (nx678), .CLK (clk), .R (
         rstc2)) ;
    nand02 ix1050 (.Y (nx1049), .A0 (cnt2_1), .A1 (cnt2_0)) ;
    nand02 ix1052 (.Y (nx1051), .A0 (cnt2_4), .A1 (nx1232)) ;
    nand02 ix1056 (.Y (nx1055), .A0 (cnt2_5), .A1 (nx1234)) ;
    nand04 ix1058 (.Y (nx1057), .A0 (cnt2_3), .A1 (cnt2_2), .A2 (cnt2_1), .A3 (
           cnt2_0)) ;
    nand02 ix1060 (.Y (nx1059), .A0 (cnt2_6), .A1 (nx1234)) ;
    xnor2 ix1063 (.Y (nx1062), .A0 (din[6]), .A1 (nx1064)) ;
    nand03 ix9 (.Y (nx8), .A0 (nx937), .A1 (nx939), .A2 (nx941)) ;
    nor02_2x ix181 (.Y (nx180), .A0 (nx166), .A1 (nx174)) ;
    xnor2 ix1070 (.Y (nx1069), .A0 (din[4]), .A1 (nx1071)) ;
    nand02 ix5 (.Y (nx4), .A0 (nx1021), .A1 (nx1074)) ;
    inv01 ix1075 (.Y (nx1074), .A (din[2])) ;
    xnor2 ix1078 (.Y (nx1077), .A0 (din[5]), .A1 (nx1079)) ;
    nand03 ix7 (.Y (nx6), .A0 (nx1021), .A1 (nx1074), .A2 (nx939)) ;
    nand02 ix1085 (.Y (nx1084), .A0 (cnt2_2), .A1 (nx1234)) ;
    nand02 ix1087 (.Y (nx1086), .A0 (cnt2_3), .A1 (nx1234)) ;
    xnor2 ix117 (.Y (nx116), .A0 (din[3]), .A1 (nx4)) ;
    xnor2 ix1090 (.Y (nx1089), .A0 (cnt2_6), .A1 (nx150)) ;
    xnor2 ix151 (.Y (nx150), .A0 (din[6]), .A1 (nx10)) ;
    xnor2 ix165 (.Y (nx164), .A0 (din[4]), .A1 (nx6)) ;
    xnor2 ix173 (.Y (nx172), .A0 (din[5]), .A1 (nx8)) ;
    nand02 ix1099 (.Y (nx1098), .A0 (decomp), .A1 (nx925)) ;
    nor02ii ix1103 (.Y (nx1102), .A0 (nx208), .A1 (nx618)) ;
    nor02ii ix209 (.Y (nx208), .A0 (nx200), .A1 (nx204)) ;
    nor02_2x ix205 (.Y (nx204), .A0 (din[14]), .A1 (nx1106)) ;
    nand02 ix1107 (.Y (nx1106), .A0 (nx866), .A1 (bgn)) ;
    nand02 ix1109 (.Y (nx1108), .A0 (cnt_1), .A1 (nx1226)) ;
    nand02 ix1111 (.Y (nx1110), .A0 (cnt_2), .A1 (nx1226)) ;
    nand02 ix1113 (.Y (nx1112), .A0 (cnt_1), .A1 (cnt_0)) ;
    nand02 ix1115 (.Y (nx1114), .A0 (cnt_3), .A1 (nx1228)) ;
    xnor2 ix347 (.Y (nx346), .A0 (din[11]), .A1 (nx194)) ;
    nand02 ix195 (.Y (nx194), .A0 (nx1119), .A1 (nx1121)) ;
    nor02_2x ix1120 (.Y (nx1119), .A0 (din[8]), .A1 (din[9])) ;
    inv01 ix1122 (.Y (nx1121), .A (din[10])) ;
    xnor2 ix1124 (.Y (nx1123), .A0 (cnt_6), .A1 (nx380)) ;
    dffr reg_cnt_6 (.Q (cnt_6), .QB (\$dummy [4]), .D (nx818), .CLK (clk), .R (
         rstc1)) ;
    oai21 ix819 (.Y (nx818), .A0 (nx1127), .A1 (nx1228), .B0 (nx1152)) ;
    xnor2 ix1128 (.Y (nx1127), .A0 (cnt_6), .A1 (nx620)) ;
    nor03_2x ix373 (.Y (nx620), .A0 (nx1130), .A1 (nx1137), .A2 (nx1150)) ;
    oai21 ix809 (.Y (nx808), .A0 (nx1133), .A1 (nx1228), .B0 (nx1148)) ;
    dffr reg_cnt_5 (.Q (cnt_5), .QB (nx1130), .D (nx808), .CLK (clk), .R (rstc1)
         ) ;
    oai21 ix799 (.Y (nx798), .A0 (nx1140), .A1 (nx1228), .B0 (nx1144)) ;
    dffr reg_cnt_4 (.Q (cnt_4), .QB (nx1137), .D (nx798), .CLK (clk), .R (rstc1)
         ) ;
    nand02 ix1145 (.Y (nx1144), .A0 (cnt_4), .A1 (nx1228)) ;
    nand02 ix1149 (.Y (nx1148), .A0 (cnt_5), .A1 (nx1228)) ;
    nand04 ix1151 (.Y (nx1150), .A0 (cnt_3), .A1 (cnt_2), .A2 (cnt_1), .A3 (
           cnt_0)) ;
    nand02 ix1153 (.Y (nx1152), .A0 (cnt_6), .A1 (nx1228)) ;
    xnor2 ix381 (.Y (nx380), .A0 (din[14]), .A1 (nx200)) ;
    xnor2 ix395 (.Y (nx394), .A0 (din[12]), .A1 (nx196)) ;
    nand03 ix197 (.Y (nx196), .A0 (nx1119), .A1 (nx1121), .A2 (nx953)) ;
    xnor2 ix403 (.Y (nx402), .A0 (din[13]), .A1 (nx198)) ;
    nand03 ix199 (.Y (nx198), .A0 (nx951), .A1 (nx953), .A2 (nx955)) ;
    nor02_2x ix421 (.Y (nx420), .A0 (nx619), .A1 (nx923)) ;
    aoi21 ix1166 (.Y (nx1165), .A0 (rst), .A1 (proces), .B0 (nx610)) ;
    xnor2 ix1174 (.Y (nx1173), .A0 (din[10]), .A1 (nx1119)) ;
    nor02_2x ix389 (.Y (nx388), .A0 (nx348), .A1 (nx382)) ;
    xnor2 ix1178 (.Y (nx1177), .A0 (din[11]), .A1 (nx951)) ;
    xnor2 ix383 (.Y (nx382), .A0 (cnt_6), .A1 (nx1180)) ;
    xnor2 ix1181 (.Y (nx1180), .A0 (din[14]), .A1 (nx1182)) ;
    nor02_2x ix411 (.Y (nx410), .A0 (nx396), .A1 (nx404)) ;
    xnor2 ix1187 (.Y (nx1186), .A0 (din[12]), .A1 (nx1188)) ;
    xnor2 ix1192 (.Y (nx1191), .A0 (din[13]), .A1 (nx1193)) ;
    nand02 ix1196 (.Y (nx1195), .A0 (din[15]), .A1 (nx866)) ;
    mux21 ix849 (.Y (nx848), .A0 (nx1199), .A1 (nx1208), .S0 (nx1210)) ;
    aoi422 ix1200 (.Y (nx1199), .A0 (nx618), .A1 (packet), .A2 (bgn), .A3 (
           nx1201), .B0 (nx619), .B1 (nx1102), .C0 (nx1203), .C1 (nx452)) ;
    nand03 ix1202 (.Y (nx1201), .A0 (nx1079), .A1 (nx943), .A2 (nx14)) ;
    nor03_2x ix1204 (.Y (nx1203), .A0 (nx214), .A1 (nx184), .A2 (nx446)) ;
    nand02 ix215 (.Y (nx214), .A0 (nx1201), .A1 (nx1102)) ;
    nand02 ix447 (.Y (nx446), .A0 (nx869), .A1 (nx916)) ;
    nand02 ix453 (.Y (nx452), .A0 (nx1226), .A1 (nx1236)) ;
    dffr reg_word (.Q (word), .QB (nx1208), .D (nx848), .CLK (clk), .R (rst)) ;
    nor03_2x ix1211 (.Y (nx1210), .A0 (en1), .A1 (en2), .A2 (nx450)) ;
    nand03 ix451 (.Y (nx450), .A0 (nx1213), .A1 (nx869), .A2 (nx916)) ;
    nor02_2x ix1214 (.Y (nx1213), .A0 (nx214), .A1 (nx184)) ;
    mux21 ix839 (.Y (nx838), .A0 (nx923), .A1 (nx1217), .S0 (nx1219)) ;
    dffr reg_decompressed (.Q (decompressed), .QB (nx1217), .D (nx838), .CLK (
         clk), .R (rst)) ;
    nor02_2x ix1220 (.Y (nx1219), .A0 (nx214), .A1 (nx614)) ;
    inv01 ix1225 (.Y (nx1226), .A (en1)) ;
    inv01 ix1227 (.Y (nx1228), .A (en1)) ;
    inv02 ix1231 (.Y (nx1232), .A (en2)) ;
    inv02 ix1233 (.Y (nx1234), .A (en2)) ;
    inv02 ix1235 (.Y (nx1236), .A (en2)) ;
    xnor2 ix759 (.Y (nx758), .A0 (nx876), .A1 (en1)) ;
    xnor2 ix891 (.Y (nx890), .A0 (nx1116), .A1 (nx1242)) ;
    inv01 ix1241 (.Y (nx1242), .A (nx346)) ;
    xnor2 ix895 (.Y (nx894), .A0 (nx1116), .A1 (nx1244)) ;
    inv01 ix1243 (.Y (nx1244), .A (nx302)) ;
    xnor2 ix901 (.Y (nx900), .A0 (nx897), .A1 (nx1246)) ;
    nand02 ix283 (.Y (nx1246), .A0 (cnt_1), .A1 (cnt_0)) ;
    xnor2 ix908 (.Y (nx907), .A0 (nx904), .A1 (nx876)) ;
    xnor2 ix972 (.Y (nx971), .A0 (nx1047), .A1 (nx1248)) ;
    inv01 ix1247 (.Y (nx1248), .A (nx116)) ;
    xnor2 ix976 (.Y (nx975), .A0 (nx1047), .A1 (nx1250)) ;
    inv01 ix1249 (.Y (nx1250), .A (nx72)) ;
    xnor2 ix982 (.Y (nx981), .A0 (nx978), .A1 (nx1252)) ;
    xnor2 ix649 (.Y (nx648), .A0 (nx999), .A1 (en2)) ;
    xnor2 ix71 (.Y (nx70), .A0 (nx1013), .A1 (nx1254)) ;
    xnor2 ix1010 (.Y (nx1009), .A0 (nx1013), .A1 (nx999)) ;
    xnor2 ix1015 (.Y (nx1254), .A0 (din[1]), .A1 (din[0])) ;
    xnor2 ix91 (.Y (nx90), .A0 (nx978), .A1 (nx1256)) ;
    inv01 ix1255 (.Y (nx1256), .A (nx1019)) ;
    xnor2 ix119 (.Y (nx118), .A0 (nx1047), .A1 (nx1258)) ;
    inv01 ix1257 (.Y (nx1258), .A (nx1025)) ;
    xnor2 ix1037 (.Y (nx1036), .A0 (nx1033), .A1 (nx1260)) ;
    nand03 ix131 (.Y (nx1260), .A0 (cnt2_4), .A1 (cnt2_3), .A2 (nx1262)) ;
    xnor2 ix1044 (.Y (nx1043), .A0 (nx1040), .A1 (nx1264)) ;
    nand03 ix101 (.Y (nx1264), .A0 (cnt2_3), .A1 (cnt2_2), .A2 (nx1266)) ;
    inv01 ix1265 (.Y (nx1266), .A (nx1049)) ;
    nor03_2x ix1054 (.Y (nx1262), .A0 (nx978), .A1 (nx1013), .A2 (nx999)) ;
    nor02_2x ix1065 (.Y (nx1064), .A0 (nx8), .A1 (din[5])) ;
    xnor2 ix167 (.Y (nx166), .A0 (nx1040), .A1 (nx1268)) ;
    inv01 ix1267 (.Y (nx1268), .A (nx1069)) ;
    nor02_2x ix1072 (.Y (nx1071), .A0 (nx4), .A1 (din[3])) ;
    xnor2 ix175 (.Y (nx174), .A0 (nx1033), .A1 (nx1270)) ;
    inv01 ix1269 (.Y (nx1270), .A (nx1077)) ;
    nor02_2x ix1080 (.Y (nx1079), .A0 (nx6), .A1 (din[4])) ;
    nand02 ix53 (.Y (nx1252), .A0 (cnt2_1), .A1 (cnt2_0)) ;
    xnor2 ix1093 (.Y (nx1092), .A0 (nx1040), .A1 (nx1272)) ;
    inv01 ix1271 (.Y (nx1272), .A (nx164)) ;
    xnor2 ix1096 (.Y (nx1095), .A0 (nx1033), .A1 (nx1274)) ;
    inv01 ix1273 (.Y (nx1274), .A (nx172)) ;
    nor02_2x ix1101 (.Y (nx1100), .A0 (nx610), .A1 (proces)) ;
    xnor2 ix1134 (.Y (nx1133), .A0 (nx1130), .A1 (nx1276)) ;
    nand03 ix361 (.Y (nx1276), .A0 (cnt_4), .A1 (cnt_3), .A2 (nx1278)) ;
    xnor2 ix1141 (.Y (nx1140), .A0 (nx1137), .A1 (nx1280)) ;
    nand03 ix331 (.Y (nx1280), .A0 (cnt_3), .A1 (cnt_2), .A2 (nx1282)) ;
    inv01 ix1281 (.Y (nx1282), .A (nx1112)) ;
    nor03_2x ix1147 (.Y (nx1278), .A0 (nx897), .A1 (nx904), .A2 (nx876)) ;
    xnor2 ix1157 (.Y (nx1156), .A0 (nx1137), .A1 (nx1284)) ;
    inv01 ix1283 (.Y (nx1284), .A (nx394)) ;
    xnor2 ix1161 (.Y (nx1160), .A0 (nx1130), .A1 (nx1286)) ;
    inv01 ix1285 (.Y (nx1286), .A (nx402)) ;
    xnor2 ix301 (.Y (nx300), .A0 (nx904), .A1 (nx1288)) ;
    xnor2 ix1169 (.Y (nx1288), .A0 (din[9]), .A1 (din[8])) ;
    xnor2 ix321 (.Y (nx320), .A0 (nx897), .A1 (nx1290)) ;
    inv01 ix1289 (.Y (nx1290), .A (nx1173)) ;
    xnor2 ix349 (.Y (nx348), .A0 (nx1116), .A1 (nx1292)) ;
    inv01 ix1291 (.Y (nx1292), .A (nx1177)) ;
    nor02_2x ix1183 (.Y (nx1182), .A0 (nx198), .A1 (din[13])) ;
    xnor2 ix397 (.Y (nx396), .A0 (nx1137), .A1 (nx1294)) ;
    inv01 ix1293 (.Y (nx1294), .A (nx1186)) ;
    nor02_2x ix1189 (.Y (nx1188), .A0 (nx194), .A1 (din[11])) ;
    xnor2 ix405 (.Y (nx404), .A0 (nx1130), .A1 (nx1296)) ;
    inv01 ix1295 (.Y (nx1296), .A (nx1191)) ;
    nor02_2x ix1194 (.Y (nx1193), .A0 (nx196), .A1 (din[12])) ;
endmodule


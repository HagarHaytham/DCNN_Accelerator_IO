//
// Verilog description for cell IOController, 
// Tue Apr 23 18:25:44 2019
//
// LeonardoSpectrum Level 3, 2018a.2 
//


module IOController ( i_clk, i_rst, i_int, i_op, i_dtype, i_decompI, i_wordI, 
                      i_decompC, i_wordC, i_processDone, o_ready, 
                      o_loadDecompImg, o_loadDecompCNN, o_writeMem, o_readMem, 
                      o_process, o_done, o_address ) ;

    input i_clk ;
    input i_rst ;
    input i_int ;
    input i_op ;
    input i_dtype ;
    input i_decompI ;
    input i_wordI ;
    input i_decompC ;
    input i_wordC ;
    input i_processDone ;
    output o_ready ;
    output o_loadDecompImg ;
    output o_loadDecompCNN ;
    output o_writeMem ;
    output o_readMem ;
    output o_process ;
    output o_done ;
    output [15:0]o_address ;

    wire nx58, t_nextState_4, t_nextState_3, nx78, t_nextState_1, 
         t_currentState_6, t_nextState_6, nx4, t_currentState_5, t_nextState_5, 
         t_nextState_2, nx24, nx40, t_nextState_8, t_currentState_7, 
         t_nextState_7, nx62, nx74, t_currentState_0, nx94, nx112, nx132, nx138, 
         nx148, CNNAddLines_0, imgAddLines_0, CNNAddLines_1, imgAddLines_1, 
         CNNAddLines_2, nx222, imgAddLines_2, nx236, CNNAddLines_3, nx254, 
         imgAddLines_3, nx268, CNNAddLines_4, imgAddLines_4, CNNAddLines_5, 
         imgAddLines_5, CNNAddLines_6, imgAddLines_6, CNNAddLines_7, 
         imgAddLines_7, CNNAddLines_8, nx414, imgAddLines_8, nx428, 
         CNNAddLines_9, imgAddLines_9, nx86, nx97, nx107, nx117, nx127, nx137, 
         nx147, nx157, nx167, nx177, nx187, nx197, nx207, nx217, nx227, nx237, 
         nx247, nx257, nx267, nx277, nx291, nx296, nx301, nx309, nx319, nx323, 
         nx331, nx333, nx335, nx343, nx345, nx347, nx348, nx359, nx361, nx363, 
         nx375, nx379, nx385, nx387, nx391, nx393, nx395, nx399, nx405, nx407, 
         nx413, nx415, nx419, nx424, nx427, nx429, nx431, nx435, nx438, nx441, 
         nx443, nx445, nx450, nx453, nx455, nx457, nx461, nx465, nx467, nx469, 
         nx471, nx475, nx478, nx480, nx483, nx486, nx488, nx490, nx494, nx499, 
         nx501, nx504, nx509, nx511, nx513, nx517, nx520, nx522, nx524, nx527, 
         nx530, nx532, nx534, nx536, nx540, nx543, nx545, nx548, nx551, nx553, 
         nx555, nx559, nx564, nx566, nx569, nx574, nx576, nx578, nx582, nx585, 
         nx587, nx592, nx595, nx597, nx606, nx608, nx610, nx612, nx614, nx616, 
         nx618, nx620, nx622, nx624, nx626, nx628, nx630, nx632, nx634, nx636, 
         nx638, nx640, nx646, nx648, nx650, nx652, nx654, nx656, nx658, nx660, 
         nx662, nx664, nx666, nx668, nx670, nx672, nx674, nx676, nx678, nx680, 
         nx682, nx684;
    wire [5:0] \$dummy ;




    assign o_done = o_readMem ;
    assign o_address[14] = o_address[15] ;
    assign o_address[13] = o_address[15] ;
    assign o_address[12] = o_address[15] ;
    assign o_address[11] = o_address[15] ;
    fake_gnd ix59 (.Y (nx58)) ;
    nand03 ix163 (.Y (o_address[15]), .A0 (nx291), .A1 (nx347), .A2 (nx296)) ;
    dffr reg_t_currentState_7 (.Q (t_currentState_7), .QB (nx291), .D (
         t_nextState_7), .CLK (i_clk), .R (i_rst)) ;
    latch lat_t_nextState_7 (.Q (t_nextState_7), .D (nx62), .CLK (nx612)) ;
    oai21 ix63 (.Y (nx62), .A0 (i_processDone), .A1 (nx291), .B0 (nx296)) ;
    latch lat_t_nextState_4 (.Q (t_nextState_4), .D (nx148), .CLK (nx610)) ;
    nor02_2x ix149 (.Y (nx148), .A0 (i_op), .A1 (nx301)) ;
    nand02 ix302 (.Y (nx301), .A0 (i_int), .A1 (o_ready)) ;
    dffr reg_t_currentState_1 (.Q (o_ready), .QB (\$dummy [0]), .D (
         t_nextState_1), .CLK (i_clk), .R (i_rst)) ;
    latch lat_t_nextState_1 (.Q (t_nextState_1), .D (nx94), .CLK (nx610)) ;
    nand04 ix95 (.Y (nx94), .A0 (nx309), .A1 (nx348), .A2 (nx359), .A3 (nx363)
           ) ;
    nor02_2x ix310 (.Y (nx309), .A0 (t_currentState_0), .A1 (o_readMem)) ;
    dffs_ni reg_t_currentState_0 (.Q (t_currentState_0), .QB (\$dummy [1]), .D (
            nx58), .CLK (i_clk), .S (i_rst)) ;
    dffr reg_t_currentState_8 (.Q (o_readMem), .QB (nx347), .D (t_nextState_8), 
         .CLK (i_clk), .R (i_rst)) ;
    latch lat_t_nextState_8 (.Q (t_nextState_8), .D (nx74), .CLK (nx610)) ;
    nor02_2x ix75 (.Y (nx74), .A0 (nx319), .A1 (nx291)) ;
    inv01 ix320 (.Y (nx319), .A (i_processDone)) ;
    nand02 ix145 (.Y (nx78), .A0 (nx323), .A1 (i_rst)) ;
    nand02 ix324 (.Y (nx323), .A0 (nx132), .A1 (nx138)) ;
    nor03_2x ix133 (.Y (nx132), .A0 (o_loadDecompCNN), .A1 (o_readMem), .A2 (
             o_process)) ;
    dffr reg_t_currentState_3 (.Q (o_loadDecompCNN), .QB (nx335), .D (
         t_nextState_3), .CLK (i_clk), .R (i_rst)) ;
    latch lat_t_nextState_3 (.Q (t_nextState_3), .D (nx112), .CLK (nx610)) ;
    nor02_2x ix113 (.Y (nx112), .A0 (nx301), .A1 (nx331)) ;
    nand02 ix332 (.Y (nx331), .A0 (i_op), .A1 (nx333)) ;
    inv01 ix334 (.Y (nx333), .A (i_dtype)) ;
    dffr reg_t_currentState_4 (.Q (o_process), .QB (nx296), .D (t_nextState_4), 
         .CLK (i_clk), .R (i_rst)) ;
    nor02_2x ix139 (.Y (nx138), .A0 (o_loadDecompImg), .A1 (t_currentState_0)) ;
    dffr reg_t_currentState_2 (.Q (o_loadDecompImg), .QB (nx345), .D (
         t_nextState_2), .CLK (i_clk), .R (i_rst)) ;
    latch lat_t_nextState_2 (.Q (t_nextState_2), .D (nx24), .CLK (nx610)) ;
    nor02_2x ix25 (.Y (nx24), .A0 (nx301), .A1 (nx343)) ;
    nand02 ix344 (.Y (nx343), .A0 (i_op), .A1 (i_dtype)) ;
    nand02 ix350 (.Y (nx348), .A0 (i_decompI), .A1 (nx614)) ;
    latch lat_t_nextState_5 (.Q (t_nextState_5), .D (nx40), .CLK (nx610)) ;
    oai21 ix41 (.Y (nx40), .A0 (i_decompI), .A1 (nx618), .B0 (nx345)) ;
    dffr reg_t_currentState_5 (.Q (t_currentState_5), .QB (\$dummy [2]), .D (
         t_nextState_5), .CLK (i_clk), .R (i_rst)) ;
    nand02 ix360 (.Y (nx359), .A0 (nx361), .A1 (o_ready)) ;
    inv01 ix362 (.Y (nx361), .A (i_int)) ;
    nand02 ix364 (.Y (nx363), .A0 (i_decompC), .A1 (t_currentState_6)) ;
    latch lat_t_nextState_6 (.Q (t_nextState_6), .D (nx4), .CLK (nx610)) ;
    oai21 ix5 (.Y (nx4), .A0 (i_decompC), .A1 (nx622), .B0 (nx335)) ;
    dffr reg_t_currentState_6 (.Q (t_currentState_6), .QB (\$dummy [3]), .D (
         t_nextState_6), .CLK (i_clk), .R (i_rst)) ;
    nand03 ix173 (.Y (o_address[10]), .A0 (nx375), .A1 (nx296), .A2 (nx622)) ;
    nor02_2x ix376 (.Y (nx375), .A0 (t_currentState_7), .A1 (o_readMem)) ;
    nand02 ix189 (.Y (o_address[0]), .A0 (nx379), .A1 (nx634)) ;
    aoi22 ix380 (.Y (nx379), .A0 (nx614), .A1 (imgAddLines_0), .B0 (
          CNNAddLines_0), .B1 (nx606)) ;
    dffs_ni reg_imgAddLines_0 (.Q (imgAddLines_0), .QB (nx387), .D (nx97), .CLK (
            i_clk), .S (i_rst)) ;
    nand02 ix386 (.Y (nx385), .A0 (i_wordI), .A1 (nx614)) ;
    dffs_ni reg_CNNAddLines_0 (.Q (CNNAddLines_0), .QB (nx393), .D (nx86), .CLK (
            i_clk), .S (i_rst)) ;
    nand02 ix392 (.Y (nx391), .A0 (i_wordC), .A1 (t_currentState_6)) ;
    nor03_2x ix396 (.Y (nx395), .A0 (t_currentState_7), .A1 (o_readMem), .A2 (
             o_process)) ;
    nand02 ix221 (.Y (o_address[1]), .A0 (nx399), .A1 (nx634)) ;
    aoi22 ix400 (.Y (nx399), .A0 (nx614), .A1 (imgAddLines_1), .B0 (
          CNNAddLines_1), .B1 (nx606)) ;
    mux21 ix118 (.Y (nx117), .A0 (nx405), .A1 (nx407), .S0 (nx626)) ;
    dffs_ni reg_imgAddLines_1 (.Q (imgAddLines_1), .QB (nx407), .D (nx117), .CLK (
            i_clk), .S (i_rst)) ;
    mux21 ix108 (.Y (nx107), .A0 (nx413), .A1 (nx415), .S0 (nx630)) ;
    dffs_ni reg_CNNAddLines_1 (.Q (CNNAddLines_1), .QB (nx415), .D (nx107), .CLK (
            i_clk), .S (i_rst)) ;
    nand02 ix253 (.Y (o_address[2]), .A0 (nx419), .A1 (nx634)) ;
    aoi22 ix420 (.Y (nx419), .A0 (nx614), .A1 (imgAddLines_2), .B0 (
          CNNAddLines_2), .B1 (nx606)) ;
    dffs_ni reg_imgAddLines_2 (.Q (imgAddLines_2), .QB (nx431), .D (nx137), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix138 (.Y (nx137), .A0 (nx424), .A1 (nx626), .B0 (nx427)) ;
    oai21 ix428 (.Y (nx427), .A0 (nx638), .A1 (nx618), .B0 (imgAddLines_2)) ;
    inv01 ix430 (.Y (nx429), .A (i_wordI)) ;
    dffs_ni reg_CNNAddLines_2 (.Q (CNNAddLines_2), .QB (nx443), .D (nx127), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix128 (.Y (nx127), .A0 (nx435), .A1 (nx630), .B0 (nx438)) ;
    oai21 ix439 (.Y (nx438), .A0 (nx640), .A1 (nx622), .B0 (CNNAddLines_2)) ;
    inv01 ix442 (.Y (nx441), .A (i_wordC)) ;
    nand02 ix285 (.Y (o_address[3]), .A0 (nx445), .A1 (nx634)) ;
    aoi22 ix446 (.Y (nx445), .A0 (nx614), .A1 (imgAddLines_3), .B0 (
          CNNAddLines_3), .B1 (nx606)) ;
    dffs_ni reg_imgAddLines_3 (.Q (imgAddLines_3), .QB (nx457), .D (nx157), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix158 (.Y (nx157), .A0 (nx450), .A1 (nx626), .B0 (nx455)) ;
    nor02_2x ix237 (.Y (nx236), .A0 (nx431), .A1 (nx453)) ;
    nand02 ix454 (.Y (nx453), .A0 (imgAddLines_1), .A1 (imgAddLines_0)) ;
    oai21 ix456 (.Y (nx455), .A0 (nx638), .A1 (nx618), .B0 (imgAddLines_3)) ;
    dffs_ni reg_CNNAddLines_3 (.Q (CNNAddLines_3), .QB (nx469), .D (nx147), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix148 (.Y (nx147), .A0 (nx461), .A1 (nx630), .B0 (nx467)) ;
    nor02_2x ix223 (.Y (nx222), .A0 (nx443), .A1 (nx465)) ;
    nand02 ix466 (.Y (nx465), .A0 (CNNAddLines_1), .A1 (CNNAddLines_0)) ;
    oai21 ix468 (.Y (nx467), .A0 (nx640), .A1 (nx622), .B0 (CNNAddLines_3)) ;
    nand02 ix317 (.Y (o_address[4]), .A0 (nx471), .A1 (nx634)) ;
    aoi22 ix472 (.Y (nx471), .A0 (nx614), .A1 (imgAddLines_4), .B0 (
          CNNAddLines_4), .B1 (nx606)) ;
    dffs_ni reg_imgAddLines_4 (.Q (imgAddLines_4), .QB (nx480), .D (nx177), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix178 (.Y (nx177), .A0 (nx475), .A1 (nx626), .B0 (nx478)) ;
    nor03_2x ix269 (.Y (nx268), .A0 (nx457), .A1 (nx431), .A2 (nx453)) ;
    oai21 ix479 (.Y (nx478), .A0 (nx638), .A1 (nx618), .B0 (imgAddLines_4)) ;
    dffs_ni reg_CNNAddLines_4 (.Q (CNNAddLines_4), .QB (nx488), .D (nx167), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix168 (.Y (nx167), .A0 (nx483), .A1 (nx630), .B0 (nx486)) ;
    nor03_2x ix255 (.Y (nx254), .A0 (nx469), .A1 (nx443), .A2 (nx465)) ;
    oai21 ix487 (.Y (nx486), .A0 (nx640), .A1 (nx622), .B0 (CNNAddLines_4)) ;
    nand02 ix349 (.Y (o_address[5]), .A0 (nx490), .A1 (nx634)) ;
    aoi22 ix491 (.Y (nx490), .A0 (nx616), .A1 (imgAddLines_5), .B0 (
          CNNAddLines_5), .B1 (nx606)) ;
    dffs_ni reg_imgAddLines_5 (.Q (imgAddLines_5), .QB (nx501), .D (nx197), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix198 (.Y (nx197), .A0 (nx494), .A1 (nx626), .B0 (nx499)) ;
    oai21 ix500 (.Y (nx499), .A0 (nx638), .A1 (nx618), .B0 (imgAddLines_5)) ;
    dffs_ni reg_CNNAddLines_5 (.Q (CNNAddLines_5), .QB (nx511), .D (nx187), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix188 (.Y (nx187), .A0 (nx504), .A1 (nx630), .B0 (nx509)) ;
    oai21 ix510 (.Y (nx509), .A0 (nx640), .A1 (nx622), .B0 (CNNAddLines_5)) ;
    nand02 ix381 (.Y (o_address[6]), .A0 (nx513), .A1 (nx634)) ;
    aoi22 ix514 (.Y (nx513), .A0 (nx616), .A1 (imgAddLines_6), .B0 (
          CNNAddLines_6), .B1 (nx606)) ;
    dffs_ni reg_imgAddLines_6 (.Q (imgAddLines_6), .QB (nx524), .D (nx217), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix218 (.Y (nx217), .A0 (nx517), .A1 (nx626), .B0 (nx522)) ;
    nand04 ix521 (.Y (nx520), .A0 (imgAddLines_3), .A1 (imgAddLines_2), .A2 (
           imgAddLines_1), .A3 (imgAddLines_0)) ;
    oai21 ix523 (.Y (nx522), .A0 (nx638), .A1 (nx618), .B0 (imgAddLines_6)) ;
    dffs_ni reg_CNNAddLines_6 (.Q (CNNAddLines_6), .QB (nx534), .D (nx207), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix208 (.Y (nx207), .A0 (nx527), .A1 (nx630), .B0 (nx532)) ;
    nand04 ix531 (.Y (nx530), .A0 (CNNAddLines_3), .A1 (CNNAddLines_2), .A2 (
           CNNAddLines_1), .A3 (CNNAddLines_0)) ;
    oai21 ix533 (.Y (nx532), .A0 (nx640), .A1 (nx622), .B0 (CNNAddLines_6)) ;
    nand02 ix413 (.Y (o_address[7]), .A0 (nx536), .A1 (nx636)) ;
    aoi22 ix537 (.Y (nx536), .A0 (nx616), .A1 (imgAddLines_7), .B0 (
          CNNAddLines_7), .B1 (nx608)) ;
    dffs_ni reg_imgAddLines_7 (.Q (imgAddLines_7), .QB (nx545), .D (nx237), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix238 (.Y (nx237), .A0 (nx540), .A1 (nx628), .B0 (nx543)) ;
    oai21 ix544 (.Y (nx543), .A0 (nx638), .A1 (nx618), .B0 (imgAddLines_7)) ;
    dffs_ni reg_CNNAddLines_7 (.Q (CNNAddLines_7), .QB (nx553), .D (nx227), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix228 (.Y (nx227), .A0 (nx548), .A1 (nx632), .B0 (nx551)) ;
    oai21 ix552 (.Y (nx551), .A0 (nx640), .A1 (nx624), .B0 (CNNAddLines_7)) ;
    nand02 ix445 (.Y (o_address[8]), .A0 (nx555), .A1 (nx636)) ;
    aoi22 ix556 (.Y (nx555), .A0 (nx616), .A1 (imgAddLines_8), .B0 (
          CNNAddLines_8), .B1 (nx608)) ;
    dffs_ni reg_imgAddLines_8 (.Q (imgAddLines_8), .QB (nx566), .D (nx257), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix258 (.Y (nx257), .A0 (nx559), .A1 (nx628), .B0 (nx564)) ;
    oai21 ix565 (.Y (nx564), .A0 (nx429), .A1 (nx620), .B0 (imgAddLines_8)) ;
    dffs_ni reg_CNNAddLines_8 (.Q (CNNAddLines_8), .QB (nx576), .D (nx247), .CLK (
            i_clk), .S (i_rst)) ;
    oai21 ix248 (.Y (nx247), .A0 (nx569), .A1 (nx632), .B0 (nx574)) ;
    oai21 ix575 (.Y (nx574), .A0 (nx441), .A1 (nx624), .B0 (CNNAddLines_8)) ;
    nand02 ix465 (.Y (o_address[9]), .A0 (nx578), .A1 (nx636)) ;
    aoi22 ix579 (.Y (nx578), .A0 (nx616), .A1 (imgAddLines_9), .B0 (
          CNNAddLines_9), .B1 (nx608)) ;
    dffs_ni reg_imgAddLines_9 (.Q (imgAddLines_9), .QB (\$dummy [4]), .D (nx277)
            , .CLK (i_clk), .S (i_rst)) ;
    oai21 ix278 (.Y (nx277), .A0 (nx582), .A1 (nx628), .B0 (nx587)) ;
    xnor2 ix583 (.Y (nx582), .A0 (imgAddLines_9), .A1 (nx428)) ;
    nor03_2x ix429 (.Y (nx428), .A0 (nx566), .A1 (nx545), .A2 (nx585)) ;
    oai21 ix588 (.Y (nx587), .A0 (nx429), .A1 (nx620), .B0 (imgAddLines_9)) ;
    dffs_ni reg_CNNAddLines_9 (.Q (CNNAddLines_9), .QB (\$dummy [5]), .D (nx267)
            , .CLK (i_clk), .S (i_rst)) ;
    oai21 ix268 (.Y (nx267), .A0 (nx592), .A1 (nx632), .B0 (nx597)) ;
    xnor2 ix593 (.Y (nx592), .A0 (CNNAddLines_9), .A1 (nx414)) ;
    nor03_2x ix415 (.Y (nx414), .A0 (nx576), .A1 (nx553), .A2 (nx595)) ;
    oai21 ix598 (.Y (nx597), .A0 (nx441), .A1 (nx624), .B0 (CNNAddLines_9)) ;
    nand02 ix467 (.Y (o_writeMem), .A0 (nx632), .A1 (nx628)) ;
    buf02 ix605 (.Y (nx606), .A (o_address[10])) ;
    buf02 ix607 (.Y (nx608), .A (o_address[10])) ;
    buf02 ix609 (.Y (nx610), .A (nx78)) ;
    buf02 ix611 (.Y (nx612), .A (nx78)) ;
    inv01 ix613 (.Y (nx614), .A (nx620)) ;
    inv01 ix615 (.Y (nx616), .A (nx620)) ;
    inv02 ix617 (.Y (nx618), .A (t_currentState_5)) ;
    inv02 ix619 (.Y (nx620), .A (t_currentState_5)) ;
    inv02 ix621 (.Y (nx622), .A (t_currentState_6)) ;
    inv02 ix623 (.Y (nx624), .A (t_currentState_6)) ;
    buf02 ix625 (.Y (nx626), .A (nx385)) ;
    buf02 ix627 (.Y (nx628), .A (nx385)) ;
    buf02 ix629 (.Y (nx630), .A (nx391)) ;
    buf02 ix631 (.Y (nx632), .A (nx391)) ;
    buf02 ix633 (.Y (nx634), .A (nx395)) ;
    buf02 ix635 (.Y (nx636), .A (nx395)) ;
    inv01 ix637 (.Y (nx638), .A (i_wordI)) ;
    inv01 ix639 (.Y (nx640), .A (i_wordC)) ;
    xnor2 ix98 (.Y (nx97), .A0 (nx387), .A1 (nx646)) ;
    inv01 ix645 (.Y (nx646), .A (nx626)) ;
    xnor2 ix87 (.Y (nx86), .A0 (nx393), .A1 (nx648)) ;
    inv01 ix647 (.Y (nx648), .A (nx630)) ;
    xnor2 ix406 (.Y (nx405), .A0 (nx407), .A1 (nx387)) ;
    xnor2 ix414 (.Y (nx413), .A0 (nx415), .A1 (nx393)) ;
    xnor2 ix425 (.Y (nx424), .A0 (nx431), .A1 (nx650)) ;
    nand02 ix205 (.Y (nx650), .A0 (imgAddLines_1), .A1 (imgAddLines_0)) ;
    xnor2 ix436 (.Y (nx435), .A0 (nx443), .A1 (nx652)) ;
    nand02 ix191 (.Y (nx652), .A0 (CNNAddLines_1), .A1 (CNNAddLines_0)) ;
    xnor2 ix451 (.Y (nx450), .A0 (nx457), .A1 (nx654)) ;
    inv01 ix653 (.Y (nx654), .A (nx236)) ;
    xnor2 ix462 (.Y (nx461), .A0 (nx469), .A1 (nx656)) ;
    inv01 ix655 (.Y (nx656), .A (nx222)) ;
    xnor2 ix476 (.Y (nx475), .A0 (nx480), .A1 (nx658)) ;
    inv01 ix657 (.Y (nx658), .A (nx268)) ;
    xnor2 ix484 (.Y (nx483), .A0 (nx488), .A1 (nx660)) ;
    inv01 ix659 (.Y (nx660), .A (nx254)) ;
    xnor2 ix495 (.Y (nx494), .A0 (nx501), .A1 (nx662)) ;
    nand03 ix301 (.Y (nx662), .A0 (imgAddLines_4), .A1 (imgAddLines_3), .A2 (
           nx664)) ;
    nor03_2x ix498 (.Y (nx664), .A0 (nx431), .A1 (nx407), .A2 (nx387)) ;
    xnor2 ix505 (.Y (nx504), .A0 (nx511), .A1 (nx666)) ;
    nand03 ix287 (.Y (nx666), .A0 (CNNAddLines_4), .A1 (CNNAddLines_3), .A2 (
           nx668)) ;
    nor03_2x ix508 (.Y (nx668), .A0 (nx443), .A1 (nx415), .A2 (nx393)) ;
    xnor2 ix518 (.Y (nx517), .A0 (nx524), .A1 (nx670)) ;
    nand03 ix333 (.Y (nx670), .A0 (imgAddLines_5), .A1 (imgAddLines_4), .A2 (
           nx672)) ;
    inv01 ix671 (.Y (nx672), .A (nx520)) ;
    xnor2 ix528 (.Y (nx527), .A0 (nx534), .A1 (nx674)) ;
    nand03 ix319 (.Y (nx674), .A0 (CNNAddLines_5), .A1 (CNNAddLines_4), .A2 (
           nx676)) ;
    inv01 ix675 (.Y (nx676), .A (nx530)) ;
    xnor2 ix541 (.Y (nx540), .A0 (nx545), .A1 (nx585)) ;
    nand04 ix365 (.Y (nx585), .A0 (imgAddLines_6), .A1 (imgAddLines_5), .A2 (
           imgAddLines_4), .A3 (nx672)) ;
    xnor2 ix549 (.Y (nx548), .A0 (nx553), .A1 (nx595)) ;
    nand04 ix351 (.Y (nx595), .A0 (CNNAddLines_6), .A1 (CNNAddLines_5), .A2 (
           CNNAddLines_4), .A3 (nx676)) ;
    xnor2 ix560 (.Y (nx559), .A0 (nx566), .A1 (nx678)) ;
    nand04 ix397 (.Y (nx678), .A0 (imgAddLines_7), .A1 (imgAddLines_6), .A2 (
           imgAddLines_5), .A3 (nx680)) ;
    nor02_2x ix563 (.Y (nx680), .A0 (nx480), .A1 (nx658)) ;
    xnor2 ix570 (.Y (nx569), .A0 (nx576), .A1 (nx682)) ;
    nand04 ix383 (.Y (nx682), .A0 (CNNAddLines_7), .A1 (CNNAddLines_6), .A2 (
           CNNAddLines_5), .A3 (nx684)) ;
    nor02_2x ix573 (.Y (nx684), .A0 (nx488), .A1 (nx660)) ;
endmodule


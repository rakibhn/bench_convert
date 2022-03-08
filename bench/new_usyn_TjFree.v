/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon Sep 13 03:38:30 2021
/////////////////////////////////////////////////////////////


module uart ( sys_clk, sys_rst_l, uart_XMIT_dataH, xmitH, .xmit_dataH({
        xmit_dataH_7, xmit_dataH_6, xmit_dataH_5, xmit_dataH_4, xmit_dataH_3, 
        xmit_dataH_2, xmit_dataH_1, xmit_dataH_0}), xmit_doneH, uart_REC_dataH, 
    .rec_dataH({rec_dataH_7, rec_dataH_6, rec_dataH_5, rec_dataH_4, 
        rec_dataH_3, rec_dataH_2, rec_dataH_1, rec_dataH_0}), rec_readyH );
  input sys_clk, sys_rst_l, xmitH, xmit_dataH_7, xmit_dataH_6, xmit_dataH_5,
         xmit_dataH_4, xmit_dataH_3, xmit_dataH_2, xmit_dataH_1, xmit_dataH_0,
         uart_REC_dataH;
  output uart_XMIT_dataH, xmit_doneH, rec_dataH_7, rec_dataH_6, rec_dataH_5,
         rec_dataH_4, rec_dataH_3, rec_dataH_2, rec_dataH_1, rec_dataH_0,
         rec_readyH;
  wire   rec_dataH_rec_7, rec_dataH_rec_6, rec_dataH_rec_5, rec_dataH_rec_4,
         iXMIT_n205_new_, n15_new_, n14_new_, n13_new_, n12_new_, 
         n11_new_, n16_new_, n10_new_, iXMIT_n193_new_, iXMIT_n200_new_, 
         rec_dataH_rec_3, rec_dataH_rec_2, rec_dataH_rec_1, rec_dataH_rec_0,
         rec_dataH_temp_7, rec_dataH_temp_6, rec_dataH_temp_5,
         rec_dataH_temp_4, rec_dataH_temp_3, rec_dataH_temp_2,
         rec_dataH_temp_1, rec_dataH_temp_0, iXMIT_n220, iXMIT_n219,
         iXMIT_n218, iXMIT_n217, iXMIT_n216, iXMIT_n215, iXMIT_n214,
         iXMIT_n213, iXMIT_n212, iXMIT_n211, iXMIT_n210, iXMIT_n209,
         iXMIT_n208, iXMIT_n207, iXMIT_n206, iXMIT_n205, iXMIT_n204,
         iXMIT_n203, iXMIT_n201, iXMIT_n200, iXMIT_n199, iXMIT_n198,
         iXMIT_n196, iXMIT_n195, iXMIT_n194, iXMIT_n193, iXMIT_n192,
         iXMIT_n191, iXMIT_n190, iXMIT_n189, iXMIT_n188, iXMIT_n187,
         iXMIT_n186, iXMIT_n184, iXMIT_n183, iXMIT_n181, iXMIT_n180,
         iXMIT_n179, iXMIT_n178, iXMIT_n177, iXMIT_n176, iXMIT_n175,
         iXMIT_n174, iXMIT_n172, iXMIT_n171, iXMIT_n170, iXMIT_n169,
         iXMIT_n168, iXMIT_n167, iXMIT_n166, iXMIT_n165, iXMIT_n164,
         iXMIT_n163, iXMIT_n162, iXMIT_n161, iXMIT_n160, iXMIT_n159,
         iXMIT_n158, iXMIT_n157, iXMIT_n156, iXMIT_n155, iXMIT_n154,
         iXMIT_n153, iXMIT_n152, iXMIT_n151, iXMIT_n150, iXMIT_n149,
         iXMIT_n148, iXMIT_n147, iXMIT_n146, iXMIT_n145, iXMIT_n144,
         iXMIT_n143, iXMIT_n142, iXMIT_n141, iXMIT_n140, iXMIT_n138,
         iXMIT_n137, iXMIT_n136, iXMIT_n135, iXMIT_n134, iXMIT_n133,
         iXMIT_n132, iXMIT_n130, iXMIT_n129, iXMIT_n128, iXMIT_n127,
         iXMIT_n126, iXMIT_n125, iXMIT_n124, iXMIT_n123, iXMIT_n122,
         iXMIT_n121, iXMIT_n120, iXMIT_n119, iXMIT_n118, iXMIT_n117,
         iXMIT_n116, iXMIT_n115, iXMIT_n114, iXMIT_n113, iXMIT_n112,
         iXMIT_n111, iXMIT_n110, iXMIT_n109, iXMIT_n107, iXMIT_n106,
         iXMIT_n105, iXMIT_n104, iXMIT_n102, iXMIT_n101, iXMIT_n100, iXMIT_n99,
         iXMIT_n98, iXMIT_n96, iXMIT_n95, iXMIT_n94, iXMIT_n93, iXMIT_n92,
         iXMIT_n91, iXMIT_n90, iXMIT_n89, iXMIT_n88, iXMIT_n87, iXMIT_n86,
         iXMIT_n84, iXMIT_n83, iXMIT_n82, iXMIT_n81, iXMIT_n79, iXMIT_n78,
         iXMIT_n77, iXMIT_n76, iXMIT_n74, iXMIT_n73, iXMIT_n72, iXMIT_n71,
         iXMIT_n69, iXMIT_n68, iXMIT_n67, iXMIT_n66, iXMIT_n64, iXMIT_n63,
         iXMIT_n62, iXMIT_n61, iXMIT_n58, iXMIT_n57, iXMIT_n56, iXMIT_n55,
         iXMIT_n54, iXMIT_n53, iXMIT_n51, iXMIT_n50, iXMIT_n49, iXMIT_n48,
         iXMIT_n47, iXMIT_n46, iXMIT_n45, iXMIT_n44, iXMIT_n43, iXMIT_n42,
         iXMIT_n41, iXMIT_n40, iXMIT_n39, iXMIT_n38, iXMIT_n37, iXMIT_n36,
         iXMIT_n35, iXMIT_n34, iXMIT_n33, iXMIT_n31, iXMIT_n30, iXMIT_n29,
         iXMIT_n28, iXMIT_n27, iXMIT_n26, iXMIT_n25, iXMIT_n24, iXMIT_n23,
         iXMIT_n22, iXMIT_n21, iXMIT_n20, iXMIT_n19, iXMIT_n18, iXMIT_n17,
         iXMIT_n16, iXMIT_n15, iXMIT_n14, iXMIT_n13, iXMIT_n12, iXMIT_n11,
         iXMIT_n10, iXMIT_n9, iXMIT_n8, iXMIT_n5, iXMIT_n4, iXMIT_n3, iXMIT_n2,
         iXMIT_n1, iXMIT_state_DataSend_0_, iXMIT_xmit_doneInH,
         iXMIT_next_state_2, iXMIT_next_state_1, iXMIT_next_state_0,
         iXMIT_state_2, iXMIT_state_1, iXMIT_state_0, iXMIT_N41, iXMIT_N40,
         iXMIT_N39, iXMIT_N38, iXMIT_xmit_ShiftRegH_0_, iRECEIVER_n99,
         iRECEIVER_n98, iRECEIVER_n97, iRECEIVER_n96, iRECEIVER_n95,
         iRECEIVER_n94, iRECEIVER_n93, iRECEIVER_n92, iRECEIVER_n91,
         iRECEIVER_n90, iRECEIVER_n89, iRECEIVER_n88, iRECEIVER_n87,
         iRECEIVER_n86, iRECEIVER_n85, iRECEIVER_n84, iRECEIVER_n83,
         iRECEIVER_n82, iRECEIVER_n81, iRECEIVER_n80, iRECEIVER_n79,
         iRECEIVER_n78, iRECEIVER_n77, iRECEIVER_n76, iRECEIVER_n75,
         iRECEIVER_n74, iRECEIVER_n73, iRECEIVER_n72, iRECEIVER_n71,
         iRECEIVER_n70, iRECEIVER_n69, iRECEIVER_n68, iRECEIVER_n67,
         iRECEIVER_n66, iRECEIVER_n65, iRECEIVER_n64, iRECEIVER_n63,
         iRECEIVER_n62, iRECEIVER_n61, iRECEIVER_n60, iRECEIVER_n59,
         iRECEIVER_n58, iRECEIVER_n57, iRECEIVER_n56, iRECEIVER_n55,
         iRECEIVER_n54, iRECEIVER_n53, iRECEIVER_n52, iRECEIVER_n51,
         iRECEIVER_n50, iRECEIVER_n49, iRECEIVER_n48, iRECEIVER_n47,
         iRECEIVER_n46, iRECEIVER_n45, iRECEIVER_n44, iRECEIVER_n43,
         iRECEIVER_n42, iRECEIVER_n41, iRECEIVER_n40, iRECEIVER_n39,
         iRECEIVER_n38, iRECEIVER_n37, iRECEIVER_n36, iRECEIVER_n33,
         iRECEIVER_n32, iRECEIVER_n31, iRECEIVER_n30, iRECEIVER_n29,
         iRECEIVER_n28, iRECEIVER_n27, iRECEIVER_n26, iRECEIVER_n25,
         iRECEIVER_n24, iRECEIVER_n23, iRECEIVER_n22, iRECEIVER_n21,
         iRECEIVER_n20, iRECEIVER_n19, iRECEIVER_n18, iRECEIVER_n17,
         iRECEIVER_n16, iRECEIVER_n15, iRECEIVER_n14, iRECEIVER_n13,
         iRECEIVER_n12, iRECEIVER_n11, iRECEIVER_n10, iRECEIVER_n9,
         iRECEIVER_n8, iRECEIVER_n7, iRECEIVER_n6, iRECEIVER_n5, iRECEIVER_n4,
         iRECEIVER_n3, iRECEIVER_n2, iRECEIVER_n1, iRECEIVER_rec_readyInH,
         iRECEIVER_next_state_2, iRECEIVER_next_state_1,
         iRECEIVER_next_state_0, iRECEIVER_state_2, iRECEIVER_state_1,
         iRECEIVER_state_0, iRECEIVER_recd_bitCntrH_3,
         iRECEIVER_recd_bitCntrH_2, iRECEIVER_recd_bitCntrH_1,
         iRECEIVER_recd_bitCntrH_0, iRECEIVER_N19, iRECEIVER_N18,
         iRECEIVER_N17, iRECEIVER_N16, iRECEIVER_bitCell_cntrH_3,
         iRECEIVER_bitCell_cntrH_2, iRECEIVER_bitCell_cntrH_1,
         iRECEIVER_bitCell_cntrH_0, iRECEIVER_rec_datSyncH, iRECEIVER_rec_datH,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34;

DFF_X1 rec_dataH_temp_reg_7_ ( .D(rec_dataH_rec_7), .CK(rec_readyH), .Q(rec_dataH_temp_7) );
DFF_X1 rec_dataH_reg_7_ ( .D(rec_dataH_temp_7), .CK(n30), .Q(rec_dataH_7) );
DFF_X1 rec_dataH_temp_reg_6_ ( .D(rec_dataH_rec_6), .CK(rec_readyH), .Q(rec_dataH_temp_6) );
DFF_X1 rec_dataH_reg_6_ ( .D(rec_dataH_temp_6), .CK(n30), .Q(rec_dataH_6) );
DFF_X1 rec_dataH_temp_reg_5_ ( .D(rec_dataH_rec_5), .CK(rec_readyH), .Q(rec_dataH_temp_5) );
DFF_X1 rec_dataH_reg_5_ ( .D(rec_dataH_temp_5), .CK(n30), .Q(rec_dataH_5) );
DFF_X1 rec_dataH_temp_reg_4_ ( .D(rec_dataH_rec_4), .CK(rec_readyH), .Q(rec_dataH_temp_4) );
DFF_X1 rec_dataH_reg_4_ ( .D(rec_dataH_temp_4), .CK(n30), .Q(rec_dataH_4) );
DFF_X1 rec_dataH_temp_reg_3_ ( .D(rec_dataH_rec_3), .CK(rec_readyH), .Q(rec_dataH_temp_3) );
DFF_X1 rec_dataH_reg_3_ ( .D(rec_dataH_temp_3), .CK(n30), .Q(rec_dataH_3) );
DFF_X1 rec_dataH_temp_reg_2_ ( .D(rec_dataH_rec_2), .CK(rec_readyH), .Q(rec_dataH_temp_2) );
DFF_X1 rec_dataH_reg_2_ ( .D(rec_dataH_temp_2), .CK(n30), .Q(rec_dataH_2) );
DFF_X1 rec_dataH_temp_reg_1_ ( .D(rec_dataH_rec_1), .CK(rec_readyH), .Q(rec_dataH_temp_1) );
DFF_X1 rec_dataH_reg_1_ ( .D(rec_dataH_temp_1), .CK(n30), .Q(rec_dataH_1) );
DFF_X1 rec_dataH_temp_reg_0_ ( .D(rec_dataH_rec_0), .CK(rec_readyH), .Q(rec_dataH_temp_0) );
DFF_X1 rec_dataH_reg_0_ ( .D(rec_dataH_temp_0), .CK(n30), .Q(rec_dataH_0) );
  NAND2_X1 iXMIT_U217 ( .A1(iXMIT_state_0), .A2(n2), .ZN(iXMIT_n20) );
  INV_X1 iXMIT_U216 ( .A(iXMIT_n20), .ZN(iXMIT_n42) );
  NOR2_X1 iXMIT_U215 ( .A1(iXMIT_n193), .A2(iXMIT_n194), .ZN(iXMIT_n192) );
  AND2_X1 iXMIT_U213 ( .A1(iXMIT_n192), .A2(n5), .ZN(iXMIT_n191) );
  NAND2_X1 iXMIT_U212 ( .A1(iXMIT_n203), .A2(iXMIT_n191), .ZN(iXMIT_n121) );
  NAND2_X1 iXMIT_U211 ( .A1(iXMIT_n42), .A2(iXMIT_n121), .ZN(iXMIT_n44) );
  INV_X1 iXMIT_U210 ( .A(iXMIT_n44), .ZN(iXMIT_n189) );
  NAND2_X1 iXMIT_U208 ( .A1(iXMIT_n191), .A2(n3), .ZN(iXMIT_n5) );
  AND2_X1 iXMIT_U207 ( .A1(n1), .A2(iXMIT_n5), .ZN(iXMIT_n190) );
  NAND2_X1 iXMIT_U206 ( .A1(iXMIT_n190), .A2(iXMIT_state_2), .ZN(iXMIT_n40) );
  NOR2_X1 iXMIT_U204 ( .A1(iXMIT_n40), .A2(n6), .ZN(iXMIT_n24) );
  NOR2_X1 iXMIT_U203 ( .A1(iXMIT_n189), .A2(iXMIT_n24), .ZN(iXMIT_n186) );
  NOR2_X1 iXMIT_U202 ( .A1(iXMIT_state_2), .A2(iXMIT_state_0), .ZN(iXMIT_n188)
         );
  NAND2_X1 iXMIT_U201 ( .A1(iXMIT_n188), .A2(iXMIT_state_1), .ZN(iXMIT_n46) );
  INV_X1 iXMIT_U200 ( .A(iXMIT_n46), .ZN(iXMIT_n28) );
  NAND2_X1 iXMIT_U199 ( .A1(iXMIT_n200), .A2(iXMIT_n28), .ZN(iXMIT_n187) );
  NAND2_X1 iXMIT_U198 ( .A1(iXMIT_n186), .A2(iXMIT_n187), .ZN(iXMIT_n177) );
  INV_X1 iXMIT_U197 ( .A(iXMIT_n177), .ZN(iXMIT_n171) );
  NOR2_X1 iXMIT_U196 ( .A1(n3), .A2(iXMIT_n171), .ZN(iXMIT_N38) );
  NOR2_X1 iXMIT_U195 ( .A1(n3), .A2(n5), .ZN(iXMIT_n183) );
  NAND2_X1 iXMIT_U194 ( .A1(n3), .A2(n5), .ZN(iXMIT_n172) );
  NAND2_X1 iXMIT_U193 ( .A1(iXMIT_n172), .A2(iXMIT_n177), .ZN(iXMIT_n184) );
  NOR2_X1 iXMIT_U192 ( .A1(iXMIT_n183), .A2(iXMIT_n184), .ZN(iXMIT_N39) );
  NOR2_X1 iXMIT_U191 ( .A1(n5), .A2(iXMIT_n171), .ZN(iXMIT_n181) );
  NOR2_X1 iXMIT_U190 ( .A1(iXMIT_N38), .A2(iXMIT_n181), .ZN(iXMIT_n175) );
  OR2_X1 iXMIT_U189 ( .A1(iXMIT_n175), .A2(iXMIT_n193), .ZN(iXMIT_n178) );
  NOR2_X1 iXMIT_U188 ( .A1(iXMIT_n171), .A2(iXMIT_n172), .ZN(iXMIT_n180) );
  NAND2_X1 iXMIT_U187 ( .A1(iXMIT_n180), .A2(iXMIT_n193), .ZN(iXMIT_n179) );
  NAND2_X1 iXMIT_U186 ( .A1(iXMIT_n178), .A2(iXMIT_n179), .ZN(iXMIT_N40) );
  NAND2_X1 iXMIT_U185 ( .A1(iXMIT_n193), .A2(iXMIT_n177), .ZN(iXMIT_n176) );
  NAND2_X1 iXMIT_U184 ( .A1(iXMIT_n175), .A2(iXMIT_n176), .ZN(iXMIT_n174) );
  NAND2_X1 iXMIT_U182 ( .A1(iXMIT_n174), .A2(n7), .ZN(iXMIT_n167) );
  NOR2_X1 iXMIT_U181 ( .A1(iXMIT_n172), .A2(n7), .ZN(iXMIT_n169) );
  NOR2_X1 iXMIT_U180 ( .A1(iXMIT_n193), .A2(iXMIT_n171), .ZN(iXMIT_n170) );
  NAND2_X1 iXMIT_U179 ( .A1(iXMIT_n169), .A2(iXMIT_n170), .ZN(iXMIT_n168) );
  NAND2_X1 iXMIT_U178 ( .A1(iXMIT_n167), .A2(iXMIT_n168), .ZN(iXMIT_N41) );
  NAND2_X1 iXMIT_U177 ( .A1(iXMIT_state_DataSend_0_), .A2(iXMIT_n199), .ZN(
        iXMIT_n155) );
  INV_X1 iXMIT_U176 ( .A(iXMIT_n155), .ZN(iXMIT_n166) );
  NAND2_X1 iXMIT_U175 ( .A1(iXMIT_n198), .A2(iXMIT_n166), .ZN(iXMIT_n165) );
  NAND2_X1 iXMIT_U174 ( .A1(iXMIT_n200), .A2(iXMIT_n165), .ZN(iXMIT_n201) );
  NAND2_X1 iXMIT_U172 ( .A1(iXMIT_n198), .A2(iXMIT_n155), .ZN(iXMIT_n132) );
  NOR2_X1 iXMIT_U171 ( .A1(n8), .A2(iXMIT_n132), .ZN(iXMIT_n149) );
  NOR2_X1 iXMIT_U170 ( .A1(xmit_dataH_6), .A2(xmit_dataH_2), .ZN(iXMIT_n164)
         );
  NAND2_X1 iXMIT_U169 ( .A1(iXMIT_n164), .A2(xmit_dataH_4), .ZN(iXMIT_n160) );
  NOR2_X1 iXMIT_U168 ( .A1(xmit_dataH_3), .A2(xmit_dataH_1), .ZN(iXMIT_n162)
         );
  NOR2_X1 iXMIT_U167 ( .A1(xmit_dataH_7), .A2(xmit_dataH_5), .ZN(iXMIT_n163)
         );
  NAND2_X1 iXMIT_U166 ( .A1(iXMIT_n162), .A2(iXMIT_n163), .ZN(iXMIT_n148) );
  INV_X1 iXMIT_U165 ( .A(iXMIT_n148), .ZN(iXMIT_n128) );
  NAND2_X1 iXMIT_U164 ( .A1(iXMIT_n128), .A2(xmit_dataH_0), .ZN(iXMIT_n161) );
  NOR2_X1 iXMIT_U163 ( .A1(iXMIT_n160), .A2(iXMIT_n161), .ZN(iXMIT_n159) );
  NOR2_X1 iXMIT_U162 ( .A1(iXMIT_n159), .A2(iXMIT_n155), .ZN(iXMIT_n158) );
  NAND2_X1 iXMIT_U161 ( .A1(iXMIT_n158), .A2(iXMIT_n198), .ZN(iXMIT_n150) );
  AND2_X1 iXMIT_U160 ( .A1(xmit_dataH_0), .A2(xmit_dataH_6), .ZN(iXMIT_n156)
         );
  AND2_X1 iXMIT_U159 ( .A1(xmit_dataH_4), .A2(xmit_dataH_2), .ZN(iXMIT_n157)
         );
  NAND2_X1 iXMIT_U158 ( .A1(iXMIT_n156), .A2(iXMIT_n157), .ZN(iXMIT_n146) );
  NOR2_X1 iXMIT_U157 ( .A1(iXMIT_n146), .A2(iXMIT_n155), .ZN(iXMIT_n152) );
  AND2_X1 iXMIT_U156 ( .A1(xmit_dataH_3), .A2(xmit_dataH_1), .ZN(iXMIT_n153)
         );
  AND2_X1 iXMIT_U155 ( .A1(xmit_dataH_7), .A2(xmit_dataH_5), .ZN(iXMIT_n154)
         );
  AND2_X1 iXMIT_U154 ( .A1(iXMIT_n153), .A2(iXMIT_n154), .ZN(iXMIT_n138) );
  NAND2_X1 iXMIT_U153 ( .A1(iXMIT_n152), .A2(iXMIT_n138), .ZN(iXMIT_n151) );
  NAND2_X1 iXMIT_U152 ( .A1(iXMIT_n150), .A2(iXMIT_n151), .ZN(iXMIT_n130) );
  NOR2_X1 iXMIT_U151 ( .A1(iXMIT_n149), .A2(iXMIT_n130), .ZN(iXMIT_n134) );
  NOR2_X1 iXMIT_U149 ( .A1(iXMIT_n148), .A2(n9), .ZN(iXMIT_n144) );
  OR2_X1 iXMIT_U148 ( .A1(iXMIT_n198), .A2(iXMIT_state_DataSend_0_), .ZN(
        iXMIT_n147) );
  NOR2_X1 iXMIT_U147 ( .A1(iXMIT_n146), .A2(iXMIT_n147), .ZN(iXMIT_n145) );
  AND2_X1 iXMIT_U146 ( .A1(iXMIT_n144), .A2(iXMIT_n145), .ZN(iXMIT_n124) );
  INV_X1 iXMIT_U145 ( .A(iXMIT_n132), .ZN(iXMIT_n133) );
  OR2_X1 iXMIT_U144 ( .A1(iXMIT_n199), .A2(xmit_dataH_0), .ZN(iXMIT_n143) );
  NOR2_X1 iXMIT_U143 ( .A1(iXMIT_n133), .A2(iXMIT_n143), .ZN(iXMIT_n140) );
  OR2_X1 iXMIT_U142 ( .A1(xmit_dataH_4), .A2(xmit_dataH_6), .ZN(iXMIT_n142) );
  NOR2_X1 iXMIT_U141 ( .A1(xmit_dataH_2), .A2(iXMIT_n142), .ZN(iXMIT_n141) );
  NAND2_X1 iXMIT_U140 ( .A1(iXMIT_n140), .A2(iXMIT_n141), .ZN(iXMIT_n126) );
  NAND2_X1 iXMIT_U139 ( .A1(iXMIT_n138), .A2(n8), .ZN(iXMIT_n137) );
  NOR2_X1 iXMIT_U138 ( .A1(iXMIT_n126), .A2(iXMIT_n137), .ZN(iXMIT_n136) );
  NOR2_X1 iXMIT_U137 ( .A1(iXMIT_n124), .A2(iXMIT_n136), .ZN(iXMIT_n135) );
  NAND2_X1 iXMIT_U136 ( .A1(iXMIT_n134), .A2(iXMIT_n135), .ZN(iXMIT_n220) );
  OR2_X1 iXMIT_U135 ( .A1(iXMIT_n130), .A2(iXMIT_n133), .ZN(iXMIT_n219) );
  NOR2_X1 iXMIT_U134 ( .A1(n9), .A2(iXMIT_n132), .ZN(iXMIT_n129) );
  NOR2_X1 iXMIT_U133 ( .A1(iXMIT_n129), .A2(iXMIT_n130), .ZN(iXMIT_n122) );
  NAND2_X1 iXMIT_U132 ( .A1(iXMIT_state_DataSend_0_), .A2(iXMIT_n128), .ZN(
        iXMIT_n127) );
  NOR2_X1 iXMIT_U131 ( .A1(iXMIT_n126), .A2(iXMIT_n127), .ZN(iXMIT_n125) );
  NOR2_X1 iXMIT_U130 ( .A1(iXMIT_n124), .A2(iXMIT_n125), .ZN(iXMIT_n123) );
  NAND2_X1 iXMIT_U129 ( .A1(iXMIT_n122), .A2(iXMIT_n123), .ZN(iXMIT_n218) );
  NOR2_X1 iXMIT_U128 ( .A1(iXMIT_n121), .A2(iXMIT_n20), .ZN(iXMIT_n25) );
  NOR2_X1 iXMIT_U125 ( .A1(n17), .A2(n4), .ZN(iXMIT_n119) );
  AND2_X1 iXMIT_U123 ( .A1(n18), .A2(iXMIT_n205), .ZN(iXMIT_n120) );
  AND2_X1 iXMIT_U122 ( .A1(iXMIT_n119), .A2(iXMIT_n120), .ZN(iXMIT_n41) );
  NOR2_X1 iXMIT_U121 ( .A1(xmitH), .A2(iXMIT_state_2), .ZN(iXMIT_n118) );
  NAND2_X1 iXMIT_U120 ( .A1(iXMIT_n118), .A2(n1), .ZN(iXMIT_n1) );
  INV_X1 iXMIT_U119 ( .A(iXMIT_n1), .ZN(iXMIT_n116) );
  NOR2_X1 iXMIT_U118 ( .A1(iXMIT_n41), .A2(iXMIT_n116), .ZN(iXMIT_n117) );
  NAND2_X1 iXMIT_U117 ( .A1(iXMIT_n25), .A2(iXMIT_n117), .ZN(iXMIT_n107) );
  INV_X1 iXMIT_U116 ( .A(iXMIT_n107), .ZN(iXMIT_n100) );
  NAND2_X1 iXMIT_U115 ( .A1(iXMIT_n100), .A2(iXMIT_n205), .ZN(iXMIT_n113) );
  INV_X1 U115( .A(iXMIT_n199), .ZN(n9) );
  INV_X1 U116( .A(n18), .ZN(iXMIT_n196) );
  INV_X1 U117( .A(n17), .ZN(iXMIT_n204) );
  INV_X1 U118( .A(n4), .ZN(iXMIT_n195) );
  INV_X1 U119( .A(iXMIT_n205_new_), .ZN(iXMIT_n205) );
  INV_X1 U120( .A(iXMIT_xmit_ShiftRegH_0_), .ZN(n19) );
  INV_X1 U121( .A(n15_new_), .ZN(n15) );
  INV_X1 U122( .A(n14_new_), .ZN(n14) );
  INV_X1 U123( .A(n13_new_), .ZN(n13) );
  INV_X1 U124( .A(n12_new_), .ZN(n12) );
  INV_X1 U125( .A(n11_new_), .ZN(n11) );
  INV_X1 U126( .A(n16_new_), .ZN(n16) );
  INV_X1 U127( .A(n10_new_), .ZN(n10) );
  INV_X1 U128( .A(iXMIT_state_2), .ZN(n2) );
  INV_X1 U129( .A(iXMIT_state_1), .ZN(n1) );
  INV_X1 U130( .A(iXMIT_state_0), .ZN(n6) );
  INV_X1 U131( .A(n7), .ZN(iXMIT_n194) );
  INV_X1 U132( .A(iXMIT_n193_new_), .ZN(iXMIT_n193) );
  INV_X1 U133( .A(n3), .ZN(iXMIT_n203) );
  INV_X1 U134( .A(iXMIT_n200_new_), .ZN(iXMIT_n200) );
  INV_X1 U135( .A(iXMIT_state_DataSend_0_), .ZN(n8) );
  INV_X1 U136( .A(iRECEIVER_recd_bitCntrH_2), .ZN(iRECEIVER_n4) );
  INV_X1 U137( .A(iRECEIVER_recd_bitCntrH_0), .ZN(iRECEIVER_n5) );
  INV_X1 U138( .A(iRECEIVER_state_2), .ZN(iRECEIVER_n6) );
  INV_X1 U139( .A(iRECEIVER_state_1), .ZN(iRECEIVER_n9) );
  INV_X1 U140( .A(iRECEIVER_bitCell_cntrH_2), .ZN(iRECEIVER_n2) );
  INV_X1 U141( .A(iRECEIVER_bitCell_cntrH_1), .ZN(iRECEIVER_n3) );
  INV_X1 U142( .A(iRECEIVER_state_0), .ZN(iRECEIVER_n10) );
  INV_X1 U143( .A(iRECEIVER_rec_datH), .ZN(iRECEIVER_n1) );
  NOR2_X1 iXMIT_U114 ( .A1(iXMIT_n205), .A2(iXMIT_n116), .ZN(iXMIT_n115) );
  NAND2_X1 iXMIT_U113 ( .A1(iXMIT_n115), .A2(iXMIT_n107), .ZN(iXMIT_n114) );
  NAND2_X1 iXMIT_U112 ( .A1(iXMIT_n113), .A2(iXMIT_n114), .ZN(iXMIT_n217) );
  NAND2_X1 iXMIT_U111 ( .A1(iXMIT_n107), .A2(iXMIT_n1), .ZN(iXMIT_n112) );
  NAND2_X1 iXMIT_U110 ( .A1(iXMIT_n112), .A2(iXMIT_n113), .ZN(iXMIT_n105) );
  NAND2_X1 iXMIT_U109 ( .A1(iXMIT_n105), .A2(n4), .ZN(iXMIT_n109) );
  NOR2_X1 iXMIT_U108 ( .A1(iXMIT_n205), .A2(n4), .ZN(iXMIT_n111) );
  NAND2_X1 iXMIT_U107 ( .A1(iXMIT_n111), .A2(iXMIT_n100), .ZN(iXMIT_n110) );
  NAND2_X1 iXMIT_U106 ( .A1(iXMIT_n109), .A2(iXMIT_n110), .ZN(iXMIT_n216) );
  NOR2_X1 iXMIT_U105 ( .A1(iXMIT_n107), .A2(n4), .ZN(iXMIT_n106) );
  NOR2_X1 iXMIT_U104 ( .A1(iXMIT_n105), .A2(iXMIT_n106), .ZN(iXMIT_n98) );
  OR2_X1 iXMIT_U103 ( .A1(iXMIT_n98), .A2(iXMIT_n204), .ZN(iXMIT_n101) );
  NOR2_X1 iXMIT_U102 ( .A1(iXMIT_n195), .A2(iXMIT_n205), .ZN(iXMIT_n104) );
  NAND2_X1 iXMIT_U101 ( .A1(iXMIT_n104), .A2(iXMIT_n100), .ZN(iXMIT_n95) );
  OR2_X1 iXMIT_U100 ( .A1(iXMIT_n95), .A2(n17), .ZN(iXMIT_n102) );
  NAND2_X1 iXMIT_U99 ( .A1(iXMIT_n101), .A2(iXMIT_n102), .ZN(iXMIT_n215) );
  NAND2_X1 iXMIT_U98 ( .A1(iXMIT_n100), .A2(iXMIT_n204), .ZN(iXMIT_n99) );
  NAND2_X1 iXMIT_U97 ( .A1(iXMIT_n98), .A2(iXMIT_n99), .ZN(iXMIT_n96) );
  NAND2_X1 iXMIT_U96 ( .A1(iXMIT_n96), .A2(n18), .ZN(iXMIT_n92) );
  NOR2_X1 iXMIT_U95 ( .A1(iXMIT_n204), .A2(iXMIT_n95), .ZN(iXMIT_n94) );
  NAND2_X1 iXMIT_U94 ( .A1(iXMIT_n94), .A2(iXMIT_n196), .ZN(iXMIT_n93) );
  NAND2_X1 iXMIT_U93 ( .A1(iXMIT_n92), .A2(iXMIT_n93), .ZN(iXMIT_n214) );
  NOR2_X1 iXMIT_U91 ( .A1(iXMIT_state_2), .A2(iXMIT_state_1), .ZN(iXMIT_n91)
         );
  NAND2_X1 iXMIT_U90 ( .A1(iXMIT_n91), .A2(xmitH), .ZN(iXMIT_n90) );
  INV_X1 iXMIT_U89 ( .A(iXMIT_n90), .ZN(iXMIT_n56) );
  NOR2_X1 iXMIT_U88 ( .A1(n2), .A2(iXMIT_state_0), .ZN(iXMIT_n17) );
  OR2_X1 iXMIT_U87 ( .A1(iXMIT_n56), .A2(iXMIT_n17), .ZN(iXMIT_n49) );
  NAND2_X1 iXMIT_U86 ( .A1(iXMIT_n90), .A2(iXMIT_n49), .ZN(iXMIT_n53) );
  NOR2_X1 iXMIT_U85 ( .A1(n10), .A2(iXMIT_n53), .ZN(iXMIT_n88) );
  NOR2_X1 iXMIT_U83 ( .A1(iXMIT_n49), .A2(n16), .ZN(iXMIT_n89) );
  NOR2_X1 iXMIT_U82 ( .A1(iXMIT_n88), .A2(iXMIT_n89), .ZN(iXMIT_n86) );
  NAND2_X1 iXMIT_U81 ( .A1(xmit_dataH_6), .A2(iXMIT_n56), .ZN(iXMIT_n87) );
  NAND2_X1 iXMIT_U80 ( .A1(iXMIT_n86), .A2(iXMIT_n87), .ZN(iXMIT_n213) );
  NOR2_X1 iXMIT_U78 ( .A1(iXMIT_n53), .A2(n15), .ZN(iXMIT_n83) );
  NOR2_X1 iXMIT_U76 ( .A1(n19), .A2(iXMIT_n49), .ZN(iXMIT_n84) );
  NOR2_X1 iXMIT_U75 ( .A1(iXMIT_n83), .A2(iXMIT_n84), .ZN(iXMIT_n81) );
  NAND2_X1 iXMIT_U74 ( .A1(xmit_dataH_0), .A2(iXMIT_n56), .ZN(iXMIT_n82) );
  NAND2_X1 iXMIT_U73 ( .A1(iXMIT_n81), .A2(iXMIT_n82), .ZN(iXMIT_n212) );
  NOR2_X1 iXMIT_U71 ( .A1(iXMIT_n53), .A2(n14), .ZN(iXMIT_n78) );
  NOR2_X1 iXMIT_U70 ( .A1(iXMIT_n49), .A2(n15), .ZN(iXMIT_n79) );
  NOR2_X1 iXMIT_U69 ( .A1(iXMIT_n78), .A2(iXMIT_n79), .ZN(iXMIT_n76) );
  NAND2_X1 iXMIT_U68 ( .A1(xmit_dataH_1), .A2(iXMIT_n56), .ZN(iXMIT_n77) );
  NAND2_X1 iXMIT_U67 ( .A1(iXMIT_n76), .A2(iXMIT_n77), .ZN(iXMIT_n211) );
  NOR2_X1 iXMIT_U65 ( .A1(iXMIT_n53), .A2(n13), .ZN(iXMIT_n73) );
  NOR2_X1 iXMIT_U64 ( .A1(iXMIT_n49), .A2(n14), .ZN(iXMIT_n74) );
  NOR2_X1 iXMIT_U63 ( .A1(iXMIT_n73), .A2(iXMIT_n74), .ZN(iXMIT_n71) );
  NAND2_X1 iXMIT_U62 ( .A1(xmit_dataH_2), .A2(iXMIT_n56), .ZN(iXMIT_n72) );
  NAND2_X1 iXMIT_U61 ( .A1(iXMIT_n71), .A2(iXMIT_n72), .ZN(iXMIT_n210) );
  NOR2_X1 iXMIT_U59 ( .A1(iXMIT_n53), .A2(n12), .ZN(iXMIT_n68) );
  NOR2_X1 iXMIT_U58 ( .A1(iXMIT_n49), .A2(n13), .ZN(iXMIT_n69) );
  NOR2_X1 iXMIT_U57 ( .A1(iXMIT_n68), .A2(iXMIT_n69), .ZN(iXMIT_n66) );
  NAND2_X1 iXMIT_U56 ( .A1(xmit_dataH_3), .A2(iXMIT_n56), .ZN(iXMIT_n67) );
  NAND2_X1 iXMIT_U55 ( .A1(iXMIT_n66), .A2(iXMIT_n67), .ZN(iXMIT_n209) );
  NOR2_X1 iXMIT_U53 ( .A1(iXMIT_n53), .A2(n11), .ZN(iXMIT_n63) );
  NOR2_X1 iXMIT_U52 ( .A1(iXMIT_n49), .A2(n12), .ZN(iXMIT_n64) );
  NOR2_X1 iXMIT_U51 ( .A1(iXMIT_n63), .A2(iXMIT_n64), .ZN(iXMIT_n61) );
  NAND2_X1 iXMIT_U50 ( .A1(xmit_dataH_4), .A2(iXMIT_n56), .ZN(iXMIT_n62) );
  NAND2_X1 iXMIT_U49 ( .A1(iXMIT_n61), .A2(iXMIT_n62), .ZN(iXMIT_n208) );
  NOR2_X1 iXMIT_U48 ( .A1(iXMIT_n53), .A2(n16), .ZN(iXMIT_n57) );
  NOR2_X1 iXMIT_U47 ( .A1(iXMIT_n49), .A2(n11), .ZN(iXMIT_n58) );
  NOR2_X1 iXMIT_U46 ( .A1(iXMIT_n57), .A2(iXMIT_n58), .ZN(iXMIT_n54) );
  NAND2_X1 iXMIT_U45 ( .A1(xmit_dataH_5), .A2(iXMIT_n56), .ZN(iXMIT_n55) );
  NAND2_X1 iXMIT_U44 ( .A1(iXMIT_n54), .A2(iXMIT_n55), .ZN(iXMIT_n207) );
  INV_X1 iXMIT_U43 ( .A(iXMIT_n53), .ZN(iXMIT_n50) );
  NOR2_X1 iXMIT_U42 ( .A1(iXMIT_n49), .A2(n10), .ZN(iXMIT_n51) );
  NOR2_X1 iXMIT_U41 ( .A1(iXMIT_n50), .A2(iXMIT_n51), .ZN(iXMIT_n47) );
  NAND2_X1 iXMIT_U40 ( .A1(xmit_dataH_7), .A2(iXMIT_n49), .ZN(iXMIT_n48) );
  NAND2_X1 iXMIT_U39 ( .A1(iXMIT_n47), .A2(iXMIT_n48), .ZN(iXMIT_n206) );
  NOR2_X1 iXMIT_U38 ( .A1(iXMIT_n5), .A2(iXMIT_n46), .ZN(iXMIT_n43) );
  NAND2_X1 iXMIT_U37 ( .A1(iXMIT_n17), .A2(n1), .ZN(iXMIT_n45) );
  NAND2_X1 iXMIT_U36 ( .A1(iXMIT_n44), .A2(iXMIT_n45), .ZN(iXMIT_n34) );
  NOR2_X1 iXMIT_U35 ( .A1(iXMIT_n43), .A2(iXMIT_n34), .ZN(iXMIT_n35) );
  NOR2_X1 iXMIT_U34 ( .A1(n1), .A2(iXMIT_n200), .ZN(iXMIT_n21) );
  INV_X1 iXMIT_U33 ( .A(iXMIT_n21), .ZN(iXMIT_n18) );
  NOR2_X1 iXMIT_U32 ( .A1(iXMIT_n42), .A2(iXMIT_n18), .ZN(iXMIT_n37) );
  NAND2_X1 iXMIT_U31 ( .A1(iXMIT_n41), .A2(iXMIT_n42), .ZN(iXMIT_n39) );
  NAND2_X1 iXMIT_U30 ( .A1(iXMIT_n39), .A2(iXMIT_n40), .ZN(iXMIT_n38) );
  NOR2_X1 iXMIT_U29 ( .A1(iXMIT_n37), .A2(iXMIT_n38), .ZN(iXMIT_n36) );
  NAND2_X1 iXMIT_U28 ( .A1(iXMIT_n35), .A2(iXMIT_n36), .ZN(iXMIT_next_state_0)
         );
  NOR2_X1 iXMIT_U27 ( .A1(n2), .A2(iXMIT_n18), .ZN(iXMIT_n33) );
  NOR2_X1 iXMIT_U26 ( .A1(iXMIT_n33), .A2(iXMIT_n34), .ZN(iXMIT_n26) );
  INV_X1 iXMIT_U25 ( .A(xmitH), .ZN(iXMIT_n30) );
  NAND2_X1 iXMIT_U24 ( .A1(n6), .A2(n1), .ZN(iXMIT_n31) );
  NOR2_X1 iXMIT_U23 ( .A1(iXMIT_n30), .A2(iXMIT_n31), .ZN(iXMIT_n29) );
  NOR2_X1 iXMIT_U22 ( .A1(iXMIT_n28), .A2(iXMIT_n29), .ZN(iXMIT_n27) );
  NAND2_X1 iXMIT_U21 ( .A1(iXMIT_n26), .A2(iXMIT_n27), .ZN(iXMIT_next_state_1)
         );
  NOR2_X1 iXMIT_U20 ( .A1(iXMIT_n24), .A2(iXMIT_n25), .ZN(iXMIT_n22) );
  NAND2_X1 iXMIT_U19 ( .A1(iXMIT_n21), .A2(iXMIT_n20), .ZN(iXMIT_n23) );
  NAND2_X1 iXMIT_U18 ( .A1(iXMIT_n22), .A2(iXMIT_n23), .ZN(iXMIT_next_state_2)
         );
  NOR2_X1 iXMIT_U17 ( .A1(iXMIT_n21), .A2(iXMIT_n17), .ZN(iXMIT_n19) );
  AND2_X1 iXMIT_U16 ( .A1(iXMIT_n19), .A2(iXMIT_n20), .ZN(iXMIT_n11) );
  NOR2_X1 iXMIT_U15 ( .A1(iXMIT_state_0), .A2(iXMIT_n18), .ZN(iXMIT_n15) );
  NOR2_X1 iXMIT_U14 ( .A1(iXMIT_state_1), .A2(iXMIT_n17), .ZN(iXMIT_n16) );
  NOR2_X1 iXMIT_U13 ( .A1(iXMIT_n15), .A2(iXMIT_n16), .ZN(iXMIT_n13) );
  NAND2_X1 iXMIT_U12 ( .A1(iXMIT_state_1), .A2(iXMIT_state_2), .ZN(iXMIT_n14)
         );
  NAND2_X1 iXMIT_U11 ( .A1(iXMIT_n13), .A2(iXMIT_n14), .ZN(iXMIT_n12) );
  NAND2_X1 iXMIT_U10 ( .A1(iXMIT_n11), .A2(iXMIT_n12), .ZN(iXMIT_n8) );
  NOR2_X1 iXMIT_U9 ( .A1(iXMIT_n11), .A2(iXMIT_n12), .ZN(iXMIT_n10) );
  NAND2_X1 iXMIT_U8 ( .A1(iXMIT_n10), .A2(iXMIT_xmit_ShiftRegH_0_), .ZN(
        iXMIT_n9) );
  NAND2_X1 iXMIT_U7 ( .A1(iXMIT_n8), .A2(iXMIT_n9), .ZN(uart_XMIT_dataH) );
  NOR2_X1 iXMIT_U6 ( .A1(n6), .A2(n2), .ZN(iXMIT_n3) );
  NOR2_X1 iXMIT_U5 ( .A1(iXMIT_state_1), .A2(iXMIT_n5), .ZN(iXMIT_n4) );
  NAND2_X1 iXMIT_U4 ( .A1(iXMIT_n3), .A2(iXMIT_n4), .ZN(iXMIT_n2) );
  NAND2_X1 iXMIT_U3 ( .A1(iXMIT_n1), .A2(iXMIT_n2), .ZN(iXMIT_xmit_doneInH) );
DFF_X1 iXMIT_xmit_doneH_reg ( .D(iXMIT_xmit_doneInH), .CK(n30), .Q(xmit_doneH) );
  DFF_X1 iXMIT_state_DataSend_reg_1_ ( .D(iXMIT_n218), .CK(xmitH), .Q(iXMIT_n199) );
DFF_X1 iXMIT_state_DataSend_reg_2_ ( .D(iXMIT_n219), .CK(xmitH), .Q(iXMIT_n198) );
  DFF_X1 iXMIT_bitCountH_reg_3_ ( .D(iXMIT_n214), .CK(n30), .Q(n18) );
  DFF_X1 iXMIT_bitCountH_reg_2_ ( .D(iXMIT_n215), .CK(n30), .Q(n17) );
  DFF_X1 iXMIT_bitCountH_reg_1_ ( .D(iXMIT_n216), .CK(n31), .Q(n4) );
  DFF_X1 iXMIT_bitCountH_reg_0_ ( .D(iXMIT_n217), .CK(n31), .Q(iXMIT_n205_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_0_ ( .D(iXMIT_n212), .CK(n31), .Q(iXMIT_xmit_ShiftRegH_0_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_1_ ( .D(iXMIT_n211), .CK(n31), .Q(n15_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_2_ ( .D(iXMIT_n210), .CK(n31), .Q(n14_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_3_ ( .D(iXMIT_n209), .CK(n31), .Q(n13_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_4_ ( .D(iXMIT_n208), .CK(n31), .Q(n12_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_5_ ( .D(iXMIT_n207), .CK(n31), .Q(n11_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_6_ ( .D(iXMIT_n213), .CK(n31), .Q(n16_new_) );
  DFF_X1 iXMIT_xmit_ShiftRegH_reg_7_ ( .D(iXMIT_n206), .CK(n31), .Q(n10_new_) );
  DFF_X1 iXMIT_state_reg_2_ ( .D(iXMIT_next_state_2), .CK(n31), .Q(iXMIT_state_2) );
  DFF_X1 iXMIT_state_reg_1_ ( .D(iXMIT_next_state_1), .CK(n32), .Q(iXMIT_state_1) );
  DFF_X1 iXMIT_state_reg_0_ ( .D(iXMIT_next_state_0), .CK(n32), .Q(iXMIT_state_0) );
  DFF_X1 iXMIT_bitCell_cntrH_reg_3_ ( .D(iXMIT_N41), .CK(n32), .Q(n7) );
  DFF_X1 iXMIT_bitCell_cntrH_reg_2_ ( .D(iXMIT_N40), .CK(n32), .Q(iXMIT_n193_new_) );
DFF_X1 iXMIT_bitCell_cntrH_reg_1_ ( .D(iXMIT_N39), .CK(n32), .Q(n5) );
  DFF_X1 iXMIT_bitCell_cntrH_reg_0_ ( .D(iXMIT_N38), .CK(n32), .Q(n3) );
  DFF_X1 iXMIT_DataSend_ena_reg ( .D(iXMIT_n201), .CK(n32), .Q(iXMIT_n200_new_) );
  DFF_X1 iXMIT_state_DataSend_reg_0_ ( .D(iXMIT_n220), .CK(xmitH), .Q(iXMIT_state_DataSend_0_) );
DFF_X1 iRECEIVER_rec_readyH_reg ( .D(iRECEIVER_rec_readyInH), .CK(n32), .Q(rec_readyH) );
DFF_X1 iRECEIVER_recd_bitCntrH_reg_3_ ( .D(iRECEIVER_n91), .CK(n32), .Q(iRECEIVER_recd_bitCntrH_3) );
  DFF_X1 iRECEIVER_recd_bitCntrH_reg_2_ ( .D(iRECEIVER_n88), .CK(n32), .Q(iRECEIVER_recd_bitCntrH_2) );
DFF_X1 iRECEIVER_recd_bitCntrH_reg_1_ ( .D(iRECEIVER_n89), .CK(n32), .Q(iRECEIVER_recd_bitCntrH_1) );
  DFF_X1 iRECEIVER_recd_bitCntrH_reg_0_ ( .D(iRECEIVER_n90), .CK(n33), .Q(iRECEIVER_recd_bitCntrH_0) );
DFF_X1 iRECEIVER_par_dataH_reg_0_ ( .D(iRECEIVER_n92), .CK(n33), .Q(rec_dataH_rec_0) );
DFF_X1 iRECEIVER_par_dataH_reg_1_ ( .D(iRECEIVER_n93), .CK(n33), .Q(rec_dataH_rec_1) );
DFF_X1 iRECEIVER_par_dataH_reg_2_ ( .D(iRECEIVER_n94), .CK(n33), .Q(rec_dataH_rec_2) );
DFF_X1 iRECEIVER_par_dataH_reg_3_ ( .D(iRECEIVER_n95), .CK(n33), .Q(rec_dataH_rec_3) );
DFF_X1 iRECEIVER_par_dataH_reg_4_ ( .D(iRECEIVER_n96), .CK(n33), .Q(rec_dataH_rec_4) );
DFF_X1 iRECEIVER_par_dataH_reg_5_ ( .D(iRECEIVER_n97), .CK(n33), .Q(rec_dataH_rec_5) );
DFF_X1 iRECEIVER_par_dataH_reg_6_ ( .D(iRECEIVER_n98), .CK(n33), .Q(rec_dataH_rec_6) );
DFF_X1 iRECEIVER_par_dataH_reg_7_ ( .D(iRECEIVER_n99), .CK(n33), .Q(rec_dataH_rec_7) );
  DFF_X1 iRECEIVER_state_reg_2_ ( .D(iRECEIVER_next_state_2), .CK(n33), .Q(iRECEIVER_state_2) );
  DFF_X1 iRECEIVER_state_reg_1_ ( .D(iRECEIVER_next_state_1), .CK(n33), .Q(iRECEIVER_state_1) );
DFF_X1 iRECEIVER_bitCell_cntrH_reg_3_ ( .D(iRECEIVER_N19), .CK(n34), .Q(iRECEIVER_bitCell_cntrH_3) );
  DFF_X1 iRECEIVER_bitCell_cntrH_reg_2_ ( .D(iRECEIVER_N18), .CK(n34), .Q(iRECEIVER_bitCell_cntrH_2) );
  DFF_X1 iRECEIVER_bitCell_cntrH_reg_1_ ( .D(iRECEIVER_N17), .CK(n34), .Q(iRECEIVER_bitCell_cntrH_1) );
DFF_X1 iRECEIVER_bitCell_cntrH_reg_0_ ( .D(iRECEIVER_N16), .CK(n34), .Q(iRECEIVER_bitCell_cntrH_0) );
  DFF_X1 iRECEIVER_state_reg_0_ ( .D(iRECEIVER_next_state_0), .CK(n34), .Q(iRECEIVER_state_0) );
  DFF_X1 iRECEIVER_rec_datH_reg ( .D(iRECEIVER_rec_datSyncH), .CK(n34), .Q(iRECEIVER_rec_datH) );
DFF_X1 iRECEIVER_rec_datSyncH_reg ( .D(uart_REC_dataH), .CK(n34), .Q(iRECEIVER_rec_datSyncH) );
  INV_X1 U3 ( .A(iRECEIVER_n17), .ZN(iRECEIVER_n7) );
  NAND2_X1 U4 ( .A1(iRECEIVER_n17), .A2(iRECEIVER_n12), .ZN(iRECEIVER_n44) );
  NAND2_X1 U5 ( .A1(iRECEIVER_n44), .A2(iRECEIVER_n42), .ZN(iRECEIVER_n41) );
  NOR2_X1 U6 ( .A1(iRECEIVER_n41), .A2(iRECEIVER_n40), .ZN(iRECEIVER_n37) );
  NAND2_X1 U7 ( .A1(iRECEIVER_n8), .A2(iRECEIVER_n13), .ZN(iRECEIVER_n18) );
  INV_X1 U8 ( .A(iRECEIVER_n14), .ZN(iRECEIVER_n8) );
  NOR2_X1 U9 ( .A1(iRECEIVER_n13), .A2(iRECEIVER_n14), .ZN(
        iRECEIVER_next_state_2) );
  NAND2_X1 U10 ( .A1(iRECEIVER_state_2), .A2(iRECEIVER_n10), .ZN(iRECEIVER_n17) );
  NAND2_X1 U11 ( .A1(iRECEIVER_n80), .A2(iRECEIVER_n81), .ZN(iRECEIVER_n74) );
  NOR2_X1 U12 ( .A1(iRECEIVER_n85), .A2(iRECEIVER_n9), .ZN(iRECEIVER_n80) );
  NOR2_X1 U13 ( .A1(iRECEIVER_state_2), .A2(iRECEIVER_n82), .ZN(iRECEIVER_n81)
         );
  NOR2_X1 U14 ( .A1(iRECEIVER_state_0), .A2(iRECEIVER_n24), .ZN(iRECEIVER_n85)
         );
  NAND2_X1 U15 ( .A1(iRECEIVER_n83), .A2(iRECEIVER_n84), .ZN(iRECEIVER_n13) );
  AND2_X1 U16 ( .A1(iRECEIVER_bitCell_cntrH_2), .A2(iRECEIVER_bitCell_cntrH_3), 
        .ZN(iRECEIVER_n83) );
  NOR2_X1 U17 ( .A1(iRECEIVER_bitCell_cntrH_0), .A2(iRECEIVER_n3), .ZN(
        iRECEIVER_n84) );
  NAND2_X1 U18 ( .A1(iRECEIVER_n86), .A2(iRECEIVER_n87), .ZN(iRECEIVER_n24) );
  NOR2_X1 U19 ( .A1(iRECEIVER_bitCell_cntrH_3), .A2(iRECEIVER_bitCell_cntrH_1), 
        .ZN(iRECEIVER_n87) );
  NOR2_X1 U20 ( .A1(iRECEIVER_bitCell_cntrH_0), .A2(iRECEIVER_n2), .ZN(
        iRECEIVER_n86) );
  NOR2_X1 U21 ( .A1(iRECEIVER_recd_bitCntrH_1), .A2(iRECEIVER_n17), .ZN(
        iRECEIVER_n40) );
  NAND2_X1 U22 ( .A1(iRECEIVER_state_1), .A2(iRECEIVER_state_0), .ZN(
        iRECEIVER_n14) );
  NOR2_X1 U23 ( .A1(iRECEIVER_n74), .A2(iRECEIVER_bitCell_cntrH_0), .ZN(
        iRECEIVER_N16) );
  NAND2_X1 U24 ( .A1(iRECEIVER_n48), .A2(iRECEIVER_recd_bitCntrH_1), .ZN(
        iRECEIVER_n36) );
  NOR2_X1 U25 ( .A1(iRECEIVER_n17), .A2(iRECEIVER_n5), .ZN(iRECEIVER_n48) );
  NOR2_X1 U26 ( .A1(iRECEIVER_state_1), .A2(iRECEIVER_state_2), .ZN(
        iRECEIVER_n21) );
  NAND2_X1 U27 ( .A1(iRECEIVER_n7), .A2(iRECEIVER_n5), .ZN(iRECEIVER_n42) );
  NOR2_X1 U28 ( .A1(iRECEIVER_n9), .A2(iRECEIVER_n24), .ZN(iRECEIVER_n32) );
  NOR2_X1 U29 ( .A1(iRECEIVER_state_0), .A2(iRECEIVER_n22), .ZN(iRECEIVER_n19)
         );
  NOR2_X1 U30 ( .A1(iRECEIVER_n23), .A2(iRECEIVER_n1), .ZN(iRECEIVER_n22) );
  AND2_X1 U31 ( .A1(iRECEIVER_n24), .A2(iRECEIVER_state_1), .ZN(iRECEIVER_n23)
         );
  NOR2_X1 U32 ( .A1(iRECEIVER_n10), .A2(iRECEIVER_n13), .ZN(iRECEIVER_n82) );
  NOR2_X1 U33 ( .A1(iRECEIVER_N16), .A2(iRECEIVER_n78), .ZN(iRECEIVER_n72) );
  NOR2_X1 U34 ( .A1(iRECEIVER_n74), .A2(iRECEIVER_bitCell_cntrH_1), .ZN(
        iRECEIVER_n78) );
  NOR2_X1 U35 ( .A1(iRECEIVER_n29), .A2(iRECEIVER_n30), .ZN(iRECEIVER_n27) );
  NAND2_X1 U36 ( .A1(iRECEIVER_recd_bitCntrH_3), .A2(iRECEIVER_n8), .ZN(
        iRECEIVER_n30) );
  NAND2_X1 U37 ( .A1(iRECEIVER_n31), .A2(iRECEIVER_n5), .ZN(iRECEIVER_n29) );
  NOR2_X1 U38 ( .A1(iRECEIVER_recd_bitCntrH_2), .A2(iRECEIVER_recd_bitCntrH_1), 
        .ZN(iRECEIVER_n31) );
  NAND2_X1 U39 ( .A1(iRECEIVER_rec_datH), .A2(iRECEIVER_n21), .ZN(
        iRECEIVER_n12) );
  NAND2_X1 U40 ( .A1(iRECEIVER_n18), .A2(iRECEIVER_n6), .ZN(iRECEIVER_n28) );
  NOR2_X1 U41 ( .A1(iRECEIVER_n79), .A2(iRECEIVER_n74), .ZN(iRECEIVER_N17) );
  XOR2_X1 U42 ( .A(iRECEIVER_bitCell_cntrH_0), .B(iRECEIVER_n3), .Z(
        iRECEIVER_n79) );
  NAND2_X1 U43 ( .A1(iRECEIVER_n37), .A2(iRECEIVER_n50), .ZN(iRECEIVER_n49) );
  NAND2_X1 U44 ( .A1(iRECEIVER_n7), .A2(iRECEIVER_n4), .ZN(iRECEIVER_n50) );
  NAND2_X1 U45 ( .A1(iRECEIVER_n72), .A2(iRECEIVER_n73), .ZN(iRECEIVER_n71) );
  OR2_X1 U46 ( .A1(iRECEIVER_n74), .A2(iRECEIVER_bitCell_cntrH_2), .ZN(
        iRECEIVER_n73) );
  AND2_X1 U47 ( .A1(iRECEIVER_n77), .A2(iRECEIVER_bitCell_cntrH_0), .ZN(
        iRECEIVER_n70) );
  NOR2_X1 U48 ( .A1(iRECEIVER_n3), .A2(iRECEIVER_n74), .ZN(iRECEIVER_n77) );
  NAND2_X1 U49 ( .A1(iRECEIVER_n65), .A2(iRECEIVER_n66), .ZN(iRECEIVER_n99) );
  NAND2_X1 U50 ( .A1(iRECEIVER_n7), .A2(iRECEIVER_rec_datH), .ZN(iRECEIVER_n65) );
  NAND2_X1 U51 ( .A1(rec_dataH_rec_7), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n66)
         );
  NAND2_X1 U52 ( .A1(iRECEIVER_n63), .A2(iRECEIVER_n64), .ZN(iRECEIVER_n98) );
  NAND2_X1 U53 ( .A1(rec_dataH_rec_7), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n63)
         );
  NAND2_X1 U54 ( .A1(rec_dataH_rec_6), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n64)
         );
  NAND2_X1 U55 ( .A1(iRECEIVER_n61), .A2(iRECEIVER_n62), .ZN(iRECEIVER_n97) );
  NAND2_X1 U56 ( .A1(rec_dataH_rec_6), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n61)
         );
  NAND2_X1 U57 ( .A1(rec_dataH_rec_5), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n62)
         );
  NAND2_X1 U58 ( .A1(iRECEIVER_n59), .A2(iRECEIVER_n60), .ZN(iRECEIVER_n96) );
  NAND2_X1 U59 ( .A1(rec_dataH_rec_5), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n59)
         );
  NAND2_X1 U60 ( .A1(rec_dataH_rec_4), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n60)
         );
  NAND2_X1 U61 ( .A1(iRECEIVER_n57), .A2(iRECEIVER_n58), .ZN(iRECEIVER_n95) );
  NAND2_X1 U62 ( .A1(rec_dataH_rec_4), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n57)
         );
  NAND2_X1 U63 ( .A1(rec_dataH_rec_3), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n58)
         );
  NAND2_X1 U64 ( .A1(iRECEIVER_n55), .A2(iRECEIVER_n56), .ZN(iRECEIVER_n94) );
  NAND2_X1 U65 ( .A1(rec_dataH_rec_3), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n55)
         );
  NAND2_X1 U66 ( .A1(rec_dataH_rec_2), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n56)
         );
  NAND2_X1 U67 ( .A1(iRECEIVER_n53), .A2(iRECEIVER_n54), .ZN(iRECEIVER_n93) );
  NAND2_X1 U68 ( .A1(rec_dataH_rec_2), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n53)
         );
  NAND2_X1 U69 ( .A1(rec_dataH_rec_1), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n54)
         );
  NAND2_X1 U70 ( .A1(iRECEIVER_n51), .A2(iRECEIVER_n52), .ZN(iRECEIVER_n92) );
  NAND2_X1 U71 ( .A1(rec_dataH_rec_1), .A2(iRECEIVER_n7), .ZN(iRECEIVER_n51)
         );
  NAND2_X1 U72 ( .A1(rec_dataH_rec_0), .A2(iRECEIVER_n17), .ZN(iRECEIVER_n52)
         );
  NAND2_X1 U73 ( .A1(iRECEIVER_n42), .A2(iRECEIVER_n43), .ZN(iRECEIVER_n90) );
  OR2_X1 U74 ( .A1(iRECEIVER_n44), .A2(iRECEIVER_n5), .ZN(iRECEIVER_n43) );
  NAND2_X1 U75 ( .A1(iRECEIVER_n75), .A2(iRECEIVER_n76), .ZN(iRECEIVER_N18) );
  OR2_X1 U76 ( .A1(iRECEIVER_n2), .A2(iRECEIVER_n72), .ZN(iRECEIVER_n75) );
  NAND2_X1 U77 ( .A1(iRECEIVER_n70), .A2(iRECEIVER_n2), .ZN(iRECEIVER_n76) );
  NAND2_X1 U78 ( .A1(iRECEIVER_n11), .A2(iRECEIVER_n12), .ZN(
        iRECEIVER_rec_readyInH) );
  NAND2_X1 U79 ( .A1(iRECEIVER_state_2), .A2(iRECEIVER_state_0), .ZN(
        iRECEIVER_n11) );
  NAND2_X1 U80 ( .A1(iRECEIVER_n67), .A2(iRECEIVER_n68), .ZN(iRECEIVER_N19) );
  NAND2_X1 U81 ( .A1(iRECEIVER_n69), .A2(iRECEIVER_n70), .ZN(iRECEIVER_n68) );
  NAND2_X1 U82 ( .A1(iRECEIVER_bitCell_cntrH_3), .A2(iRECEIVER_n71), .ZN(
        iRECEIVER_n67) );
  NOR2_X1 U83 ( .A1(iRECEIVER_bitCell_cntrH_3), .A2(iRECEIVER_n2), .ZN(
        iRECEIVER_n69) );
  NAND2_X1 U84 ( .A1(iRECEIVER_n38), .A2(iRECEIVER_n39), .ZN(iRECEIVER_n89) );
  NAND2_X1 U85 ( .A1(iRECEIVER_n40), .A2(iRECEIVER_recd_bitCntrH_0), .ZN(
        iRECEIVER_n39) );
  NAND2_X1 U86 ( .A1(iRECEIVER_recd_bitCntrH_1), .A2(iRECEIVER_n41), .ZN(
        iRECEIVER_n38) );
  NAND2_X1 U87 ( .A1(iRECEIVER_n45), .A2(iRECEIVER_n46), .ZN(iRECEIVER_n91) );
  NAND2_X1 U88 ( .A1(iRECEIVER_n47), .A2(iRECEIVER_recd_bitCntrH_2), .ZN(
        iRECEIVER_n46) );
  NAND2_X1 U89 ( .A1(iRECEIVER_recd_bitCntrH_3), .A2(iRECEIVER_n49), .ZN(
        iRECEIVER_n45) );
  NOR2_X1 U90 ( .A1(iRECEIVER_recd_bitCntrH_3), .A2(iRECEIVER_n36), .ZN(
        iRECEIVER_n47) );
  OR2_X1 U91 ( .A1(n20), .A2(n21), .ZN(iRECEIVER_n88) );
  NOR2_X1 U92 ( .A1(iRECEIVER_n4), .A2(iRECEIVER_n37), .ZN(n20) );
  NOR2_X1 U93 ( .A1(iRECEIVER_n36), .A2(iRECEIVER_recd_bitCntrH_2), .ZN(n21)
         );
  NAND2_X1 U94 ( .A1(iRECEIVER_n15), .A2(iRECEIVER_n16), .ZN(
        iRECEIVER_next_state_1) );
  AND2_X1 U95 ( .A1(iRECEIVER_n17), .A2(iRECEIVER_n18), .ZN(iRECEIVER_n16) );
  NOR2_X1 U96 ( .A1(iRECEIVER_n19), .A2(iRECEIVER_n20), .ZN(iRECEIVER_n15) );
  AND2_X1 U97 ( .A1(iRECEIVER_n1), .A2(iRECEIVER_n21), .ZN(iRECEIVER_n20) );
  NAND2_X1 U98 ( .A1(iRECEIVER_n25), .A2(iRECEIVER_n26), .ZN(
        iRECEIVER_next_state_0) );
  NOR2_X1 U99 ( .A1(iRECEIVER_n32), .A2(iRECEIVER_n33), .ZN(iRECEIVER_n25) );
  NOR2_X1 U100 ( .A1(iRECEIVER_n27), .A2(iRECEIVER_n28), .ZN(iRECEIVER_n26) );
  NOR2_X1 U101 ( .A1(iRECEIVER_state_1), .A2(iRECEIVER_n1), .ZN(iRECEIVER_n33)
         );
  BUF_X1 U102 ( .A(n29), .Z(n22) );
  BUF_X1 U103 ( .A(n29), .Z(n23) );
  BUF_X1 U104 ( .A(n29), .Z(n24) );
  BUF_X1 U105 ( .A(n28), .Z(n25) );
  BUF_X1 U106 ( .A(n28), .Z(n26) );
  BUF_X1 U107 ( .A(n28), .Z(n27) );
  BUF_X1 U108 ( .A(sys_rst_l), .Z(n28) );
  BUF_X1 U109 ( .A(sys_rst_l), .Z(n29) );
  BUF_X1 U110 ( .A(sys_clk), .Z(n30) );
  BUF_X1 U111 ( .A(sys_clk), .Z(n31) );
  BUF_X1 U112 ( .A(sys_clk), .Z(n32) );
  BUF_X1 U113 ( .A(sys_clk), .Z(n33) );
  INV_X1 U115( .A(iXMIT_n199), .ZN(n9) );
  INV_X1 U116( .A(n18), .ZN(iXMIT_n196) );
  INV_X1 U117( .A(n17), .ZN(iXMIT_n204) );
  INV_X1 U118( .A(n4), .ZN(iXMIT_n195) );
  INV_X1 U119( .A(iXMIT_n205_new_), .ZN(iXMIT_n205) );
  INV_X1 U120( .A(iXMIT_xmit_ShiftRegH_0_), .ZN(n19) );
  INV_X1 U121( .A(n15_new_), .ZN(n15) );
  INV_X1 U122( .A(n14_new_), .ZN(n14) );
  INV_X1 U123( .A(n13_new_), .ZN(n13) );
  INV_X1 U124( .A(n12_new_), .ZN(n12) );
  INV_X1 U125( .A(n11_new_), .ZN(n11) );
  INV_X1 U126( .A(n16_new_), .ZN(n16) );
  INV_X1 U127( .A(n10_new_), .ZN(n10) );
  INV_X1 U128( .A(iXMIT_state_2), .ZN(n2) );
  INV_X1 U129( .A(iXMIT_state_1), .ZN(n1) );
  INV_X1 U130( .A(iXMIT_state_0), .ZN(n6) );
  INV_X1 U131( .A(n7), .ZN(iXMIT_n194) );
  INV_X1 U132( .A(iXMIT_n193_new_), .ZN(iXMIT_n193) );
  INV_X1 U133( .A(n3), .ZN(iXMIT_n203) );
  INV_X1 U134( .A(iXMIT_n200_new_), .ZN(iXMIT_n200) );
  INV_X1 U135( .A(iXMIT_state_DataSend_0_), .ZN(n8) );
  INV_X1 U136( .A(iRECEIVER_recd_bitCntrH_2), .ZN(iRECEIVER_n4) );
  INV_X1 U137( .A(iRECEIVER_recd_bitCntrH_0), .ZN(iRECEIVER_n5) );
  INV_X1 U138( .A(iRECEIVER_state_2), .ZN(iRECEIVER_n6) );
  INV_X1 U139( .A(iRECEIVER_state_1), .ZN(iRECEIVER_n9) );
  INV_X1 U140( .A(iRECEIVER_bitCell_cntrH_2), .ZN(iRECEIVER_n2) );
  INV_X1 U141( .A(iRECEIVER_bitCell_cntrH_1), .ZN(iRECEIVER_n3) );
  INV_X1 U142( .A(iRECEIVER_state_0), .ZN(iRECEIVER_n10) );
  INV_X1 U143( .A(iRECEIVER_rec_datH), .ZN(iRECEIVER_n1) );
  BUF_X1 U114 ( .A(sys_clk), .Z(n34) );
endmodule


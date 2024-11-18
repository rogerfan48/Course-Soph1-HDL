// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 14 15:56:15 2024
// Host        : RGWIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.87285 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20272)
`pragma protect data_block
mYq3weSnsSbIW0+9kCQZJz6CN/7s22UEn5+pJ60wQhwrQ5rLwa+PghoeEVRyqa1MBVp5pwvahW7D
+yRfsRwGdzX3FAPhdYX83x1UDKfjN3DLiDeNy8fjL6JmXzjk6GB5P1MBdoWnS+eB4jfZWlo8Ko9r
Kk03YFJ4Aa6d0QqQgE1gwf8fPBrqslPMMGXAeYMJQVpDZElW0Nr995iVEl6y2+gtu+XvnKMlopMh
cpuQMAT1WnANSZx8hiZIZjF96x1dAkCXo9EDmB5gUBtdYUZRVwoEEoE0IzqtY5ljiNYLgg7rJNae
6VCbIcBHPlRxvpLakqu81N8yAk5DgGIaTHy+UF45bFvFaQJzkqRXNCB6i9e/JpUmDL/8eSUJofvz
/B3b/bZrNdM93AMO9uWaQkofXdj8C1yrB0RPlCvTEsWmfFwoT9uwqcXmDd26zzs7XQv6nG3VvebA
ixJH1HpA3q9iiQUKcQDyNMNvmnKkq4VyH9jnBrSXXlMDlKHWP4UEt0MYulz0cxipzw18tgrMjSp3
/fsGfLfNxrlrMFUOBmpct1HASzsGTF5AR1ErjxU8+nR85W5M/gbrY4PTgLzB074sUgbaNto4tXcU
/EzUCmoCteOT6h65UKyBrMrnhePqK6QRYSNAwWQFulKbTvnAkobCE/cIbqW9pBLoNElMXK2guIFv
RPnowHUAVUCbyh3q1U1uiyBXgBmAxl6/PTioD6X63TJvpxJ9l3bZAgRXonSaXkX4OnZFq1AATb+p
xQ4uMS23uDxTrZhu9tWAWtt16fyO5s65pmynTmpWb3Mdjz/6bs3VWp3OWsUlRV4hGQEz0094yhqE
9NXl2IA1dqrM+o3txBDIxWiMitOYS+f/3sQt5H5cEPxyWwXGg+iyn6t6x6spSmRi2gOMMFz39C4c
Hs9bPtxOv6cHgJyAbhqpk1Ku8zFZAWrRuzVX3UEYHHa6Xeh/txmfQ7iIoNMPG6h9vYZo7EyajLSz
7q1LzQHsdmfuAxwbb1PAniHk2vzIMIaP/IIXdZgRi0klgCoh7GlW89NcyLm+2g35cJBIIte5wmYd
zPToQ5hri8Gn10NRbK8EG8ofyQ7OMEA1ThlD/avX5n58xWRjct4Ulp1zOu5JQjtGmENgw4efX2Hz
Pmkf+8k4K64AiMUedWefyWZqfr0TFvgLP3X92IZ0VyWELKmVhzUq60qzUkA1henHzQUqoQfef1i6
WpVfDSbRsrzxJh49fRCyZGOBQJuf8JAgF4GEQUmxH5o9+mXS2e28r+EC+lTeEgcZYU7+rEnZkepb
jWoKxUCh6n+6qyzpf6mBn8WfpZhz+8wcT+o5Gc/+viLHaffhbKFLaWFJsQpmtqm70S6Wv0CoHHrs
kDq9iq44e4dqxW+CD74/oUG0R875y5g2CzpPkJaC9rho2Vgkp9K3TYjjD8gezyPTF5h2YN5PYcU8
PqEcNKz/HsdMFizkO+hD5CMVKe0AdsTT/rifd2eb/38iK21QEo1UWMwouceygaSU94xqkxE/ROxb
HAG7Ze3zZMyTlubQ5BzYDLkiYO1IKOc/HMszq+MZV58a5BuI1XsXZ8cT+hZJZi5CsczVPzYKeiNc
1Hs0RsoCAswq8X/leV/sAggLVKd/NZ/5kK/mJWFxb0IWym+XkQZN2eRPwBlIQdoFciD2O7/Z1eDb
aFAqafsl+6R/Q3jIJFEVN8A79e+EPI3wFyugFpc5moPIUXcBXO6Vy2oEN0/Ug5gjYqsEz9vG8SSx
ZNNkHKrnocvLzvLpGE7n/Z35Gw7IOOaTDxidMbHVN0SaQ07ozmoBkMwVMlChKKbREzCn2GAJyiY2
6DXvgi/jux4FCNp8ea1+gPou5RZihV7/+EwcOC26azXbKWV5hUSSt03nVBHD4G1/ucG4ikjsGqsP
tUxSl+BrCY5W38Wra7pY+wHtTIYYSbCB4SEX+apYRnzf61ag9PBXuCt5YSn/J9arH+EOtOf7UWV9
eWUgl0cPK5JEvN0cZcvrr3ZzM8NhOnSOz59t8pYh4oQdk3KqklODTJhrsp3vZCbcvwJOKjZSyORn
HjAZLruq0QoQZ9l6ald3wZOthZKIbRhWtmwfnpU5CeV7q4PUhOQcj+3teNKd9iCGaz38/UzFG5eg
t/JG2bdQgDgJ+8ukydD4xru8doi6eDNRfDQtKcEGqhkcz9kN8BK2akeJ+AcrGdMLoH+MWYJddjS/
IF1EhMEeod3jkzgIBjxyvD5URtf1wyNnNJYHzli9ga9VGNo4DDxtHv460fRQfkcIGGWop543oOlm
YwJ1x+JZF8cm24qahcKlfTwj3+yn+gGXbXY5W7JZYYOMKKfSVFuDIG52HZ/HpWaNPaIF8Yis/sUx
IQAn0YIKq/0Pjky45Cgvc9ibA0yNBD7K1wCHv+3N231q7vFeXyUdN0SFNNK/p+QXgjmlUIb8mChZ
ryfHQLogh1lrPba80bAtPnrrE4waa9pbqA2jqw8kXb8/22aLClNjw2wPJNJgcELPhsVZ2xIlYoXZ
jvmbRfyx2WJuDzU06zkt8IWSE2uTFihmwer/FlZnKO82zMVUliqy3DamdLRn04tv7MEZqwG2JsXF
A4FCqQGvz1AxYWJCaAOQba5OnXiIzW2XqPkrTLztS9dB4FvrfHeRJgM/FiczPVSSO/3TIEtK/HkF
dtIhiUfQLaX4ntUJCY1u5Ke3XZWizeyLBsgiY67JEWpiUxF3L4MbkCmQ6B2r+nXm25BuUT+C8CIK
TCsoL202RU9nNK1A+1LN316PyBp7OnLF+IFCBNQncYmbXurEURObHCUIxPLtKhlhuBo142k1ktJq
5saGopQidTy6wXUCLwdBBaFLW1Ygp6764KRDJlr4tzvbR/HOz8wSYxvTIw1ccclM6Dpga0XI4LJU
lvz6FfHGOvvsYZl1ecirAAdM5CGC8b5sEUryqMyV8rUMaRXCxKxg5NMDSQdSCFaOQ1YxzpC2nJcZ
QTN8i4kdbOjJiy6WVJ1mJfUrEmTAUD9UqPH3u8qfAr3SJ/e2TiXXPh7BtbwvzabPXKCZl3rcNWGg
5ZIhrK42RdLKfePefHBZmQ0wiqqUwx6bbxj6q6w6v7omO8llasivTpRNxL5H0oHIkHht3fRwvkZR
j3lx0Y65qYJ9chu+vSHAqC3Ip2LCC5dnTdm99Mc3tsL0VfBWJ06YCAm3lQqW6SF5mreXqL3MsFM4
kb1PN6HZKHPN5gP+rEeb5PZWSqH9DHtvy2VhXzlZpXEPqkcto1H46rd/DwYkrG/I40mfD7HoN1CJ
sS/BdqeNZGerDClmUtw0qaxYbWYHCztDXalZAesU+cZd2OaoYlons+HcXnh4/sshCmOtGksIADzm
Biu6GwCXvsEMI0Qc7YcUtgD7okchYBigiy921Vu9lbMa9V4AkxN9YlSMwPvAb6wddneGE4roLjlZ
eQ2zHDT8V6dIRpVSdLSR73HLfe97crGBSnBYv3h2sZ0Gt4bjC6QNB+bjgrnZCzJYXX6ywkeDrf7Z
Zji2S1NObDAUjAa49OW4GKxgzlGJoZlscL2uAQV4VJttZTs3DAUYvyNdza/KoQA7imOxPUACb0Xe
b7CfUvSb1+3pmQJjMxiKXR/L+B4VK3uhMlX1m7acc1p4spycLqim20lZ9JJS4AqftbI3CmrKPDAV
9eMy0R5/VGr79g0g7Eu/HLLEpA0Ntnl/dYQxQuMJ7I/dF6boLokgGs1UQZsR6fCXdD2bJaJndLUc
LzvUMuaOfz2M6sOCX7ied2c3UrOdFZhmdXUPUuN4h6ajDigfc7FlNvuLYdg1a3EMAjjkLQck0yFT
4O6caP3eCfi/jW9hSJIIYl17HTTulLvgQ5x/QLstX0GfavIVWLk7LfSkvIpnLvtSqD04g0ISFTQb
pMFJCpX1RoW9H2jwrcb8d//bM3GKGf4VC57/ZmxMQ0I+1R9jA4skSSKjep3hC9JmLaVqg/i4uEds
Pb4qxBEbWsaUHIcNPF7aifBpMn7oYBKLrbwpNWz44NfYWj/orZSiCY4yYUN8r7LF8dCboZKNeLrK
iJII44JToL3mkT6bASwWV+J6DdO+YuiOuM4sM5++ltvDejk8DMVtTdOptfj6wJ6n8H3633M1RvgT
tcXgcea9lZsVHc4GZ+9lc0ukSQsVqDn943vutJytpEmrDiD8eGp3JEbfdpCfU73JSMMV4kY5MIu6
EAk9PTAytj8bX7xksHE6hHgqhkK46IvG/qwGHV1I1FJob0yMD1NQUzoIUvjZeuC1XeoZsfRTls2+
iSlkAyB2C7KYHdmdZ2ELzs1zn+8rdumO3kmXvAASGiqaWETZtxL02JJwrfhr6nYHfotHPVUCIojs
nAIno6Skjezw2ElaS17Q0jJtUlYTSyfCyV5+9QwhxRTI3yuFeQ3JLVKz6UyTpzU1tsTyfcnir9w9
Z6uNbeDb2qa6ENfNMDpRvQfC4HYVyDn7plg+kwkWY5h4P4bhM4WHGilzv+lizSRhyQ1YZBp1VD4u
QNvwWB2jdLNxnGW8jhcY3Y6lvwCDT/7JfP8mGFeabnaLwKtxG+6Xg0a7YQgYfVVA2wVX8uIy8eVT
mPh7wcqK13Rhj8I9MPxZFEdSg3Rq7MyVfqQ4xWEy4xA3ZuJxHh0WW57CgzXHVzVBBFHIHD6Na8IE
9bCFTLQmsPE/7tmKyis5aTmoodj4cdfPMXlbVDRIrVjtcW8ubTScbwdTpkjo5HzsCMD1RM5nXAsa
P976b2sWSjK/ptChGCtEiGS5vlyShcVZZCTsSnIndnPWX28H83z2+iGAnnl+Cx0VwBz1sgR1Hsey
ejFi2Vcw3aqLMZZGLYpT7gefhMN/CKSuVl+edB95znpOwokCRZoOxpXBKCw6ZIcyWo9b0EQ5w8M0
qaGqESUGaL+24Ldlxbl4bkdA12JbRqd0UmH9oG3NeqvRLFS+G1KCb0TRNl2IGS8ax2QNh2DAlfu/
i+9WYAD5XxzoIGKLRqWz00gYDRiwtKpo9rbAZQgtuIy9z67UOoKMNRuMXqZcb/zgPRpNlvRg6ek2
XCyEExYtWtcAjX7m3C22V9Ideuk7+PDK/mZxhOLitsH97qvwuVURo5fAN5iEaq2gWu0WlOcFqoys
6ge4X1Cel/XElpaU8Psd3qSNRgj+UAaX5icPcat28KsfaGa+wPUIKVp+craemi/ny7qCgOqf0y5U
lIgsV6jXcyDPf4B5OF7udlT1bEUM11lDNcl0E2YpdbZnORpujXhJHPJngnWiX5sQBBacV0AMqGJU
5Hmo9lNUrc4FYmzzRF9ipKMdG8tc42uH3ymSB6o4WjuMaVIMee4cw8hi/iXmIUeNXNQfyhRZe5Ys
FjGB6F6ikDvY5ymqy1N2hVybs7X8RvEt7uBDD1RNgU8h699cwZP68L6QEiiEEAiVeDFxghEViLI4
PXtHJaNYq7GuvK8X/GL7p29dc6KUKCYDYRG1kSaig/PyzY1pPFx1xmYQsFGtvo3vdH4rDyez66DK
mbYgNAx2k12IhFaZVtdpwg6rQrvo6qX71+jjkL8GL2stlYPRduNv2QR98cxlB9HuWP0UBxdtwOIn
B2fjVZwDY1v8Imrp6xhB3wMYm2hY4tWDW7iz5jAIMrGa+CiQ+NzPmwUj6bWzUl68bJKE0DyGaJHr
2NCPyqbCb1D8gmz/yx9CkxvBmfw84E+Vpf+Ju3Jf6T7sjOVG5wQPpISbLQI9V0f8NGx21hQ7HIvI
0YIIuPWbMRfIM4Lbuj7BTs/FundN88BCWb6SLq6AfT7lKRmAKGtLJBQNLl6UOgt0L5ATv5q4t838
qllfiT3CJ9YNLBcf+/lhGJRf6LHiRwELznj94KOn9KSYt2qh7CaDYkCOeFtNTAfBz6Ow5Lc1p8Hx
jhxVOTRe2MiWMIbkmo5WXMqbFfcLPY4wi4yaBD7r31UvuYjFE5Gc11VPqwRT1mJna3dEsPArHvs2
nnWnKzBnJ14E95hESrbfDxb2Bxpca4tDznh4S65VS9S6BArIPvoglEhVq3lJCNml/Iq++4OK/Q8/
sF/gDnWFtFsAHZY2P2SSygyLrDTqsYmUfrZjGtq3aRQN4tyoKobBTYvGqeBNQ69tCgpx1SBDeuV1
iGh/0LWSuxWYACie9dkUo0BzGgUsM9L66XYHdkvEUwS6XG2xu+69CJV9PnFFKJpGzA6pHTD5fCp7
IsZ/IuoTCYw2DCba6dR6zNiDCq8LhaBKnMklqc5+mwyLnpnqcpr20GkE/HoG7xip661PdaJ+LNla
HTHFviy4dwYVImD1JLTk2BlTnfRTIoh1YRdtZBSdq35eyYpAXGFIwbOqZ6TM2USJwUMTycgBZpBa
mTFz2Oj856iKadJqSzUWKZPjOmYKAjCRCTq9nMsLDWftKKFWsqqwESSDOFMvKTT31LIHjhQaVj3P
YB5SwVnS7k7P6YQL3Qg5SQuO9IYbQlcjgRl3KaGtxy3W8mu2cESlRXdjYYr1e1h5O9V30a0mjfJ2
DFMuc39XDYWARKjdJgORc05G5N0cIydgYFgNbnshKC8pB+PhSMFc6eGh6pegW1Ec49vaMKEHJRTy
baoK9hkvQMICh55xDDHjBjryGWPHy6jW7ShUVW7Kysn2qI/boacbJTFttQXy/8pxHHn7bXxDhMPt
R38ZBIF7egsU6iamKzXZIrPrCwBsJuHoq2CDiWUZOSm/OH9caKgnmJflAKWzCmAzu2yjteywQqhv
Tk0BK7K6gPDUmTTiaAOZS4jiqmNr8BQBQM5bCS3C/q++rsVVkKiLI70q6EKZyk+OE2ZXAYgJW4ko
sou4Xar2KjyY/OOcptobKGbYtt8+cBlwjFiuMp62x5Yz1UklYaWcDYr6Xac1TIomWQvDqjFxUO9+
S8JUHSKdAXsUJFqSFteareqaiW7z6o7Gk4kaMZz0YcfHBB5p227DS34TJujDkW3w7L7X2TA6EDmn
BXxMyJtKVhQ3s6lItkfpbM11t9Ba30HVEOjumL/FMJqQ1KeAbGt/EyD/SG4ZQGUtUdTNO3IzlNIC
t2nqG19rLxJghgL3/uw2aMdjM5xeZh85k6hI1mNYaB0KfbTS3YCW4Ck2sqoiexW+NsAWT830EWKZ
lqLRrXGBwFpAWUDs5/ayLFRYfANcXqV0tDKqKbXjmG4DWcMmngsgCJayTNrhT/7sHTesNCX7YMMU
b/PYGJ/OHdmE8SCg+XWxVC3cHAFlGjb6vhR4bp7nZ+8yGa85KVIg2Tfg8x891L5ex6kpDH7ERXCA
fEniEsgXUJCxP1Usz+0/R355tvoAhjfVhgjmZe6MuDwO7Qyba5HUDq62g5fkpl29J21sXZLhY/VW
6CGu6qNpb0F31afEqE+6hnbZNfvHmYRxwyc7SpgwLe7/n2CLB68j5xXTOqWGwcD/EfPd59zgKfL+
vbpses8ofEFaAnySfKRn2eGuTwPt9mw2XPVBYk7hLyVvQadFB4g/oDdSgjX5nrT+nK6MZ6Kq71f7
YdnIjtn7gcFMbchGneFekHXXQp6qkJbHRwofHzIK66EaOmb2JnMSCKHSqajiYf6L8x6go/fjDlS0
Xn7IHxG/2DZfdnPA1oZEHxfJ/ieD0mMxUrfIE/k/XHAki4n1q+kYy29h9OEy7nWAkujKL2UqWxkb
yDQMTQBk/4yx9U0wiqSr5AVsbGOUphCRwk28UGgl1t2NjllNPGtRyk/+bD7AX85C3tPL+BfxO5+A
C3e3gbcJ5otqrLbBUhE+VgWeyedbtQUrA6n4Zt/AOH5+ORdyD3dYVXDbK377QjuEqEwthrQE321u
o1o6BtcyvXEuERVq9d1DsE+SzR1jWvtnbg/g3+wFeG+kzejgQ/JwF8q5YqVm5z54LoNfeqZ2MQEu
wTxT5FVML9T40z6QG1XhuoqTPwgAQs7H9ik68v783VzQyNWKwSGcOPhYEa7hFjTQ78EqWpZa67xm
r2y0ryf6x6cOkULgBSkuaRhwANyhlFNl6D1eCK9M5fj8ktKStS3WCEtzl8nKLXPCBJKZ93NOxn+C
itMkMRnVTxFHZ67gCnYqEoXE+HjvxfkjDiAMrfc6d3SeylTBoPG+0Ny1OGHwax6u9UnlzDXrMqKO
IALHzm+ttwUNyVAJ0r2bqvomg7iY+bjOaK0l0sR1VSmcLvnpEq3tfcJXJOCdCi1l4FwxHCrMsJtl
bvMgkS79yJ7PQD1tEmuKC87hzHUPeb51i1UmBMAvE7kFBOJvxsItrfNPTiN7mwWXN/CKL8gUbgyD
I71NNhyuvCEbyV9v5bJlxOTqhnSpQMNdk+t+M056+bBWkb/38pXQmmjAqONe/1aJd3ovJBdLyVP7
VVDHSG1vA78zxoPJgqqVPfNcYgQCvx9lsisHHpJ5ZgeONGaLzNpidq1BM0ppg+DzaFy7H4y1vkXE
TKxbGQH+u9ZF0zGsD8EutUqKNpfVM9+16wwLynOUEfTmLXac/yY4f2Svvc9F7gwsBagS5HS1wxhM
NmAymuTLDkBMjtZSFnrGtg4JCz9pCoMJ7yuG5pIr+7LtuJlybAYwA36+BnMSb3a6poaiijNE4Lk+
Nfazwms54TQ2aVACGTmHutJHQ3nr6t9guKsYdndoh8F6gms1ppkXlpRD41J6Fvp5E4NSBiyEPEhh
RSCO5SbvNWE9EHUjD3XngjWyoyQ/h7KA6aTKFbNhkKqPi8TpbK8HEPaPkWB8XFUB30MIeq/VlSHr
il99SV4qER1z4JJHprrgk5JH5zaQOCnuom99p318YRqxR6itmV+MKELL4gmuQCIZO62QlLNEUSoo
2j8nCCrICMZqgHILzmDngMikmeLEQpRgHsz2Gs7fvttlyj1CCqzT5+hRBAExR3M0yG9hv9nR0a4a
Zt46cSMiMssNRGJlBJ4Mqe0Rat4nUKaHPHJN6x2HZmAQCHkQdOavp2/xKM3HdUnOtegMOyK3j4a2
7Hc9K6CxQtskIXHPAXMl2mpkdDufDf4PX4QG01jWSBY9jhgxWzCPBr0Ehjobmab4ruESSai28BoP
rq2Pc0ddcDvL9uw+euneAAUZZgFuhMCbxVvyFEhNjjs6yDZOVVglzBtgoauGlYoufURejYx8p/LV
ZDGE4Cv2el9RQNc0k4AyERregQqY3EtfvEQmP9YWxnyhcs4oyozbinTswhpeTQXMtmuB9aV0/ygt
tjz9W/ekx9B9T2TRyV1/oGRpgN5At2oLYZajOwhZbAUwevnwMmX9z3UVkiGsPCde52ryRZCQNUkZ
/gNt1ghPDz/hcW5I0m7CLF8jXRNHP8dj3TuavUa0DHyr79INjRCCnXYg7GnDuIm2dCFYNCtfWU4R
iKPooWjYtFNpQUUHyUmg6If8n+VD0am1ws3z+qwua/MXgcAftt2q6LZxHQGDCErobbLm9UQdy2nL
2Rdu5p9CWXyO4euMoQVi8iNldkMItQ+haoFsMErXpkboYYFCkRQrR/usIUf5nRm4dBww+obpuyet
L/CpkEPR/VuEDB1TfEEjufOfCaX1+bXuQsxxgrAtn/I6zG6hXVukc3qvLsNEyGXbSynK4brkva95
2XG1m8ewX1LmezXLp3QCEEXrqGfIsiyoR90ighTm+fM03tYBV9xW4/rVFAq9vKjUUM9XcmprXVqB
GVjCx7vKQwRT3jsUtDbfnH4qnt1F7og21SEVVQYA156+WrA3NzMEdGVvkOePX0p+LaUa+k4lTPaY
zRKGMUebZwV+KTSx9fShuOjtKux7kJW+oBZU8lTW21IkP99oaNvINU3oYfM7PRZhT/RNwsP/D74d
BL0FHDBnF3FBki71p7IPwnFcTn0y0BYFdTR1GcmFgk5T0O0TlFSa77RR81WhDIB7gaOwpuLuc3OM
gDOdqOub4EQa8OJFP0ydL4Oe7U0D4w6NPkFWMzI7lZMYUSaMMs/Kl+ARkwc3z73HFTwUUFPVsdAW
U6f9yNxRWiQWMVIo+XWIEFWH9rjcHOcHtF00FTOXlDTMPIndxHYNWoLN7/BT0JJkwW7yLkMNuRdi
KtMB/Sz1aUNy9ZSRZIgwnEGTHEan0Fz86oDJPKXmXiEjvTf7jPbQZrOs5ys2ZwUKEHni5AxNZLil
HrgePnn5st7/z/UT6GUaaRF7C4Sf+vEsMfN9BXaYLJcP4DvcMYTEZZe4s9oynMzM8trU7OhHlFeu
I/wSBLp01spraOtT/XUZI0M/ipvTKmedeveATYPmjY/GSXrzqqxR7Lk3JGMkx34PIW/MS7ssu58l
hWByt/zNbnOW6uMhfRkBO8BOH++BIAG/VMyJNWF+LxHRvYo1bQqu/Ka2T8DfUvjnaT+NzKeqyiOi
GFQHvHPy6h5oiDuGVMTEsxWNpFxDliUGvvsNZMcAGQ/3Pwut59vXXIMN+qlGIeFIYZSatZsNIBkp
6XXaxKFoc5BsPxiS/Oy/kc5vtHTPfjHyeetbIdeyFj5rtbWjMLFQzwu/ojcAIEm7xVlvptPS5vfr
zkJcbcGD/vkyVV3Hane5ZZcLnBX/1Biv5xkk5QZ9eCX6fGdAWXTh0gcOA9+PyAH6UkyPODr8b1Uo
8125DI0llJhWqRFX3RaEZRKXIwDEOjNuk5AOsqZylrdGvRvdggwH+meTbG3njUMjGNR4lJxieUaT
dYXiiEzgCCzYMq6vecw/g7d3kbGjaonIJRCiryTAEySknxXauctPD3fqUDLlJjpRt2bio4BlA/xr
kr3m1lPp9B4eF3y0Wbh6dA/rL2cVhVVb89ApLlTNWZ62DeCrOPZY1DUjDzc7Ls55uKF1rn+wizhG
hG3Gagf5dpKwoKaCnqCFcp/S5CABGpEIstxBZVoH1nGfMVWKuGEy7+YRXpmRwDlO3/4vREtJcrpi
7G+A1+FL4H+7ifCK9x/dNaadhoJrNu+dH0dWJN8PL+T7ulyKgVG9eAhHLfFcs1XHTDZGnyp+QqCI
JQMWQTfMvv1Q5ULEOQZKwwtsOuITO2KWJbybTzbTCHKm0DuAywQq7dRd8mrwaTBfRIkwT143a+j/
U5ThWt6+0kttEHGTR2tW86o5ambC0C5klsCHU2k5U7eSBhEfTxO/C0OreECBrwE3KaEx83+j923B
HqLwu5jWH6ly8eSgp8llKRc9UrwQXSERagH1WSqz12zqttR40vOOtscnR/0PGyE3Nf3obHGPWAiX
AdT8CLs0TocYzITyE9BltgmYDtW3N1g9Nx8pduhT2yg5kzD/7vofVHbJ/Sr2KklEWulu0E4l16k1
JzLzcMJDqFXmXZt8d/iedoG6xjFOzKFStrpvjeyROiV6oTCSI8g2Rm9MopiIaEr7GgMDFK9Ahc0f
J0TCxGLYpbikwVeceYiwmajb2f+u6hbNpw74wwVEbqoZI2ThGDc40UC9Zx89twCXyVmvA+ETC+mr
eMA8izCsxQBW0HJZBPpha+Un5McmbnU3Jn+kqugUtoxl+nzSrSANas7xxipmGgTLbQCNdVjcoYmM
D3Ly2fq+54R46yTPG+YyaJVCSSUhTAGFMp8HvAxVodyVxBKivuOTZ0644fqjxwHZmtGIsqTFvnn8
KneybXpqezsdtjl+9Gav1GUIbJh9ZSwXI5Dq/TLZlSNU4mLB47QCO+z3Kdi2+0v6miVGRKRI1NLV
O3Hb9n5Du8Pn+x5KxpsChWcTom0YUPo7PgOOacq+dKGqSlC+krAfjzqsvNTD5eIf35S87Ac7qnFx
inPlTXmx6CuKkQLOONu9LLhJTwwwfOvh2oFt5xFHBKCPPP0YlmK9NqltNCi9MEuC+zfDKwq9qPaN
ejylJQoamKz5xk90/d2kyTYc/YgaJrFa+4s6frP3QO8YLIJmefy9SOW07Hq9ehJpY3rOijNyznUH
6e5Ytl0MgH+PINFmrxB83gFqBUU90cHPKbuJPNZVO45TvkVaWpwJ4Yv2eP3h/M8qoE7MiipxkTj/
khx0vWDcrHAyAxJQDa8abswZfmF5LKTEd8RvVpNS/mXikV3BGEJKRNjjL3nBpzeJNYITdonU7ydT
hbhoayMOnusFw9EaBbwMj9hHdpCAqn3xPNFhe2WYdISZy5U+ODQchVCFHYxc93/H3R8HQ1NHhEO1
1g181NZWyYOHulKW2T+UMwBBJsQ61gNt1u8cG0CzBLf9kY1/AqQyxUzryS2HNTD9j/WLjtEmLbKj
hMb5FnJGXSu1VrP3MSgUCLlmRZGGWNAiKe/l0sJjPd8USBLMdUpl34BlVKBgpPVjkKnk4iXcZlM4
7Vpr2TPkRc8ORalMRhgLYwC7MDRJqjXOpg013mqvC28yMKIXupVYwz0V08J7pL+7QG1eLLvpkBNG
dByJzHBPEGbxx484GToUBaNezQp2Ax1+ZAlxWktbI/hucJxvYVo4Cc74q+leoxN+4nOwBIu6xHCG
9txM38yXNW/4rMA65AZEMjZK1P2Zuc14ZxK33kG+Y3JVf2BrJA/U9+utCJUIYvanwKGTeMeFutLl
5x3dgIEg+TTuNBEWHcbDbJw6B38he8MPj6QalrPQMRRk3IBRUuT23bXpfmrKYYU//E9GTyA6vH4s
/1MZ4bHAtOYb3AkvFBnNzv1fh66ey1ychapkD5JQ3BIraS3cw9RZF+nFpC/wyb64ukg78YtSBkCr
9jVyWft6ZGsWR3E8GcOIAlszS7ltu+RIqGX18LciO9L5qUjZIbmYk2xB8cY8gDV3FLqfOi46naA2
sw01a7QgStrFrP2oDgYO/TvIykqLYT9YAvGCnPR/O5zf4epwEYnP6sI4y3pYE6sFU31HPxDL2ZcW
I/szevZGotdPVb+DjB81cuqiJTTKlzeu2n7v9+zSQHnE+8/0fbqJWPFdwXNKJtYCmFf/Q+4sWhtQ
A1ROKummakIjxWgQX6KRb/z+eapdIekwUxSvU7BPt50nkMaeyauaMZje7kuWgC+SIZJ9x8pLWEpr
T/+9U2TkrPGTZNAEYjYrcUFM4qEyRFX8wtUMBumhAjteo0HmCJCoDmdn2bnofhbOfkl9JUpuc82n
PNlrOKMsjE59lOvY8jLgb98/wyYDNdK4QUcxhCgOXikifuC/PEvv/1wqOpE1jw+6fbFtIIkzwOnD
4Yp5GeDLyzhKkA71PMLAvsiHal2BjVXZdHXgqJfPBiwlGOzdPRxJ89JBSlK4hlY4Okd/ZNhr9cqD
TUjzWOu7L5Wu+CGHx9WWS00fvdm5z3qAHLJ6uNrfR3uO4PMzdtULKBTU1IZCtC+jZJMbMP/CE+76
4+7e8GgHmVnMhBe8pJPR25T8u0IEg7GEszLTqXIZQd62A/sFrjqizIE1WtNtYL4zWvFb8IB1rJng
nbcZCs4y7nPtzg8THtFgBDcrvjzwFu0sqgy6/5eL/CKheSbYYWgczZdY9RJKoDVrJRFlnGHiouqk
DKXA4HqolXLZTeSAMPWtbNjlitu16nZgju07ciMKzUpF4hxoIU+cSOQjmd+m7Q93f25AnB5wNuOk
hlzpEWnb3iAU5NARcBJKXpYoAyNEgn6F8YuH5HmPkjIki36I3F6Wubg/KXzrKx7wAKIojaYIPlCS
D/KiW76+khIk2z7gfN6zTqhKMZ1yZglXUMFtrthFU8VvHjtGDc3Sx1I4X0sV08yQJmTRw3qhkugO
2JnnuYwEDAF7GeicDNr7Z9h7XwcqI1u2XYQdqRqUTTJSbzjTcSP/cfhmPTlgbLPZ3U+JDCNZtNA5
A0nETxSTIQonAZvu7kg8sbZkLkyMLVXlkduCNtQLVQ3okTy2+QRkPdvcLRKYjNWIMMCRCZCNaS4Q
3fk5Fbk0GWp4dNnUsp+7DqkNTg20/h2jcvV5YFQ2JfbB2ZsA3/EFieqlkI0DPRn1MhXWtn940jb9
jQX3diSWAit4g9u9eQ2nQs0jkLlouhWR3JVxY7sUAkJ+OiSoiTG898AgHu3XLrO99VSW7ASod2wi
N7U0NqRn7lfiYC9AxdO7gQqRHQzzn18FnDPkmiY8vxojgjvjt64owjNphiSIUSe+2MAnDpCI7LqN
MEL4boDUVvx3JUoG+9BbmxvoQ8diIInJvBChnuYorGHYE5ht7R+D+BQIabhwdnT2Obg8jI49AFYq
GkHtpHQBt8cP7JX09soPyJCUY0eXTpyAF6bS2YU30QvNPLsmLKENbkc1AEE10XLekER8JGCjgBqF
/asJPiTLfY+6Phy+3uqZt4fxW2MYuN0IYflm6q34mXPLgJCvywg7v+HKP1qJGkjQd4gMsjR3MCOY
/E97w50Vo/QoiVnxUxiZszukxkhy89gKt/tCiZOS4tJzui/uOF732PWupf70FYh/MfGU17tKv2FN
EOJtDpi6EESvJCrkQc5o1wx1WjicU9iT6OtZECovdk3JLLoWoB2ei+FVzWELqxR1AYSfK+XNQDdl
+20m3GbVtJRmF/kZ3SvaoipkWDYAHaA2nk620mzDzbgs5her/pYKMchNadJYgUCvNi9BwlJW19r/
qhKrXhvVbHlULe9LW+2ynqo3E4XP0JzAGY52Z0IB06TYqazmztUm8i3Ewm+pxEVvZMshsYcx0zpe
TA4j08L1NST9w3ZJv0qOSfU3VpZ6nhsRhIMUNQOElLSCKj5QIxxUxVVR1uVfw+wWah11hPhIKoOk
9CqZWYSI78o8xo0Kf+5X8xtUC915Xj/wD1xJlvbSLtz3IyV4RavyfllZ4knazoQ7jQfRqOR+V10O
KdV6qL1qZ8at4hFt+/EC0nd67VSG/txhHLyPSGUmPE7JHn/HT9hcDvr4Tj79vV3OvA46rnyFbnTH
vM5yCqCxrW22x0SEbJaWC4QBes+zpQh9BHiQXIf98bP5NAPSIBIqiwyOBgsvygYVVMe1fWudzi6C
ldF2Y94OLN8CcqNtMpd1FkN1w2pmPmqPB0EhvVgs6EtghoQo7b3xwLVc6Af06q5qUu4530I8xWKL
Z+m+7PKbERVl6CZL4HHOe1E/E0R8tuMPyx85VMl0phvFZyKVnMNa+I5ahzcHoM3mWefN4Bu/3LkP
lVLg/1KDz9XX5dh2/1GupfeslW050ealEf7JqqRw6ux2KHDir3g8JvQH+CIovt4ANk/R+3EzrwpG
Zm6hQCy79PxMI3nT8PbTNm/rtuWnCWRjpb5VftYmoijZRPzs+MzyubaHPCG8MUq4KGwi9grc4shT
9iC9rB1QuX5OsBXIVM0KeGKlmm4CnSdvnJyyyKSOYFhAgt8KKApZcfTGJJO19LQXlSZSSbYMyntd
s+IMGOq3Rk39oYNiCQ13bA29QxBcOHfsUh/b4POhJ0VNUO4tgVMbe8E2xvLs37Jr6BXHDbNpHFaa
UzPc5PVuYwJJ1FR35hwOx/Vp05iq+/lZJaE+1TTEIjuN5+6GjcUa3vviSuK8JT2FdEb8rpbNFNmm
sGebLShCysMhvE6Uypmjwoc0s2J1u/tczwwkJMlYS2Z107oHIghRnYeKAyGHqYY22DOCKXnDR33w
LqUYwB+by1M6RonKlZm49h9kxtQOnsLOPZ0DdnYfvzRfwToYF/y8s4aRQJZ08BLMcz+ErO4s92VC
pXBwS+Wo/ogfG8sy6ISbciQnpizR5etrmTb7ico8jsi+f3yR74XhygjRBD5EZ6lQLSpb4tm8oj0h
4EIlfU5HG1eQ/+R5PSt+fK5j7DLldsLPvUwU7+VVGii59kfQ0rf+3X8IoEZx7cuKb1qVQScKRDzK
sMd4bMtaUlI8xh2W7vx1KNHGOkOpFuStbOU6vSbNQ75k9XplF0SzkZVyM04eu/olRZcEImLl/Ks7
7njDG/K7FuC85YXD5DFuKcL0v6NeyxrgxJ2wtnUIm7gXDh/gZXR4ZxQE8rEXtgK88cqfDy7+fj5K
v5VBjn+brtJ7J9TCII1S5qSYDZ27s8optsnhIO0IShfPPw19RmfI4QNf5aNu9p63epYBEjcL9+Zh
KIipWacjebKCPEHHSIJJEMyo5mFxa+sk/QhGzKTjMplWi8U+VF125g9bKkzQ9WcM72iXYb+sNhgj
xM3oxYFV5nZXI5cgMwbdG8gPFAUsY1uRpeYpAQZSmxUXx4X6i/vIqFIPKx56kSepP2KLsWYLBsog
gAUa4pmoE//SxCx0Co0ZjZ1Lli9Y7G14BY36Gtvmee8gb+ZSBH44Fhfasx+SB6n+UKZ4jzwhRl37
r6Bc7uBBUxo3dVGanpkkrWPvg4WnDpfsvRsafRLQpKHqQlNx7p2bHJtR2Y/2oU5O4QHCwDBTAicv
C2O8QeFuJIgLGaThvTYaTGNfvojd813xZyvRwmdfEZ6C9NUgz5tG5cg9Dfm1txyssKjhXYz+DnDj
lIIG3tEk6O2CLhu5gSQ3tqcO63KF8lPq9Ed7U5a4ToTl/QE5SukZFnMMq2d4nt3CVy+NrdvzzS1Q
CUtGCSCwxrei0f0JmI5jvI5CZ+QtdRt0ylQFUhJWU/0fAx+1Wn9+95dZxgWriozxbHwzMW1x8K6V
nTfpv53P8cHrzXD52fQEz2KmJwYMfgLFLqZFWf8T/PtACz4Zkj4+Brpo7ZDYqAEj0CWvLOAunOYN
sNINrdrgw3B62vGrTm7G0cK9jrEGB/2WyGcQtM8yFfuNeAxIxSDh8nE3xuXyxV0h10igBpnImUcj
dKLc+b74e94jEzihjU18zQXGt12A03ywoj8cUr6L3TCr8GZF6/QWDvlML6wHTS4fTvRyZ5rcE6JA
pqWkPawtRqL0fl0TzOEHggic6X3UpgUuu2Fo342fozlnqbCOuiOM5IIyZ85YzqqIuVY/Xmh58+g4
JbxW7NRw13RqTjJBbTz87HXMsqAsdbZ+j+LIp/t5Ct8xnv9KiS3CUo2hLMZSj8d1LSJe0/3fchPq
Qt3dRznnpGHQibkmOSsCc8DUVsR1etJy5lR/eRCuV35LZIJbXc8JF+BQNFjkYMF5HdUviZZXLph8
B2rgjzVzuZgjrx5jaIOzDSYLwXNT4ius46PDyaNHy1n+8ERZeku+rnqQLCgCvBbjTNxDF4rI1ndu
GX4wc6Owvc/OVx7Ue8v4jBbuQMUOblRbJl8xeMsoug+pONNLzzZsCarPCKEkzINI98IxCzDHWNq/
bOHV2p5iAWfTaHF/al0FhTT3cKxF9au1uMQnh0Z4zt7ibV+fzZhIh271ZlM/NYSZ8i5c+jlVKKQU
B1B6qT6x0yYkL+d24sAOsoJAPkpRcMBJTAlfpIIj6drqHhP6X167wmm4lDjHSOEq8Zc+54ih8zi1
6Vmm0Cc/bCTLlKaU3qiTon9e4jHeRioJbjpzE8KXeVfMuBMp3Wm7Fvh8AD7qWoScXCFMmMy2Qx5O
ZvLQgV+7IaGeIdmmilGlORbBYsrTAtzjFECb/82DGKT5q+kbB0iQFgaEXf3H6XFVwiy3cXkgo9E8
UjH6BvtO2iXpcpL9uqsac8Mq802e5t6tuA37JpyAR3lI1TOaB+hRGtYpwgkjT8Q4Maso1o2AakPX
xQ1Gxort/wD35fazbIdBRUxoKDEXyFJgzYuqyKoUOhl28XCJRp9WnO+kfXQn1h6nW5VOiWyivYnk
8pj68RFsPJLgXvTuSLQVM0yzrDfxuITfKZtYOnoXmYBKvipNLL/xxU6nZqNBWBdSwTecQjm+KWaw
djkHukWtNnfFOY8GKcEHLg9VIzQUb1eDIM1gdjoqGr88glvg/fpKJBzFHAGvqJD5lwm6mtJ/8zSw
EuTQbOvXaNRSmUbqqO9gvIgmY+71De/nqvKIDdFiCXsVpXUBNEkPSYqzR6Ny6isW6DbwHtNVHJW3
CcMke+VBbcNc7yYvthtuGzl27nf2acfeRN2G9PibfTZpVev26eDPVPQEnYtlK9GY/Nu9PUdZlP1+
QYsag0ah+F3fX0IHJClGXj0krZr59fMeVsnZ5+d7k6+l5e05vVjzCRdhBGcN5UNhDj7lgeYvFwm+
/aZ5IcXGNrfZaz0swB2IDWiQkkKEspfIS5owQWkID95bmqzmG2dZsbzDTDJWI2IA5nHAw9M1A8Sx
Xqy+RdVNprvAgNDebS3McQHNumTld790MQzdp5mZEpnvfZ/q07RckVsED70zchbxCRNFMpZdd6io
knSyAE12jRFNwljkRaHaMkRvf1ZZaAmIJMu4TCFtYgaQAV7dLaLGTfnI984STsMmoVC8SFbNPRhO
unIEbcHkljGv3T6QBZuvWoFNNjLMzeBryPVEDbjYD0esLfjEIP0OhYzUv/ky2GzavbG8hrH3A/NY
YcadsVOhp5b6y9Arsw864LYmvmeWnv+OR73IDRmbXypYj2NwDpXme264VNwULARNdtbyr7SH4ilw
kNnvL/55+fXWZNf8cByAQUhZGJaIN/D5qvPJTlcbWVoBMnwEPJj9Wry8PWbWLu/OENTzJc9GB9e5
m73gs7l4pynbNlNCRbmuYDF0t20Bqq/aOjWKtwpUwIDze28lmqrToa2nCLfi0mwUTTHqrmd4I8c0
xu/JP1x+E2PykO04qojUAXfwUX1cDGU254JQi03Okblle6pwWKpsr9ZOklY/4vtauAw+/rUZVwdX
oD996ileu/4AbohgI3TRcp4bNB4FL/YPUatkc4Lu2MZl339jGhMVQfkcLTsbGhrRFwnS59D8kO3n
6zkdOTsxUsQJl4wk/z9hGo2pFymaogaKwo/W5Kc5rvMPkS7Ib55gLDYhm+WthHpPIn31EXxYX4Qv
p1bIgwYyTuXs3XrB7GJZ085b6kNnocjP1OE44/+14QIMHjN1xi1Yc960982/3+GlCjDDiX3bluE5
0r/qK/ZCotqfc63dnOO0V+Y/SW36hKKKvurU6zs2piXE+miPzFxQ3ApIzykDOy5rowRuKWlANm5A
0sQiEeaqxQhrbsM0K2TIfjnSQlQmD88yQXrg2uuUWD28pv3O91276ybnNeLOBX3oNoGz/07P6Sh3
2qx4z3ovd/dUjST2cNFiMK4BU2DfDU5ifTyAX+OrVZHflqSFFIgcc/xPMKqrS4wM7s7v9yk35Bro
JrcQkNZaLMSvq9uiLYQCtwbEf9Z+4sa6NFyKbPwtsePOd+2i17c1TngRUqKsEH++r20tmBV2nr7z
C+MtFMiXrCOm5u18CvSYfvMWRleXPPJJS+T933Rasj80meS0C5qxho103ElHqMTiMsn9rbq9akIy
TM/2Vj9KKHi1Jmlgach93/23dfMizoZTnBDnAzSfi9Mfp3l7OzOekt0p2Tac6IJVegkWofh9Ic01
9lbv82B0cy76kMhRrYAZAXJFFYRb9WLhR9dM04of6EZWmscDQtMwjxxwUlhxFfWXRiazqxAxhcO/
36/MeRoaUoRuPe9SE2CH95AG5O+7Umyccahzs+0MyozXwVpyhNra27qWBRENZVbpLsZbgz3zYSvk
tG8b44uk+BI+fKWBo9ZEDd2jWU8Ao4Sn0M/BlIY8KiIX+CayBRxurR1FgQcMGtpP6XXAL5rMajds
0jffHKLUhSMA0YxEMURG8qBcOclMCjFWbo0PEPU57dp0HSd3u1GLQP2KxCJCANwY4sKMp+riBl5f
PCvEwFJIdsMYf0RXBkw11T6St5ViKliY9tPhsoTLaKHwozANy0nM7dMmmRcel7Upkb0TYCz5KAK7
BbRuw3RPCUPyxm5Udej3Vk/vtlZfG0MCulveEN3OVAGelYQURFNPyCR7tiDziNtfSX1LN4gPRHD/
kpLwYuK8je4zNPK5zp8j/dYJ3HObtxazH9obtp+lJyGSuFr1MRRjsLbALo/34GWF10BXb1C1++I3
n59MP7CeXp6GFoLVv+Tkx4nKTY0YFx5U5teWEkUmM7981ZUvZIhUqXFILngLsG9fwmBN7Mfzt6Mz
Kk6aRF/+dNv9f+LMY/I9Q5JBz9vJu6dBsBD/X/aIp6rKBsQJ3MWG6fE0LxXVEKOZy52j15L6OIC1
2MkIKTiTepntqFXSfuqjA7GMBnVSyepqhJJE7FTaFuiLmfQ5jasyrgmjNhzFrzlQjrHpD7sBXdAC
JtDxaSkK0wMcJW5WSLMDIoOUS/iKZcdAbyRxotvjfsSCZtZ/K14DHn+rYceBc/S+vW5r4Q0lTJWn
UhCgxE0nkBcd9EYG6B9eK29kmO/AXf2G6bs+XudoKnZI6mQrj30Dj9BNGOdGmdGrIyX6snOccYcF
BxR+jUAfjGuZ5U7jNySYW3FrEhorJZ1Y1QvRd+9j9jjOUSmeG3bJRHJKV7cCqA6pKWrL4v0Cq+8j
BKBw1wovpV0utxvdtMUZf6LU6VeFBgh19tY36/MrpLw3zqpwQMIjUMPpwUI4LpuPnD2SWE3XH/qw
jzq07Gj41KYcTmW2ZTaTia3TuN3Whbrc2hckNpb4q364h8Cs4EIqmQGSwssabJ9cTQ37Zr1qq//l
3u+ZX0S31UIos/toBrUkIdWefVOXTC8t2BKzx8bVkA+9AnpiPC2MdVOYRCIKswS37IsFbxGl+tzg
AejP3eEGnpbMAgHdFdHkslIr3ygmkmP2mPoTrUYf1la79r4YMJydDxFuUXwEN9pj6jXzt97n5dXv
AKZnwQS8fAsDxSesDLdX6bR1S0cxVYTmlsgZ6yENnG7C7ZTDpoS1oNFtvNCAbxafRRrXJUkhI9MQ
qYNllEOrjVoG1UCBr/4NgXvZP6sN8x0n4MFpPV7iWbJ9D4EBqJQMWJk26xk2a+9xI626gURwALnU
2qC+VZwJMSjtdG9DirgeFjI4hmukv/SomlIi5odMPp0bDOUdz/2lMazR971ycezXjQPP2p6CUdd9
Snxm/pVXITfG9GYuogn+43Zm5+hF65CXEtyd7u9UICUzB1Ej8rTMGgd7Xli+S250d+/dvg0JH5ed
osVeYLZ9I8Z9jFBLwsontFjsk2Yui97jLq77s6HIFqJlNEwd4M4rox0zclt/mDSuptFIR9SWOe5A
Efk1gjqE5RGLWzVwRdnfTRQYSJfysWEpD1HW+dW/YCLOWwjz6Gu0drGVpUiTS2jhFExCUX95Hqec
79FKDSBmWmx90/jfOSYccnPirbdKbklEzxA9EHwKusUFJbicWcVB4R8ixkhbVGmh0ZnpDmb3K5U/
q4K846LSFMmOmS1upQTRbkvSY0D/KfsX6DNWj9JpNq5JaZJ82y6YFkMsKEaCAQlsKeq416KkTvaI
aUec0A/WLBlhEiueqPcwlEVq/jvj4dDfOhmMG3f8BG7yUW6AAnmwvF6o3ZIM9MoEkknx1wuEXmvJ
tmnAsU+BgPgoePlskLArxqghvNCQSQbhy04MVQMjdC7qqVaA9LnjKXZRCrBH8rM0KqT7r4yzU7PF
xF+gpbtTkbZWABtkhOBfPL1yfPKP6BFcJQ1ZHf0pLaSvt/Qj7r+GYlibO/AyDWlqRbCPyOsWFryn
dfD1VbcuB+tD/+mhvxQOo29Af+Tue/UBOo07giA6Xtl7RQ24MJxVYTT+2botiH9DPssSvhtdnBom
A1QZTdcq9c7bc5/ug32Ay8cIKcXWr0fuX6w7Y8BCpNV+1eB59Go40vSsJA+LY1pyrslZ67vVqZho
6ERyycoGT4I/ALssNzfr/iSa9gSOIfYPd3+o6pj1WwdW9BacbtTFD6PQ6biM3QgL5dqPl8Ic1HaI
f+UHqzD8sqeEMo9RS+Nf8LXtYrC+3XPwo2M2suZPpPUZ3rs67vW9U7Hj2pjJltgWnSOqJvHWrkDA
k+0/n4WzwQUOfgW6TTLhQ1Ggi+7P2uoZJ+EB8MSRgWQeIvT4oTq5Wqw5CwM0hiiP4ZMJKVs5bgTl
TxU3o8Q76I9J0tII6XXB20TGrLuKvItMLkttbkIitHaIIEF5xVWAtreaZE8F/Az4Upv3sMKv2zVB
Se5fWmzVqMzLXmGOzStuNBTCgk9OOPGEWqrgCZ+ecnaXKqry4IX7+FpNkKg2p6o3MM/+SWEaBq2x
oc0zd9dJ1p+MMEGgpryMA4RDGgGPHvuzElP28XX8iEBhg14HPjY6wkdcCsch7OU8VBON/r7FsVHm
N7uPN6KATo4C0JhGVM2ibtZxWF6bele3U2JefR1WjMzwsVf0SR/wgxwKz3n6LSrNEpw6UiHABebs
pC4TPAdoJ5dx0CyYTLP/2DgG9H4JCApTAV/341WddJ0/Q9uoz4FmpYxT1Y8YAkYsc6g43UEsRa6o
2JcXKSzbdNmtrljgt3Z4CGas/3/5uovrUvHocLPiZlZjM4KI6BYbb9kmkR3Ac4RWmBPvmmxuNW3M
DxPxZj70swJfSypNw5aTX6Macvt59YcsZLye8Lewkj4pmztFpVmqd1D7movntIVCjQWdM75uN5h8
qS0wI94Pwq+93miuAafzKagRrvLsL1GrrtB33IanSEaluG4kP8Q41mMBYk5hiVRYQMKsvqi4OKsO
eOuic8OG5ruqh+yIHMvZiXACZWXEk2wTTtDfUxrILDMoUByWuCv3x6HoZ1swtZUAJGX3MAc2N+Hj
PORDUx0gQNDo+h87T4QBo5zRP9LJoPmF2EgPkpuNcwT/ywzj4QGLnh0heMufeDPsXp846ZMcdwJe
NP5I+nGpeUVlbPDiooYI0VOYuyHSv60R6tD38DV404MTLbRyMZ6aUROD3bly5IWoS7bGP2NwSXSY
pCwjAJLqPSQO33KkO5TQfeJysszjIwFLR4gIjEAcf0wJa+pRMpyg3Lvce4DquN0o7d0Hej+Jf9yf
YtueLsvdMND7dXfX+5gDZChABTHpgxAdMB3dIXvZGcB6/YwLwBmaKwmS6NRzi66Icby0LN+Mbo/z
hK8ikntIWqYLxqVncnDTdsvwgFdy05TSBA855JhC9qwVVV8ljjYoYEnfRCyv//5kIlDqXK4kzmAE
gOqQiHvOaukY1xlSa/j0o1TzXlt2UKsceGLh/3oaXDxEJXcsDnjLDlrUGkZdt8ZxwmxUErF3msGX
PVZviuB9Ahtve/g/VIzpQ6PwUkDu/28/EUpdCawpfgjH0R6rfGQIdcFIW9SuNgJmam7lvmIfJi6q
FjeLVzZt3dewgD2omxoRQGKgm7caC1cXOQBmFXkX4c/5xaxCrwBbIju6Y+87rrEycBywWFEPqwYS
zY/ql3OlxQpDYBS8TMb9KV2GLPAa+XIjTDqwZC6aRJCiuGpcAlvyflYlVUyjVxn+ycJttfYUpMJZ
qvcP2S1c6ng6Qs8eGa/DHQYNOb5IkaqncBr2bs9dbECFbRW9dQDJn9QSkHXXSc1QrbpuAoZRqvqr
+a9m4IXVvKiyRKe74cqxihAbqvQNNAlSyJoo/p3Vg9dZuyd5t3ilpm07rOD4Eb5XVKc9evwNi+aB
eyOW78tQX55tgzq+w/iJ1cRe5dtwcxf7cWyne/B7rB3HfEnrHRnhYQuKMDEvidBVVPYi04kEKlWK
8/blcdMu/rTP2wKvcs4Qx+Ng8AIsY21qTGj0kkkAPpIsw045HGEJyERkCp9PHxYbyuIEyKGhVW8y
wblMhziNRN9HQadgotyaD8sOZ6pcoBRt+sBLbVoMOKx/rqSb+mcb9Y/Q7mlZztNscYiEflk6MZaf
ejSpyZ1Dc2otrNEodHF4kK+Z93/PO0ogypxwohGQUK5Rbut9n1Z+JxSQitAAC6dFmzXhe6DFZFDs
tVAcwI2XpksUj6ulkdPuWt7C6ZxmoqWgjd6O3++zbuigUmAoFvvFvJXFzrDtJ8jtpXutd+ptKGB8
xTPCML6lGSPEk8TFs54b1SE9jddF0FsDvDHiMvt4BKxR5djxqj2tkKu2e4zpFBGhlQFepFJO28DJ
8N8F47yxed7jCNOfpKXlzoFFY1SRd4hRGk4mmVUNZ23i2ZL2GsTJ04i5BhGtkGFszG1fjIHWykAG
eouPuDzMSiGZVTl1tc8t8nW5uCjzAvrVVuKjRM6gM/nMbeN4CR5lM3zCBo/qIT8ZZ1ROUwql/mXd
VLg3gbv/kKcnvkavbEOmPyTE7JFxsQ2iQHN4OtFYH4zvsiuwIlDDa8feHCmgPj9Rnv935+FOw4Mq
zGi6wWnJaM7lFTx10lMC7uiUR4RL5hp3ZHuSY7BK8ekl2GufGASgfKylDwQ8WWzqwhvTyZ2I81Wj
4JET4pk15FPVJjXByNGOcM3gEwuDBIHSGIGiOiFsWOWt0eFl0ju7sXGNp0GJGBBVVtgNn0n1vi2o
HezoSr/+t5LiiLsR4THqfCjIWZHIdVHFK4XywF7IESrgq3FPh1aifMRIyn0OrdNahaAYhpVxyrQs
N/2fESTFTIXXtRurN2XSOdkFv2rIkbdWmAwKsZJ7BEOfACQgcLD96eQmT0H/q4nOKnhjBU9mwu7B
gM8EoFVt0ULOA/J/x31yZsySrTPqi1BWfNstKkJsQ0XLRi8/XR4rFmQ7RheeQVfIrTGMN7xnlg6Q
vDbKS9uCzuj72dEz1x7lIhY/n239LsYu9KY6KKdZLyfQyTcknqNZVyskcvH82NNF6MFnfYr2NilB
UL8Pdfxce2J1TNIX9uYe8qZaXASF04wlTgeNOB79Kn7jaqTMbNweFTZPZDtCtYu3nc7gkCxR1caG
nyUMC6sxnYaPmQtB5PZuh/KkycNuCpeVh61vZCr0nc0e8n+KGPvMgMtNFSXWLnDhL17EKfWUxkSV
PFw5Jg6Tmn1J1Mvc4IBpN4SCxwwe2QhW/3tDOt6JGPtNEqcn8txdMTbSAfqPekCkQqiW3T6wUxtd
17ffIUJO2GtDgW0FfBIQQi/sQ5YFMGvCCWpxneMM+TnTpr09jxncS0dhEb30hIOt5n9r3GTX4jhk
LinihU5vTCJHmZ8uNRlszriWyUUq3Ey/sZTuPqEv/SI8eL1s3ilgplsr4VjdptbjhbUJBXKrX1lZ
wiG7h1zgO8pmtPVgDfncDcqxUNpcbDRrpytfFfGNhOrmOggg7p9m0PP32figmT47E0aSqSRv0RAC
LxkOWUMQ428IO8sEsKbOLjqY53OY77PADkgdLG3rFr1tMPQ2OxD98PGavEmftqBzFTy9+WAzfavL
yHRzCmbMUfPRg67plMRGwNm0i6ioXxtEt2OrqbghnRCCN3C9VPQ3YkWBckkNqw34hAyEjv88pwOu
mKTmXwowC+bZPDsk0krmvf6tNIMHh5OMJp2x0lbwdr9lLXsXyelUbHzVQ1lA+zgzF4Qvd9j+WnuX
3XwgN9xg9C1X9y12jMjiOfLtmXm7CF+3z2rhoKdAE5DXkx1zNUCznkwWP+0hnKy1hqasnGBiuTrG
h1Ghg0IuQA7f/6jnkYwH3zVqLPGEXkKm55Qc+BpRkpdsOsmNqgiTdRnWLPVdxeIhYhOcmKkmQ445
DEaG7xevSgcZyhRRl2lKpP28kPZtZ5yb11g1E6CC5Y1rFi22FZH/5MxQwHinq7z2ekQud/oFNdoC
sPg6oD9Ch/K0Bswve0QU0zkqoFzK3clHaZMAyEusgC15CYBBsqQlleSCV2m1XIwPFDVUp0+BBIhL
XxhAONlHgREW7pGUIQvXTghtIjJgYVIv/vy716FJ1UQu+G2ZPk9PqdmSi4yKZXLwoaPyMfxZcCSO
U45rWSm1hSc1Utn6VVnNwixGcCJyrj9oRPW/A5Sg8FjAwT7uOU75HEUZMp06Eg47wx36rReuT0pl
DXFPgL3zf3LAxdoVgxeTb5dEUBqS3fF/4A//QWIadH9dI9xc/vrMfdzKRHadm5f1Nu1Bt84Ns13k
h16VkRBmrHKoyWKIrI0B789cFKmbzaoUOZKJQmkNcuwcMWQxjnusGY8UHnW5TCRLILovcfSjoceq
1eV+NTTdrYKMfwnCW1df57ZWtJjZG+Fh7sBjgPG0E9MAE870oJa1q/WruR9sQQcqC0jvbcLMPGoQ
DAo6be9hlH/FxFpUsrP7qRGoAXD1+gZnMMlObhGnLFelrY951tIBv6JA0HlGrDNtG9Yp5ejoR4y+
7MFUxngH1zqB+W4wdkVw9iH5so/lo+e8Q4eMpEqeKZFLIH96FeRILy+3FlosKy983EcJzrPjTP6X
AxAfF89aFAb9rCIMJNlF+QY2eNiLk8jfCGjjClvOgcGEfzyzuRaQERk5Zm1AXMPUXbpL5qdVxoUI
5nKpwv/anG71IuV8sMQePSBHNKhif/nmXN8V/WBZJm3PhOelo3KQ1bl9a275ePClx18asWf1b8mc
aye1nyz1ftkJAAA1gFPP+d5lGJbh0ecnlLN6sjv1UEEJC2r007iIbQY+v4LNdRzUyrDrjEnbZ8TI
6JCteHapWDej7+EQEq3K3p5If9axfizmaHZVrVuIv1Mkh6FpXVYdLTkoymOo2gQvEuSfC3neMW/0
PfSHVe5oKK2aYTweo+mfgxvpIxHhk2u7DpGRnaDQmb+eu67/8WP37bLPURIlwNvfEF1ASKeprQ/f
RG7sbaKqkIVK0EjzGO/aPtLcl73JC1bVzqagrYMGiggsJ2cY0bDMhebm72dRg7a6137Ccq8uRDVv
2LjgocN2d8reH8Gv+Sou1HUVGctZQvT6+YkMbFIZ+r9q52wPEi/ew9ch0jfuOjtuzO10nFKr9I8c
X2k4oWFlnC975ZmX8taOUcRqsPRWYm6278dvnR/pwvaMSREZwxMGn3wLp/+fyCwTeTCHoW/qi8/9
VsXZ1TSzwh1/kvL88vEYzxFeNY0g2AqXBApCOKWiAU/f+NuqNIq5nwjiYIhLqxeZijIrCL6GfBE5
gyAgGT0q9ffBqjaBHH0mFcrPZMRUnBq+/cfqHY7lkw83yHZoFragWEkcFHBtl5KHAbnqXCAd/rKN
Y7wfww5J2SoysfugpyWdkOR9LKsLhtLnCcP2EuaA5YRrR0An+NU1YKAJb4lzoMgjtwOR0Eqc7BIG
yxwgbAdxsdGmteT4i887j/UnW6k3/NUTZPnQHcrCyVx+HAZ2Bnzt59QeUK3YUqdLKeqCoHtfvv0Z
mhPIjjzJZELsSnWjJYLwLBzm3qLBKHrvPgfl5PjeG+6lEAyrmlX5IcFTNcwJ13xEboWbkRnMAem1
SJiUEEJjIdAQuXZf3MZLcYF1JcgK5pAEiiOHmt81GOjYFXd5Q/9Nk78TY+aMsYcT0CPFuh7NLfHJ
Xxi9N510TwkC7SVXzh5+Fl2hgpscIiw3IdDwoAd/GNAWKAUaXpFRRh9XvINPtNHgwPWUn7M4QatD
DRf5yevod7PclGOzj7o1k2U1zsTKDOVYiCQoSLe4Wvzanioq1kPJakZieSc1q/oP/cFCCzOtn4P+
KYFxi8DdXHR/pSJWp2+mg27I6jpDVkh3/lS6iU2/I23H8/1mSg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

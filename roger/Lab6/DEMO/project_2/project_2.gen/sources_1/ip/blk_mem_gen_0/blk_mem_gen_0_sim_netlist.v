// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov 14 15:56:16 2024
// Host        : RGWIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/sweri/Desktop/HD/roger/Lab6/DEMO/project_2/project_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20240)
`pragma protect data_block
Nhenn2LKYKCdQZwXcGDfUldTqVNs0Rj8RuI7hH4n0FW1YKfIl+u8kq4XnCIRA+mbdSJu7jigp3KO
h8keiakzf2LUNFT+L91cuFuEnRjhqP07Zv1YwpRTZvHI2jrg8NBRjveVZmqPrUSoIAh5CmjXzSPd
Fq8h2Hwbr/c0oY58TM0PimLE2JPhIBl/fBPyTtaULH0HHHtRN45isoRPF8fIvgWPj3yQNMo3Xaxu
EdV/PEC6T3OG+ofZoNs64nzklMUDNeZqxefwcsmmSn9VuALCf43FiTb08KcI2/dJLrcWsRHx8w/c
P5QuP5Y25kbDG2uKHT1fIkwI1o5sWZIyZ2BbyBikpbODV8kfW2zO59Pu3uKL+12tDhZdB42A16Ib
4DAW9wjKfAQ++hUNnP/oFTib9egWcaXg6gvSHi2Udh45n0oj6No/ppTG6dkiEtWAIIHlATR4kR1/
5RWLVvqx3bI05lIpZABxxGuIR6H45lD2ON6bVHkDUN/3wErByeK0gYg6JUalWIWxrHzrqepoKf2y
GGYECb8PaG1M1nC2wIDX6+tKwRHGG/Dgqxc3EKv2790bhmfLUgVcJH1lKa35Qt7/bMYl3s7fzzKV
bHPVHg6EyKhOW5a/7poAP4dhVOybLFP+9PMyM3RGmmkmtqOVk3OXlJbTBm998li/Uk2DIoTCDhbk
1x236NFPICbpNDjIougdT6TjbifHaAXXCgeyoZLPSoBLFn9udm4cwqssYEaFpNNVPUVFihVwUjgA
VG2wgMbquB+fmViyip7msG9SBMrIOPTSPDGppqDFYllLwkXw6RQ5yNRbne7d8j1SYHuW/Mm5Fl4/
SRVSk+NwtZsSwOpgkT1v66mWfjAZZyh/G+QrdG2EP0Fq4Wsz9kae01THYcg8pxJCRNFdwPZRoICg
A9/kfeNmsu8up77VdjN0b+WJAfgJJiHn/3fScGuTEdUXKPO4Zgr1yxgjJaiBILVgA/mBofxPo7l8
ccVSixz5hfZrwM3qFxvx/NggpkFLywSGauUVnBuVrNyuZfOb/m8kGUigD7sZfSe6GzmkF8ez2hom
H88PvbDZERHQ2M86ZbS+iXwPuMmzmHDhSa2nnxQZETBT6qXnF16TDpwdhrW8m0wcNoWBJXgbpFo4
5qx7obod0VZz2Tr+5fhoQQttrBBFjRlEbx0SSBL3HGLjawQdamTDXphhFPrd1z59g+lSrF8WEQ1D
KwbTiALnwOF9MRxNR7r+9n755tOLgUkZAaixsu1kipvsuCucLZIOQ3XAKZhMRPlX2XSLdSoQR1LP
9B+2IYwBbYC1tySOZToEl1MirLCLzPDbwL3XmcXU85Xlj421k8Yvtu6y2a5iTXcgRn0YKt1AnZWI
VmlqR21zBv90LokFQEsNAS5UQSZ74GbalPN32R1S8oRlLixD8VmjX+Kt0Ygwp6Yx1qCbdR1rR+9o
UGdMFrQVe+f1NCVJI6ks3zPlQ96MiqspUnah0IXFB7LTSac97QK1DSRTqNEB3RTa6h71xxI/SDyO
HU2Lr1hWc8uztsnUxpW+Lr3Rg11xtfg2IK8sxy3htyLsrFpW0a8660EKa1mctiRr3lGgWF8AfUWy
PssZJUMHvlnQeIMlxhIbk9GZkBAN5+7WalpuUzILmYOdYIduhnVLA6WLOXPUsVxHahFZeE2jntSN
DqsM2Ox/jhTQIZuK86AHPtXkDKLRNDUmBm0LU/uAtDVrTDSlRZTB714Ha9fW92RXJY/4FDLGNJ+7
8WayZ1GFDahJYSlHNNhGUXPSjYBaNtJNP5vpXO2SI6srN9b0l89EXszIL1jnK5Fe3yJjXI7P2nGr
7MYJ7BJsifdv/4rWcT0HIR/dq+5scBKtSWJzzrQ8XgTUTjtM/RFNLw0c6mso+hDEHiPH2U4jc6sT
eIvhurFfcXbbs1WfLxbbMzhQqV/Q3YZKXwo7nKb7WHtgeZ42Z3BNdVXR8LN+IuYx4auf6dIC90zs
+PgrVgLxxion1on8q0SxBnDvkFjK8+FiKkjhzpbGLhxsEtXIbM9YokB0cD6eovnNlY90bndapn5f
3j2FFN61OdPu8k4FdpqSk6wE8XyUEz2FXc26i4DkGsC4FfBN7xqwKP0GldnhnGVD876Af4pseI+C
R8iCmsshcjvkPHc6zKoPpv55NeCSXr+Aag+ICuMUNXvUBOjsUNiMPswhxQ8FpKYW1hd9o84d0qcd
xIiErqP1TKgKNpWUWgMOqaR2YMlZcCN6zz0B5ysdO5LoYhCcz1Ctd0foL3U649vZpmBdYfz0lTg+
LrTPrTPuvXLQi89VMuY9Di1mCSS3yFtGEzZbjTjDsm7WBcRywEzG2rqaAoNE+5wesMlEJkwGI5a1
apiGeoUzasHb0egidW4A/3xJaOEe5wIZg3Tfuc959pA1qlcbOfWVdLQ9xrCnj/gfQ0YroUykXRLh
rf30ZlAUCANNy5S0N61jxsJCO4BcRCqdi+fw28uGS/AMYwOg5RAzEC07qKbGrNwr6g6A9J0wY3xd
5Xlh9o1nmHHwEj0M4ZuwL+r+S7G+RN0dV9IM6rnz6HjxzC3PxROFKJYL9ol4dDY8mD7iuGKYS9VI
Q/v/dDdO+Acy4wBtjAt67K+77qK7uTVc7jw1kbRn/sPgx8gIv616GtPKq2BG6UpOJxlfakdZoEiy
3aB3oFPiqk0FSZYIPxpTc5AEzWK1x5QhpNZJjp4CGon3S+YcdgJFwEo6c6vN56hmMfxNbWcLxfta
vJo41G7Wlqsi+A3QMPjZJHh5sIypP6AXfIY78ynaNG/cvz1IIEkeauUoNSS6Z6qtkiM5QlwrAOzv
IkUwjZgEyRuNvDqkEpYJLFcHgdmvF/Ac9HIl+qYN+MhuZIvytv8YM/4TKYuhlkLxvw4LSKDq/h/h
usp4fkX8ZiNhmUHU5N2qnbnSxZiupAfWDsoIWaOQsT7y2JZ5lFdGS9VOC/W6DMoV8p3pv3duhiwy
n0fVd8XoaBgSeKa1NxPZsUauqOXx0gKPoqNLbgl/0nf0RW4mPWASjQo1+0JWGbkCi7tufPc0oQnx
EEBc2w1g1HMIBbNJEA0qo5YC7SSAZkIgPl98vemPUOpXM00cxNZU7z8nrko6LgTNTN/M5t1jxIRo
+tocnUdA9X2e0cgwZJ7nG7VWgXCHBstWy+itEfai/r5zFWA9M4glnb2SltVP6cV9DG56Gm4Kr6Pw
zbOihjlFJs3iupeP1FSI6pWnWNWo7eguGZPG1+DdZyWHHUMOxnrgDVk0L1aroh2jNB//TKVO+CAm
jzsD4z+ikHabHcfqiH97i1DUSvW8zo+ysbuVjUTrYZ0OgBzMULEwp3ZwpjsnL9ETQds2CdN7ySQ2
mIpjEXIP5agAjLZVmc/GBlhT8HTY6QiOSkg5qqXZPBvAGGMl07InJrk1veubZAPw5BhwOkYipVzC
p0IgUvksgkboErcJughR/UFd0fMHL1G2JfG4wcq2o3JHNzaUto/k5d1zcvUwaLCu8fsDbTJTcALR
GHZ5Lo6Vx//7dOQA2zYt/3aN2gokLNvYG4nHUHDTgWqkpoT69HzctxCn942zbeh7ZzLebyRH1gBd
0+jaQY3Zpg6CBpX/KhSg+i85gIf/Uij0yrjbu8qOBeUP5wGd3EqEgsdY5VbaG/VEfbvsYwNaCcu0
8LVSd//V3XcZk34xOqWobBt2koGt2zkJAFbOdiaRXtjHNO42rKaMf2uyQXPsN1RpoBVjrrvfz2Hx
lCulbwHe61FbSwcE0a3F0qbg9klPtK894wxMqz/GQeaCo/sg/V6M+9eqKgy0tpuzScIZ7fOPliSW
qKtAM8emhWPRiZPHhfbMx0BG2447zSnw5BqJkTgyuarO5q6is28rG76H5tOQZ7g/CFdrDu8cMTfp
Z6UsJHY3gChmhHP0YXxWO2dRpeaiEsb5RgWfhTVqfpR8aNtWCqjUTBTHJcL/3Lwszneto1n87VmO
y/Wofgne5J4V3D6TNyip1x1wmj5Fnq2/R67EchxLyraOsHh3ttg38AMkz6ZxGw2LJxnf2XwCwOxo
KNkc//uPXs9Ht7fLjeIZ1JuqzInGgXC8HrbU0hAv1cyxrEuo55GJcZxpMu6iA6KZzljLeyFxB8re
Gqq5R6owYD/JcSuntlX9M4viCcM7FDJ9bJVDH2bYTBXH7wpmbXz/NdaPWgQQBS9YFFzdE0e+H5ms
y8cQn62ikmDR5bNgqI7a5OFr9U6wdcE4nD40/fl9RgcKfVUsNE9+lKGEUcdg92h6sMXsBHzmHBBx
oSt3TnWKgsHra8kQJEA5uUoNeTKAhu7cTZDWNRb/V8E3uvQT3InA/8MzAAsOzQy6AQJnTzZe/vUn
DRKqgcJbKNihR9Vp1CMo/IBFfBZQSxjpHNRYmFoHMgfGMpyEy3ADp7nKjDbVlwPxlOR6a9bzuk2/
o5K3EWyVISV5GJchklOrMOOMk9SIr8GhslLFAXA2e48tlym6HJ3ASJ4bmQCO9jAOYjbhRhVw7Tc0
eQbVOlFZvGigChMl/OPCrVBtH6OMjEtALW+90ekBN9XbZsC55Qj0spJa3aoce4dZkIMoOfu323fU
7u9CtS89+EDbq6EfKQ51hXSew7GDY09BKwF+EC25669QIo0/pxVFkcNTEYet9uHPiriS8jPDVOGG
i8T0rUWR/Lr1O8erccHarWKBlNYjWRhpY7shPYT/VGhMba8WTLekSf9dchsVM81HzsjSMzdYJqqC
fIfrOzXq2pOcKhW+eYZsMfPj8ACYmC4hGKYMJduPrgUET4e6dUz/8rVo8dG+VdLw5vQyD4TrwdS9
h6tFSjbInyJoUo83I9dOaJTpwZFakoOR9MrPI8I1EzaXOGbjBKKs/K3PWrvNWSe6eIZ/79qeTV1r
dH+Q05KdR230eU8vXS2T0Zi597opV04PJu7ohr4cdYqYy77n9p+72hRmLQaBZtc/MCaZEg+AiKdb
eWpk4BV5QytAORNgZmB3/5cfBjAbQ6W458Iu98VOo/k4fczTfc0m2llE3fhw99fhWZ5clhVKAOUX
CoTN46Ze+MdDj3lF1xQdavXA9siom/aio9e+tZ2TAIcGnqymJRked6N8Ht28SRuCvngkoS0BARGg
o92omTryk3bcGX3tCg2t8qZ6VYaJ3eO/a/A9j1LGqlN+IA1AGR2YbWkrUon3eXiJnDBCrH301VMr
L4LUbCiKNcqJWy5mw0cRC/+FL7Ky1MWQGogFPQ+KjBqRNMHie7W3jZHZaqRpxGqacmZMlEJAF530
RGP8fmAF1HK20zmDWF9ugUOzUdFbNReeNsCf5Ab8yTPcMsYuDjp3buZju3tBU/TsLqSU71OzJiyh
G0INYRUcC6PIOWCUWRrwALE3kd6Cr7OVUYZ7yH9H922zv0WQBiDHLpqsGnPnLyN+mLImqkfcMmiD
+Q1b3J0T851o7mQTogLv4TYMiSbllrJxQwUaezE61CA1hyf0/+pzg3JD6zpGzc1r9BTF9ft+nW64
ZXlOBMGaWrcjtNGSOb2eXyiCxMIHm2mp6Yg44BviFn3etGUVGSjLP7Y3vXXp84dWWd6Jt/j88ehD
9XrG7t/FysNpwjKPNRUyPgjGh+1mKX3uzvWiWhy5YtVdAqqpGMpsCMrY+qt34m/p65dIyhTzY4Qf
WZqcIeldS3kD310n/M8aV6v07QYXlVv5CC+lJrKySpO68P55S/27MbMW50RRC6zbTcj/nNBrHB7z
PLc1YuzEPFQ+TAEEI8rO851vtpBZobvVor9QaPMc3ga7ROLOltC2O+r0uxoy4lTmW1IleqgBQELU
Fq3wyukTq3T0q0DWDMIEs018vcVPbGSZIV9ZLK/1JBcc+lcmsjN67btMg4E67HPU/rsAy7Dv8ZAY
oveirBTFAzZ/YHUvuXClp2DqPZobTEQaYKe3b4gIStUKa5yORMoP0fPZIL74FOhI8zrM9RCqoQHh
yeUGg7ez2rfErYKTrP0TfRYExS53l/tX0073S0e/CFZ+VcFNbEAMIxaTvzU44XsTqW6/9p5/18Ht
G8hOwoNRaRwvZRgyRa7GE1lgb80i/TuxK+jnNGvCQr2gn61tO0lC6Ti2kV9gUyeK8rQqfMO3p6G3
szCqGzegntkzpF4nS2e+EIDmDxSLh04NwTEBLtK0rnprl8rsk9Qz/vJENdHbXw4Vv5RVUnMB53qw
qUv+h/LbdBD9Yv1ehWHuBCSLhEimUnGTHLhS3RfNoKopFTJWHJnC6TIkexvA2u0RSgu0mTsZzYvF
/T5xiRTmi8X3kitt72NcbT94UXmL7AwIx4LjZQqEZdKxWBILKv4HMxbVa9zCblJgfs16MjqPqlKc
mNXmUBmOB+vPVd5oEflI4sJ2IoVzlUIBvlUpUQO/6chbhQ+uSLsH1sr4LEyf9xYSAIhUfcsRee4D
p1P8pDwemR19s89yq478nqsGtlgMikLL1lEfCqY+B8PiQVxbWEWbhieHTHgEkoRerQ5etoNmatkd
P2kV2y+nHCF14JYM2eCJD4mqmhTxfPwd1nvvJQK5da0u03BN58XFpj6SvH63dMWDlnNfyyv2n6KO
CQOyvn7d+jDXtfqXeXp8wiCMzrSehms2JbtycoimSMZ3zTbbejWjDi5xdKd1MSSwNpxMsf7h8hXW
NppDdOCEwJs/+WmS0Y8l7FS+UOGfB+dH/M9p3ceLaongo7NLx+cHQns0Xb/yitrHhDkY2dniLqiL
0A5P4iyA/dr/G6eHGMD7aJ7xDF+ImK3avtS9fMYnumGjaC7Lu/i6BnagmDmHWJ9TTHVWYTDK6DYu
983UYlbtxrpt/F7989cJ7mXdHFPmvNbD84q5tpPmT41FsFCmyjesVLqawjsX79qDBdiDyOYdr+5X
kOdX4ErqqsI+GDpWtoBpTHclfojotHfRh4wyddbW5xTdBRzhY9Yor+e8dKP4Y7ygqxEyAZ+fehSm
JJAESIlS7IqTfBDTpEQpqC/l35Eyuu7uejIwiB7gp9VNq/nuvm6Rr2KFzvHr5GCI4/+jfawEmhuP
rdA3tbDYeRbVygs+lFjsNgYjdFmi0UeW2Y76V9LkApPzWGvh0NwX6r1CSU3UTRGb4M9ehXPACJtX
4cffpgtCO1DiP+FHLrZZaxxuXUQ0ZJSBQBFPTQMj/KxL67NKdIqa26+0J2koSJggD0jSqNNTzgH2
Bk1mSGJ/Q7KBYMncF2qbOy02kIclbsGJf4zPQ8B90vsFrQ/TbxtRwKgi3MzYsP3uI9xNgJ9Nd37s
hsR5z+cvYVd1f/rlg1Gyn3ZCIC09VZtD3Xsw8gOtgrG9XqWDmTs2Q0mEM3XgAhYgjDnF9TR3AfAn
ahlcxKp0sWiYFQUQ+lY8jzxHgo8gKzgdJLh82ZvF3PlAjESW5FrnuvwnNCPlxfaAw+ATMNQ4N8QG
8y0mDdxj2wea8lKW6bLtBsckNu36+eGjxXohm8+mngBkKH5vSPQFB3bu/fRpQ45SeuR/AJ+J/+/R
K2+WMg5TPzMWN58tA5rGR12ttgh4r9D4at/EKK3eSJGVo2TvmXDKqYHhM8UpNTqZEq3mmXY6Kub5
Vwcd5x2/6pP6EOp21L23XheybIBteE+BmQYwQzgeUN22FyVpGnqS5iJYVwt4HZjyZskEMcQVEBl0
m9rzq7ajU1gWPM8ijPk6pctr2HbL8PCukGWEHcMDGBkeJ3k3BmCvxlp/UtcBKqOPDBbTZsTfipw2
kv4O0xrAFXxkf/UuCYHs1plPTAuVLOIgDN2vN9Ndnq/Vi4FChJqQENlvmN+NJxDGd7EhFFP3sDuT
JCq1ryONbSTTnnLZXJMm+QrAM6iIUtHafEVAdTDnswqVZbKmaXzlU/eSt31YLRMEL38l2AXKMvW8
zsrPZWZ1c8Y9GT9brNxkuO3M+uX5UHwlhocjbCR4mE5lskIu2RcvYNB1RnzU0wLei0aq3VT72NAW
eLi5DSXpIHwPvq1sXkHhYU1EIuk9VYx82jSBCV7Rnc/1i7fdqhMJslr26IoVM9d0MsY1FxICatGP
ECzmx0wu3M4sTqROjUrvmNS0n/UxCpOgx89PCkghHs7xgoZR5JeqL6EdEyRyn7YMfuv8kjtbG514
pjjW6RHnmnNJOoYPGm/SEHFcX5tNxevAoFuXztxHD6ZbjcRyvv0Yn+E5Lw5xLLw3KCggPRQK95ws
5yIffAJ92zhNYtepDcE8ddJbJXM62AsaI+HXdSOkd5uklFgIEobkOZMWo6gK7eCnl+auPH4apfsg
FeNSEir8uKEvdxpH7KqI4S+nHjKKwicsdsjg5Hbx+/MOy2nKZCC/f6E5L3uu8B8yp43OodgB/Az4
J7cs7oA/53G6/oIXRrZpP9fEL5pOW+U+MUi02zLowBigMRJ7iJviY7SeEBl2QrHwAVL/KMCOxlu9
AgGhy8AyMcLJBQGhRmpMlCiRMMax1I9UWYCo2mISXDq0bqVFTPtzHrzKBwbwpAJ1bTMNBOU9p6TN
yB8XLfAApflttUtBETUgvfq2opGPBo7BQExmhCAIbSKGfuDgRUNlEoWUHwJvPNUIjhxXlpKnudIL
jKt4SxlWfuTvvh2Fj4srtGd+GK9PYzpWrlOIbLp92N3R96J/7K33cw7nFpirvd6XnghgE63P028e
wu4QqK005EwqRIiWYWlPnpZM4Iahqv5jq8wV0QrDLWk2Z/eWWgNjP7D0MSyO6a3FG0rIKprsuqRo
ttXJwUA04bGeZ3Zwl3oFAas5qLnzYlkckMnTci5Td1qv4Fmms1jKrMXPTu9/ejP361tmQW/lM/rM
0B2O0mL8wPAGnkSkd1UcThHmz0sK7iYrPeqomvTdK7P4foYomxF4u9bIK4yYEtEOqfk5W7fTFCdt
B09Q2LilooowUfD9zLFec5J9AksgXHkIZBtKTX8wW/GUgqZMYZl3dZi6UVAKNOkXQeJFESO4Ldcy
YrSixqbI+AvXP9Zal+NrrP3AHWAkZ6QQxUKXjrNqaiEqMlSjzGrPpFle7fprImm3jpf897QgOmex
8aj6uYg5nsYl6pnsE0LE7KO4c557eREbiSfexZM5eiPGewhbykJExCL7mYN6iMiSicfnnc5/J6gG
AE4QFCoWde8vNNOw4nT/nfbd4g/7baSNiWa8oql/9sKdASU8WgQwtSun3glwdcnsYDB/F4KD0Qqn
RUIyD0LzCEY7HiUWGanPgLvud2nlY+8oJRv3Dfcy8xOCIn5bJwYQARxlVT3vkqxFn10dZNqcYRgM
ZPDNID91jiIOmxJz6cIAb+aG27hyy+TyZq3mRXEsP6IZ1WGvs2zfqmy7fHjmF1yW5UXMQ5xm/RQ8
4TKy0tJNtSnIz97trJh9Gl201FUyeEMOR4eKoL0CE0KP0uALWGXSGZoPekJQbIXmRNLiCorNRTad
l5x+XKRDwEsehZIEkbAUv/yqHXJMuRhsD6l65ljDtFoAAK/snJtKwB+bAH27evDle4RMlM+uAm5m
49V9Rw0aUG8DjYtOILWWM8H4lXo3VlGSh1kNhPwsgKKKyRNPa5L0hpFIuzRDgRnA87s669e1sIy5
6DwPxl6jemggpZSz2vx+IFDstYWfCFnRiQ9x1Sl2IKflDOXJEMO+oWffrvwmzANrz0xN6NA+iSqC
h3aktNby32ueS51gHC2wYSLIOWFcmpMAjZWiWhlCdV96nsk5qjQSzxjssQYTBAsJS8DI5CgRmk6h
y0vscdti0l8u6lcFm0VdtCeXuPG/82iK2RTvOEtbDvltlcxgA6UFjx28ByXMxyMxyuBk5NP1TsnJ
4XuI108sBj0Hlk8korQEr4yS5Qw1CdCYWcWCoqz1any3sI90e2GShC1Wp0fs0RSfIldq14mUnP0J
/mC89Edxk/eC2KIfMzvuYf/Z8q4EXwIahRPzSqlMSdV61FmLWNxjvMaHQ2jKKr/JbP22Vmnx3cM/
ELHwu+jqcg+Nvx8wAH6mOt9nVVKha63OC0Pgr2OqinQ6Vnxg230ZBxq2KBgRPewaN0JMozFp1a8l
pQT7zDFZbRD8knlfzGeE4MpLqGetoK9D6KfRP+KKw3j89xXwWgFzKY2sjf4u1O6mGXyoLT6WAsfG
T4p9pnMPVbiAQFju9pLAKfyZlUrfmpPjjpWxiMDpXtV1RBbmeQd/U60sBIJk5wWAxrs/ddh6PmOQ
gyU6igmu4Pxca1Zyz52rO1RPssUDKfw1T5gvAQ8T50YrjMH8LLBE8mJLpUcoYRmVUX9eomLzZKT8
XKX04vvg5nqsdLeZb7m3OpSmVoKJrI6iRefxJEu/hLgs1Y7QjZBlVT4gmKxUF4QG+xIgezShl7jN
bGNGpwszjBsS2DXHHULGmnny62HWdfslzAguLAuYKDL1I3N4ENqQV2hhwdOY8CeEbcUNaLvA5inx
7MvHu7OwlXmvJpu7DfK3emhW5n6+JSbe2cCWsWKDXS5PePFRc1Ip1sDNpwT750HnzdSO2L/65R9R
VVwY8c5Bv/qw0gmpUMGr28KZ0TC4kpRuEa5idhCuj4i2TFij0HhZSgqhb/CzVQg+gwaQcth4gPS2
a/C7j1YlW2EFEHbY2gnE+wmW8tkjBgSxR3PrqCmgg2kMPsc6gw5wgo+w16vQQadprSZftuzRmdF8
rrh3W3/yjZRwaoUDFclU2T5NWUNZ4XcAWL1ag+1kRxqm21vVa4A+TpxELS6+i7vBh7eJc7vuYs8y
J7wrNckIWo5QkwyBebdDKGmZuxyJTV88NUOSFowlZX8FTfM8MFUWGXajjqwcDY5pWmcaj8lQxgUz
BxG0NstdV6T3X00QvQcC8qsGCCZcrYMHvOddN8/ORihpku5/Rj8URFNsrPs50gn/MjoMBn9Srqqv
GsMIbZHKnwO58bD4QSMRoHVeLpDrKPeuHY2ieILM5jLMAc8R5hoO/xnJ9UacOq0nNOWNNhBPWHhv
73DS2KZ7CzRIgwQBcI9+gGNvcZ2D01OwxI47y9aVUfyPhNVaQgLnVk5YiyBjh5HpaN0ILz8XSPpW
zsFlUF2dW24RJCuJ+vlMzmCegoybjBvufRLe8V/IkESPDzFJCPAjHZR86cU8qjopDXQPrxJo1898
kDpTnxAV21gQhBeLwrTlgPEFK4GtH58LsONBIpKJo0FDvLjlZ/zdF7BHYWgb+pOPBBBsoWzhcSO9
lr5X6X8/kzuAlrDo0t3gQfaW/S6ZgaUOhYHiK98jFgtWmSU1QqqjiI+tyeLaUxpICG/PGNjFTn+W
HUiFqC4cu+KZo9jKvwKzdwJZkKMXYZTqITA+NresbltAMQadRpxsqlAulddTUTFFJxPqwmqqMPSI
68Jq/c2cyv52Fo1ee6FFw6YL3uZJkcUjG02DdUHCFzOqgNz3P2cj7wjmaCJG9tZiCP3yD+BsaT5s
NQtNQKOrK0D7pGvuu0sYKKlykd8oJiahpLsfk59eYGyNZ4nSzs1+g6wEC28q7ohnISBXaqXPnb3J
scu4g9bPneeqmrd53ectTEIdVCkGI4zhJb05L9/znjUuf1Rs2VaRcMd9m7IlSDzj3iBesI96GcGS
WWPGJhPHbpXTEIUPxlWgwy/eHYfNaJDODnokR4kURN17/ivrYb4A3whdkx5G0MEGWMMCMN/zGdN9
4uvJEJZaHNzCpfm+Rm7XCHza7cixajNVgxh3lbXsxRZoDXLQpj4n0+MBO7NpdO1l+w8O1MuL6Hde
cW6DhJJd+xXMU1A8qqYgAG0KRI8jEinF0ackRKxVgQpC8YiiqXR9Mo2lWkeFAOvqc3zAVI8yLJDr
hoDFWoro9p4GF+iH7ORYl1R4S+oTUCzgy+jOe6mKkZJUrx+b1jUbThFFHbL2RIeG+t//WJQivRY+
2NuVwbqG3hgzK6oK5ZwPqiFAYlbMc6CSA5V2Hs024PycdyxUNziiqMcMEuFEcnOVP6qQe1KsHlHz
IgQYztR6VF3XSYgXieUoBsXGQjNEjuX8xDKy9H9eu3EDxyIY1PN+QGkEayLmh5V0v50tCDK2qVWz
eO9AnjN7uQPJH+MGtSj24W/OrqCtDxCYg+cITaE7dwA/Xm4ZkS2hGgK/12qIQmelhbOQea4+8l+e
oR7xbnlxrAACBkp1OBs/GLtp2Y/Cxp/5uzp+ocHAIeWJNwSltzkvDqSqMZQwkBORQeqh+7ttst73
fOOBsyE0coe/MHxREMQsZlucaoaFxfNVmx7/qQ173HbIkowr+lU8LGo2gbDKi7WJKlkw+SzzK/ku
CmhY11t4X3hD0SAY+f2DNNc9ihi2GehhEGu7OVWh8+UfWR4wZXBT2iTvOoGbl4akNU44DheLEsIR
ruSkFsHvTEav2VbTwyJ00biEYPyP7pbfvaOrhITkUeRTKZx5FsS2+vQmjgMfWsjnHbcU7FDjhI8B
2gLAJxCobqyGLtFCpT+wqhh9TdwwxWWegYlHqG3948sRBe2lUey+FUmwmPFQZa6PSVeUSK7lwntS
Rhvp/ig58Gr7nIXUEb/FvAHEaZ/elsNTyVti8hseE7rb6A465OY11WhljVfYBy2KnicPaBcqdJ+V
TS98yEGhLLbWWluJzAGWemjChdoScFJbcVSs5fFsN5pnZlc1JEaSEWKjvhQXq7USL5hCzsCa+xhz
oDcXUmjLQf9HHQAqcfN8coJIy0v/bbF3mc2ZY1+ptBWo5AEbiFLJnOpFcE+kxl47vrYMgt+yttuE
0dQwjMjDZtG6TH1+CmQDQn9bfxM7VuYf1+vkkivUk7Xqmd7bp1GcXdcfBihhBxtFm0nKnsaNrNSO
G35VXl/Wg5EBfGKIVs0MRTa2+pkbl4XxScXcuIoPcQTQGEXaphSxhThhs0DdyW77IGNwMTJ/F8fc
b4GzNRT+BvyJ7R80slgXD1s/7NZiVlFR/H01C3lWljjC6mDOUGIg63d2dqRIMQCF+QYmGTS3hKrx
3xoOFesfRZP5hlsrR/olKo8Ef2YQoEaZ24MLCQWSH0uR3/n1nmkvu1Jny3v4PZPLY6+7fn8wsVdB
xcJnDEtSCqcosQrZsdedFZkr7M1n+7HESUu5XtKlaLcu4qo6b7roofP7z57rGVmthZ13cEXTTAMx
twr8pcHWoRlVjWvbJeUyOIG73hU1szDISiHOoW4hDObcRQM8V+YsAVL6lJRkQYacN9iYQoLn7fEH
6ZWin4yWYxOMerb3HTGJd0EraBnzOuIqRG1LsX/AIyQM07K2Zj54WVscyFJRaExoP3tLhCjzBJKT
KANeWQqRo0gX5EKUY5IzU25V2/to+zxF/P+0WB9kbcdzve3z8esGvRDXaMsrQLaXkZYm5YHUw920
Ox5UqS51GyyZQ2ZbICGrkvGcZq6ZBBgAqjk2vEUkEFWD+tbouZJl+eFsBjymz1xf5AB6ERBCAyFA
hdoTrVdMi+rREQjyLZ0kyiLDyris1mNa/HdefEShc/pRJOpD+uWvzbOifct+ITDcMMtCAsCeoRTa
Si7WR2raM2CLphpI/6bRZ1tudyjLtkdHNlXMSXq/d7IBYoXIsRd9wULCAjdHXVAAZVs/cIoBnuaf
E2eIYeFTkm4Qnt0LiiYLFRQ7l8kqMONCA91xMGlcuRIOnNBXcdsRcurBbjb/5KucmeN8xJxgdLj3
nXSoqgX51ln4hj3chcAa91kAviYqdjemZFZxXw0gVeTHEZHFFruETunn+MxtwjfWVBZrdBRZBvkx
BoAZrw1EioiFYhdUGLEb5jg3hfme7kc/w8EdsJJFd+kZig4pzRa0Hv/Xmdnmgfb8nPkngjhfqBQE
eK/PEKtd1LlbosC8XeSwiOi68VzfF0gwncmw+//i+GoQwnyfWUumpgucAZRNgOYN79gkGJ6jEcmU
VWmFKSPztGIPyIedg6fNAgpwtnQX7S3DfonlYuxh7MfbqYc5eItuILObflayjZgJaLs93KyLoUIy
lTbo2M0LrW0BkogPxY5csmp8SOF11vjBgY55d6YYtiurMxq0LeXxK8jfzi3K+29nLfbqJlzsbVV0
hfO8t1czyjy4MxFi29nA3u9WRCINsazz/phVhB6nWdlER1o4aE9y5d6lTmMwfGliQrGV5XcYxpdW
NyazOH9oB+4jzOp4tMNiOGs4XT9SHSR/oBIF+0493O5J+yFvHPiWjDm7yzP/oATVj/uGYtpkZaxZ
8dA3+ob//PN61OPDwbhqjpwxylqfwrYQWDyBJ47FJATPX1uWMnu4Xpj80f5mZ0EIlhnnes5u9toG
ThmNy/OwgZ2gTgupZs8+MzccK5WbPGunC82fzUtGvLSVLTnGvbv45XR0vbUSx29BK7PH4isaJxhx
GIyt0bnJTuv+922KNG4JMx1DTtX+OrbsaEeYcFnvjOsEIOapLSacuiNycEJ8CnZoNyYImzitvBV8
+uTYaYPBfRf5Q5GXHoTHcvHv+RXFjQeqVOZh9tdFnT1NNk5xfu3XQsje+cQlf3yH/RZ0f2GfJceU
sJR+l1JM3exyeO56ipT6E0qnm6AsA8lV87bI27OISGZqu9TVNpjaNiJL8rQ+EroLR7e0WFoUSMUR
dL+ZmPqebxJv2NGsSsvvukPd4tBkM07wLfKEnyUYsh/Lo1Zwmg/bzI+pan/s1NWzwikPlzAv+F8I
GGtJeIsg00PBiqhTOvdbyBxgEjkZmgWW+4lYWBCv0Wb99wKb/SsRDDlL3BRroGmLLQcUgRfkDOCl
LLWQyvAyZXotdMd1W2H8vjvxyAODsOJ0mzKfpedG4KXRZUsUfVTJryN75SHQ/AwiBNeYX0LzB9ea
UrFTC0C7i8Dbn0Uf1iq5DxB/7KeowjOI+Q3kqDi179OXziLxAiOE/oDSQF7Aut71hJuyW+Du+Uer
gt3orAMl9Q8Bj118B90FviISxjxizYfDI+qWbMbZ0vK9sIvuw0LXevD8fi7TmaM4Fw9D+bFWk80t
iQwxat2EqmO2nFv+tZBx5xIDnwjPzwFozrq1ka3TqNk+LEA08HtLG9tO9kuqQOsLm8b7yHPhkqlw
JXDzW6F6ONfOOBPCdQEVWilOIHlCOXa/Saul8aQjBiDe9N87mwDVSvp1C/uoAPU7PNoDd9iBiftQ
MycfUFMrQfDLecavb9bu1wnuKvgluSxDAQnCTeNzZvunQYKu5Xaveu1aDMaY5T0K4oJ0hMdzIBIa
HLF1wmyrwpQi4o7g0SxoNSNtn/osNJzIsvGRO/TkDaoA2sBcjB+tvF2rEFsfz3OnmERnyaUR3xNA
k+pAmY46Ib4Gv0MdeNkQVewuq6GAiWR+jKhg4U+SCK8aO0FuCaIJCw6Qbepqr7W8UX2QlV5otzHF
yZgdLyZ11A1aMXoRo0f3b/Ut2zXJgYK7vSNE54lqc22ZljaMkuAFFODKA1HJ1Y+ZNl9OzL7bmU70
+fO2FHP1AL3ZWQnrvYdEPhJ7nkNrYRYqm8xMwc4AzAfekBVgSK0b8PLU7EvSXeEzDTbn3nB7nJMa
KGWDEw6w91obbZJomIFBvcKerTNOmqb4JmP/33Jy14fjJtSpKQ8un6qyPh/JuT0wPmS7WKhhICMq
If9H8ei2Olf10WojZJgk89DgUB0rlK23PHfIGu0tCcCXQ0b5TSwFidHqmnsS89CyXCS2K1ZyNweK
6460oJQxTwQxM3fMGR+LxqpBuwHQP6k9+I1UFbiyYEhzXs/DsPyJCsS0ZFNKWqIHUPtbLWzGzAp9
09yCS8ylT2bfOBUVcRnlFO0sFq1+RtrdcK9tjE+PSNBOS3+Bmepib9n5YcmthIBD6rh4XZm7cZSJ
XDAgxxLUV4mQpFR5lWHHJWd5Fz7KAWyBU6HhpVb0tPCSvJ+LVsQ6hky7f11b9pyfpkSKvJh+3Ao+
+d1R2CmxBNMVNmD/erVEPgCILk9wqLWN1Q/9YmsDQtkqKxBkDFH4Lj2pnIfFfXjGfbV2figgUfdI
12kucumRW78MOUkYc5gAQPoodFwC23npnDYBqveYquX/8pB9bnLzf/vU8f4hnECijT+Gi3vVpSlF
xG0VP1Zi0wOvmGG2vHReaQT9Za7Fs8Y8ju69M8AjT/OwkZ2YP1hCsOHeZPd8HlRXzgJ9Bb4qe0ZN
EQ08pkglyKQHS/E+MJRpr7Y8tQFhErcCyYoHH70kEBg5hoo1JMvYEHFJ/Ip9C2VJgQlZNM8n/XB0
sIMCaXpvzDDkn/bCS0VLdkWE39chbVD4Mw4ClQmalxdDjlToACLtPo3JOSzB0w/KjZro1QqU7we5
Bg4zLBps6A1+BgYVY2izLkGuKp4Mma8zujBNMDIksOw8Zo+litEyZbGk8pTPrSdh5zhb6AqTXi52
OXbcAJjnuTVzAK8bNRAfWV0QRUP+XEIdpvQlY2u3KtI6x37xduQH23vl8gppymNi1+puVkIASrzB
N3jGjUqLahjFiKD1Rjy7WOqsqAm40p1pKayIUx8wL4HAiBggalRjZJz21R6RrYvNMbBlb4xeQpQf
1UBbCIzy0uhtfn1MJiJDMzgQYiWaVyZ+AFD1+NTIZ7M+Z/itOVyNFTfqVemuhWPWIpGKT5ndrUAt
Kwv6ZjlqujBOAE02jhgjNFob5oB5dN7fh9SLBaqHjapo4Vx+LJF81i3DY1o7+XoqWWkWQXz9A0b4
aH9Mv9s00BpfWYVmssxM89V4KOnf7BAQhKsLHU1PJj4NX93xcGWri5b5LT4+BWf2mJZ3jzaMjYLA
vP4u++Vu56o3lIl9x6BvGGRhQhjVhzaFvJnE2BMCCZnXTnSfslPcLlXfwpKEZKu3EY4HoOZeASTX
z4PYEyh+eTg56GjYsdyP+sTQ+aX9VyimSJx3KAkYTDcVSxUerz8X1OvOODXjrnrH/zGTwcTnFqU+
Pv4KinhW9dlo8FIxnYG3txIOZAOMiZIyy6/XqLBqlluDWmymMdMyOslAKCHpAy92TTzZ8l7gnjYD
KL4EaQY6Di1l3L5I4J/aQAwNOnQWG+z6Q633DjFGB2e+knQgY/hdmE8kN5FlxW8Ac8o653ReFXmu
9TTB7sM4Bi9JezZSLKubXrrJIz5ip7zdZVuV51n9f3rv4+9b/EFyBnvhEv59ejgvMFEaMAWwLi4S
a8hIAqoQVRwgSMSAhU11HbDMT+TI5qfZPzx2wYLE8sqXceNOPImKs7llkPXdssWEtYqoVxiTq8VP
htJ+YWOBtP1OxYJQKv+c2mdnGcKf4vWZf7lFU589jS3UFfTmHslU9Xcw2DfMy9PBWcTMGAX7LQOM
d0HiFIou5DZX5QVSTNnmeqIiY4lGCJmbA6In6jUHqdBVfOnRcvaSM3w7EJwHlb320ZUbde7tAeIN
ZcISZ8xp1sAb4g7h5yZpzWIUmlVaznI+No03+4Mke44w41ZhVECaF9scOXTPyK5rwiV0851U3d6I
UpH4Ai9BLwYJO61Ll1I05e6xKrEmmgueQEtouDLbPenzrkyu0kbdEJZkuwx+UFBLAP0R/vtbd0uD
D/RwaUI2EIr6qQOuaid8DyXbk5YrsG3C+Z5dW4QyA6dPqmgzM1ML8oSxcuXugN+jYuA6wByXfzvS
JVTO99/zpJZKlfzeMQ2sk6Hozn3UNY9UB8ilcpE0P0BhLQDwCKj3UdiA+s+enmdOzgCnaLMR/vR7
ckWBDOCAgWKXPJEGRNTOmm88cQMua8WV+lThW4a+Pdwi5MWyVBwNr9mor8SMGuqxRZKqza++F0ru
DAkRS1O8n2XPc1W1soQeevK4yqFN2hatSC1AJlYCKSIpDvZx+DFqE8lFpIQKlkE7I+QIJr5/gUwo
XTx/ch1fpFchiJRGJquLs1Tq0hNuyGZ1Miu2gsuyL/XB2dxIZ/PUnANAmlPafrLZW+xvxp2kwzVO
oadE7ZwTjSe3wTu+LvvcPjKn0JnIVQvbNslAfQoTg53PQHxN0BoNaGyD41TnwB7p2ruEhKJPhao6
wTSjwGW1JUWBpCizykev8m0W2AmtaH8/dLSdq/B8AraYscZ9gNAHOulV9FkC4GvFP7vUTwoW/Drf
qTYLrbi0NFcw1nPKly1rzRL5br6/adX1c/fEM4rQRjqnmHH5AIoRSu6BnqbRTTFHAXdDp7HjK8eL
qz+z9iIF6hNqkSdUyL6X/EiUS/X5BWTkcl1hv1v59wWJ6F3xTMS9bGvfALIEALFEEdCkP3MrVULI
VzLox0q1z3TwSnDsNOHsSllXwpftFI7drAwfkiK6bSaJRx5AjNjUNluDNjBiQFXpJdS5x8cdwRD1
dVtn4ZkRS0L5uZlrtxNvrIG4tfMwPICCwa3+NzzwGalt773rcCEZ/sdAXzlYxpZZUzk1CzNVOD/z
nkwwdb/2RQ0It1aFdoMEQ5CLlWEoEbxbzS65I+rNWlxjqHdNSMM50quNBu+FJYrayl4CEcOb8Ev+
QwCO871OJwKanm0JFKQSAWuoNKeP5x2RUsv3j62hYUr7kmLVXD0j1MKgf7dIaHVkNQ1pCcbPEAVW
1M+LiPSfkgV8ZqtoZzrGy2GkY1QIcQxUhZCjt/GqEVlqtVOzoI7VLTSLhbAOhsgWy5CKfA4wesFW
9EJDJjn7Xkcm2Vfzzyli+2W3NApXYmeriD8LgqXmFx6+Eijiolm41utV5wexK5/RGXaTpilIDRM4
eEbDadoLhgCU10iOtNSCRZG2Zr+Sh/J983S2w8f6gdFC5L3aOy3s4QfJRv2Cp7ypJzopOW4ro+hY
0Z8sTQraatkiAzwNkeSrFX8n5HWTEHgHFk+pjHx9ZU5Iu2jzWyuTyM+XLS3h51gJMIyVN1aio3B/
FmuttI/Nq4sWHn0ZBjH1hi/LpujSJUyHJNytpY4udW99U22JyFBPGQ0Ab3Dw+8mVnrAmDT36p+ex
Mz1axv9i5zpOdQQ73CUcTR9CvQMtMXMd23uT65v2JeJVYEVCmTEMJuy8oo69ricpBPk4ebvnTCOv
Bueb5F9WbdUCHeC2dzVuEzxhOAW7QlrGdVJ/pjzzlQk65sMGGZI+nYxvGUAKJt0s2dyDN8jj4oS/
nPumNURuisyhrG4LiY2XQQuEtXM/Lb9QX7qPNWZrN4Dr4oeE4KLgPQ6BSHDAeWudkblrpfcVNJTI
P7K/jGjdTB4eHn/BWt9+G7R6e6OAR3JV7qoThOQgQBu6/A9tLMwaIuJEwIjytC2X0MJEJM2uMP/P
3Bskgvu4z6FMght8w52XT+xIaV+VGtaXjfwwHxQkcaYTqIqyP4S2wY/UWsRZd25vvBnuUmZ4n1qw
sG2nzDCqRB3duLH/NTtxrdEpR7V6YrxujQdxM7ydY9fvN+5glObAk8k7UeNZyK9yZZLd/C2cV/dO
oBDrK5xNWysOo4DGxJTjman2cIT6CEG3RqO9oZLUl7WgeZXj8Gc+MfalRsw1RttVRfR0twScy70q
MyJucSL76GdnoRf1eLTq3KHHX1cHOBE0U3nXIoPy7zv3K7e6s5oG19K5r3abOgAa2hUNik+I9PRf
4HFf5CHkcmwhlaRbIuiBgovMc800uvVC/dc4aj0nLLjaFxaUuee154bjnbxnLCeK5yWoUc99oo8G
ynW06I4uXjxrqGldUQk7HjIm30RZFRgPsB6fpBHXZd4PXrGILPwObPZPxex76brcgFMnand/Q2Se
4Q0Hrelv5MHJvYGpcIUmK7GlREJTMSsw0MiaxNwIc3+iEotPLVctLc7lQWmoQLFpa/azQnLp4VhA
v71Zn1KxCr/akSYx63HD+O1WSEKFsFIejcLJ9Mt0ZpL0NAHGf6NSVhA7qa8sGsXdWPDmO17wsCwF
uIN6X6XORQWReYbs41w1DZJFUueRKDcj6E9OkXFsYIPCTafaYRY1dKbuDY5S7LY0PkdnbdCbWcx5
pTCS8ZdLrR6hEslVVV1rmTfl5pu1zKkTp+8NVHisLDVSg0aNdiGNSh6wVhoffMS8xm5wh9GIb4u0
qkJ48uxhah23Yp7xxDrqwhHw/7a7t5pmZBWXdVTn2meYBYSdhERJzhwNXZfi4RbiSdQIChygScpV
VE0IgzUyX27+lOAhfV0tyi+IAAGPYB4V8/6wD7tyd+9TKRggf0BISL1cU+Ns1K487xqeMtW0EWsk
fXye+ba46+VAPqP21gGJvLR6QDDRr+BE8wNatOG0ABXX83ZWc1XxyhDDNxqMLIMXodnBxqYAxXdI
OoCSS87E2tCkGG4PbseOFJGrnTMHQWfMCqZv3jTKAMfo+QKvcRMDb+ryXxnG2JbQXviDnEvCb73T
95Se6Zae0CW7y9IJYgB+XcMBMXGoFPSvTcF6zjYkFMAG/LrqquWLDW/57iXQ8i97Z3Vtxcdxlb3G
FYdgIQlHdRE/q83XTp8/TJU4/19K+I02zOlQoERfldscCNb56wLlpKbY18Lif4SOj8Fx1mS+P8mm
zFxJfjvUyN0BTi0DWU0N+iiLboWaghHxLRADcACln0J2TVk+4BUi1c+MvRygz9ecyySe0L1ZT5cD
madZ2R6qrj/f15Bywbv33eQqqGVikCXbkgBBqPn6Kw+bEEI9Qc732ArSPyHiRwrnUqsOmWDhsV6L
JxoMFa0rSvt6Hm+CjpAWIXD7sE+j2adsAnQxqbWqo9q8ht4yOAXF9M4LsdsL6exDpg8REk8j9Pvf
u4q2CoZnmSk43HTlQfO+eGNR4X+i8lZpYMKynClZymTf6cI7IBgTZF7P0PuV1dZ2LBqnmiZaEDQO
yFKKiuldNdXd0gOVglYn0//bK/UdRewzhQgnEnSMzkUv8RwRTydttZSgDWQhFKL7LYOORFospvI3
6DI/rsaD1v9cFjAMpqd+5wtqGLGzSJMw2vS6aVWnEMwPtu0g9eEI6aqUhvXhFjo9/skSC5l9Asu7
rROLiMcj/nE5fqAQr9nAqirG4Q4FKrF8HslbCOcu8rK1jJfmhGg6DrOMg5YYdjXgdHRYB8PhgQ09
jJtkUlJb1S0mnq9FCu6a2EVZXnAZUajK7Q0SwPmILvv3O8ickN1Z4x5Nf1nnDKZYR8Ouf65KhBtQ
cK4uksrsI+f/dCaS8vi+wahVAjWaRlIoy1+LdJpYxoqMiGEOInJBaE7wsudL0aT+2N55qwTamsPA
8tnarQNsdSkjl4bSwYSG/PpxqoKL2YFY67Dz1SpmdDsIMsfIcsCjhBy3yFHaJ3t2QoqZY+WfddDm
AceZmqiMGwLApotGr9IzHcXr0/Zqz3S8m9AR5yaW033TQpZ0Emyqrt0+iCJibZNtXw2pT4ZtQlTw
wTVDyTfs58bHklc4fXP6cZAdvRMv9aFqKWaDjkfd8pO5jv8fCWfhSykJmre8FmioVk5uTZEELn00
lED/7v3zVB7SzXVnNylWJnYlmlT2+M8c/ksv3sXaBIAJq7icMaqtZyj+/dG3HWThVqYC1DJUHYst
PpSqQ/EIyYMMJVCQPXjHUjc29Fy4md6pO6Seh9ddbcfhK1MSytBRBrwWnH/tXHSfUp1isQn9nIMm
OgWiPrqslYbJp8hvAiWRFGDhme+CfWJCQ/+9LLrBNvm4rNgUYLPUd7hfs0xeLkfGw3QJtztb40YE
16jlzP8UTDDZsmt2kDHDaUXlm/eJXpMUK+pFCA1WFHjXlY7X3Q/yQbYJsI9bkqvOPABj5R+IAQrw
erhve02s5hj/VMlyeLeTUwq9i65buwz7cd4AKjXAknusD6pocJnlFGwg1vNSE8rT1NxhBlKV+JN7
fb82swvJ7mz0NHMLdpBhD37XhInH/OPG+hZCZFEOkqZQIyusrn3QMz9DihMFBz9nwIG0kaqAewMQ
QgnUL/7l4nrS+xHcHl3rCphnQwSAwiJtlNBUihuE8MIWbDleg2DWthEe2K4yXoXF1++EkqVa8EdS
VYz5x7aFixSM21TGUx/zgyoBTKmBsL66fWQ7IJ/8+MhJgYJJRgahJNw5h947mdqSKMjVQX7MQB5e
ZCkyHMaKLPKnOVgRrbidsWq2dX/9BY8+BpRR2fh3qZc6Sdz2+3hJ+UM2e1u1dl12xN8qzWwYn8u4
1VP0SttGSg9iuTCCZHngNyp5hPw0uuilPhXPDT1NFb+VpF5kcYHWBmaLvfG23tAws69hJCtBwCGP
1E1nwzK6fm9xWBbbzUHI9x49KBabX2lx6ivCLCgNm0zAwzz2L/4P9x67yx8WA3B3v/rgkncm44/P
7J+qPDE85VcNDwM25/Qd3vXytg4xE7wM9W43nJ9pCXfPtMTWjaSaM3mKSLbr7cFBuuvn47Qoc3Rn
QEE271l/vTtHTCOvMlTR2T9ewijCsrhW7wN2rg3VobURYt5RuaN49rfdK0Hmt4dQNSr5dISQaMpf
1rtV4sFnpOrRViPFwbnniPuqNZ6GK2lgNNO2MClhrs73+ivCn1fbTyj8yfEmEF2DEsmRXX7A1Xh2
vMWFR/cBqgImsBJqakBff169MkG75uOKQpjUpbCL1O73zqJEeqiSCHwO2zwoY7o2f1wzm3kS8PQt
jtKHpg+1RucI5QV08tEOBtN/JyT8bTsAF8Ag5yulqUYjH7qIL0OYdYzH5ClRTQrwjDr88hqNAo3Q
ZNYnyJXH98dORpQbQEZyN82ouoHy0ZWF9765uG6ueWIOOoTDoh3hZEvvIINO3WhVT1Y4vpuNVWhm
FWPd8+D0KbnwzvjZYtXBk4AGQnWd9mucuYzsqWFG7LUG80NqJASuHhmOnHZzUrNvvtpfBBIX504V
+VOS09jWr5n5p4TJjP6dsan/HclF017sLxuK7vsNZiEty4Nd6KZtT38VolFAPoC021oPyhw7UyMM
W4UTegWw6+Q89BnLhMxv4W3h3CVyDtRE7YBxjZYUiABZgHimacXPZ+GGC/aQ4e/HxSccTG9DASTk
XAEk2NUuhF7ZcltAh/z8LRC1g7Ug/KlGr870RmlMzY5VpMpJOBjlud6oWtpGSrpBDufE+6Q8veR3
NxGAxbW17iwmVx4iy0FzBN7P6IXhYsagIijv6n8xGLk+k67MjcBPNaiQnx1Qnj6iSDUuw6IRFF1+
uLQMDeqqPxe70lZdZR7qEvouAXn/jvPIFzFiphgmMd0zqNTcNEnlhlJ1F9grK69mTqwl/nf2eM8C
VqkcwvWs7XzXsHGDzeXHjZdGt3m/b4dXzb70ZtBdDYOxY7m1MR4dnJHwlvmDXSMRy8XanFczNIc/
ziH+koF51t22OZ4yLHKV68Imkzj+k/uTGiBsv2bYBizzpqcYzUDryGmPLAxe2BoCPY/as6wr9Hbq
+XPqvK7fsnQSsMcCBI8RttxotoPoa0TGtbo96kZNgdgwGfNKfmWkwuqt6BhGq1b+PRQdEgGUHNEz
pbXW4/vyqMpG6/BkvnhYIhlT9jx/XGfFpqQqUJienJXE3ClT1HWvy0vG1Fq9eRmtZJdwqZSFAGxd
71l7IGowemyC4R//c4wYHgsCSfD/gyU4wPvkc2vwctfiOr4jjSp0Q1Ec8GTdmfaymEwGLLT2DJ1C
aZn0k6z2uDTsXsFXfwGDEIWCJalsOHBbIHCNjeazkvRoPMvL6bCC2gTqJSygsloYZV0OoPOS2PA6
0fYjl6jx6sV3X1qVJ36lg9XUSpKMk760gjmF0V9xojFLeQGWRDDfGxHPHdfJPbKSxJ4sqa000Vl9
XO9gtYXxvYq8a64IXF0InBrbyHyFKMurXcK4SxU9G08hHSVIhDoe+dwJ+tieKhdglGlo0vv2g0q9
x+j6ThXfmWXnhaD66ePG1tb/ziq6Xm7ggSGOiu34k4Nr6XQVCMeZNNiL2/Z5gs/9UgvKPpOrBPJY
nagIPThPNEnu3Eknrsj5cIr/GlIJovbrMvhvO5zpq0c+E6rjaldzOO5crdx682w/g4xFPrBDbXXz
lE1E/AFb9uQkdxGuYuQn+bhpr7rcir/GFMmp3707YwOZ4LJjLRSnFE7DKXmvUJ0wgz05z3dcWgQC
qzmorlHXg/jfN7UNGJSv4K8Nw0XAMV4VO4lc4DmkGtN7AXgO04sQGGx7pBFVBK/m/PAemzKKgEBn
7wbyQ/o7JGZY3RwygDZrpvAG3KfBH74e08be2CpVeJLHritTUsavNxki9vTrN1qMl53AOolzwotR
cwxE2Cz65FAayvowhGVMkV07y9HTNTo6kmJm3hze6MsO2cx8U/RrA71Zintgprx6f8NqiuFbYIHF
ggSHKKM63/JPIozl8I9gWIqmI//uYsM7FTS6BOqXNxk+v/UYy+wJiT4fPZofy731BjIDKZnysytS
iS3JjC6/gdmVloCA+f16V3LifbamBY9lMah16DEPx9eainoQHie/zLeNm6JkqyGmAR36UWnGpV7p
f6evUAtqB5H7tvI6PJIbCUJHRnVGldYlwJws69Wd3FMxEoob1FakEmRRHi1rM7UA3k9Pz0R2E3RP
6S4r5tphCporrxKU6fNsIcB20tsDVHNp1pzTN5qYLb2mrC+eMBYBg6DDzuZiFDGgkh7Us7WtoixF
vHqviVbOoeUluW0gTmRDAvT+/PskvTyOsmGT1iI2wjYfD2I9dT1glVP0NsQVfOK9OE4cPSra38l3
Z0Z93f8FKSdOqAX2A2SoZx1VBhJkoIVNCZdien+OW8UIqVXAp2pkRM0ZEW2ZngCJE2trF+qJO8HO
85YfGi+95JRZ8+PVf4pWH2kzqsmgkASRYoptmosU3ev9tSHv3X5uonKuAQFQfhGDhKOqVDT+qM8H
ti3iI/skjHpm8ET7Ey1loBrj0SNPgdVmIZ9Dkw4vvwFHL78x99Z25CydXNnEm/VGSwfx5XknKseL
hTfq4UwQLgIqto7c09hc3up4EXY0gqA8r90wredJKcC4qHRlVAV97sAZHDZDfV24scEofH7BSoyz
ny/OxuiCH4N/0Ob8Z/RW3wOzZYAr5zMsYOOZAf9xaRjl/JqMnHfDfFqEyszQhymZRGZllERl/k20
48QNP3za6DhWOJjYs+0GLLbDUbeRT1OmgJGRKSl2P6xWJJXcmyjQpBAZoXnZVIK9BFP7Hib/xudH
IUhG1ZcWpQ62ZViyQKUGVUjtW5+BTe2kj+BNNIMEqWG/LFl6qNEmuDKr75r3L39gt6l8GTvaWkqV
U9AkSdObY2rGrnorSeIIARxbjZB2+jrM7G5raFfPNJeQebj3M5BCQ5r/1udoVzK2dlp0EE7EYLsa
eGa+T5kpszXvxZjCnou0Lq3JE+S5Fe2yGqZUIpbO4kXvJGzKN1n3NNd58+Ucc3n0DT+ubjLLWNlO
PlbHRh+LCfVwJJhRz1oDhOtRUZgOSffLmsHpKVc0BZR8Mj6YEOVDk89yEoejh3ltbk1aVd7lnkaH
pejZjio0i2IGuDkU5I1pBdKiDuzYIkvg2nyCgRKedieNHx7MHVF2Rn4zq4nBS5/nafB+m+8RiFpr
H9dAtVZPwPmOcKWYDJ2XIvOVkGnps0TOC5VBlb2QERLqQH2woa1YcjHNvxervGDyoPHtSn9to+9p
q7+pgKVtBg7ZLIan5NB7vIfeCHlfc1u2ADKaQ6lov+AMEt+3RvQX0RALItupeLO/Uu2JPybd4AjF
EDekacntYhFtfJkfF7l6N/YoP8xHXFirETHwp9t68obWVu9gNltFOj2PQSPMpDHOH0lvaji+8JHN
JiHM79j4tO/rAMyeLhnojpjOUNeh1lPceFA8xkDYkJOF3Wu5GXM3TtgHG+LrFuQBi227PFD1Gpem
be46yE7oNj6M21upB766yUNkrTbIx2Sj8LYq9PF+nDmS62quY1SHdQSwx9Pzo68HgqhASxZYv7nA
nUSYbQNWziRedxDxt8RFepuj4iN+z3nWquUzvh2ksPXFczuYdyE6xbC942AsfZxxymTTWXpzzH0A
z5/SCjlEOHxBw32xc4CSou06ST+2LLfleuIkRoE5JKdwsyNJbQY9nPp2rLkEQKkg68imrK+qDRmS
WWc9f52o+Aq5fNF+X5ZSVTlLbjE3VKMMEXpYW+uQ76pT+eSKSY8Ma03FiEEp93uNlru7W0BHajNu
5pWj8IGGvbqGlGjK0DfK+r0TPTJlTFk1Yk+k3cE0XHdIxIC7N1LzVWks9yTzPfNJA+TlEmUYsmJi
2wcartmjW9s+GPOB4ETeB2nTsbnkyc1GMT9Nh65ZZ5Gbh3CvpBIH7qP4CUF+OOMBlSmYCPYQDmPi
OHHzNIALWJeo/DrumlxllU/644OA5wdFs7KQwebC75SDU7R7rJ/msMHgE2sGL4tdcbfcTYWCvdGL
GCSNtPFydG+AkN2IjsN+CZpV5roDecfT7I2i5moI4hp8LBVvyFykih8FhszXDReBnbeWNbc2stnh
yVqNpGJFrwADjKR1yb78CGxcParqlqeprEV9GlBavpf+KLNOdqqEUgW5VsKNMzHdkygzE2+TpsIu
RRn4C9Kzvf71L6rpC7teel6zLTmHh4fwS9A9+ODlroLwLjGo+FZ15ibrIfc4RJHP5RhQ3Ua+C79q
jLgFFxEM9KWUiD/zMLvtHDl1YL8tg/t8C4nqntrXbeiXQnpNXgy4BSAhuqYXKVdq0vqs9e5vUPO3
X7UbKSLnSnmu46IzfxBEHwRXn3Trd2NznuZ5Ii3NBPLUd70LsPDAgnKYHjdlP7Mvalv1gCKBCVcW
2J10LEfN/ABOPluLpQ6VExYATSAiW4afeoRuxQSrBDjsGjyK6phMwhZVc4LB+rrtRlqZHEChE2Mb
wTIa0dFFLb+JwmI0RYPsDkrufLVlN9GW0RZ3SKwIHNrRkB+oNnDqh309dk4Dpb6fU1fh3c4eA29y
+k561QlVi2HpcBz74xp1203wIEMH9Ye6ftt82TFQHPqkuEoSSek8HuJk5A1rcjIO9ggs2OIWVDc0
hODXvm939+PnZqPe4jU0oJ8hCw+Di+mW/U3bvfeYuwPy3OrkZxDkWbUS2LsxIG35mmBp9jHTYwxx
Nhoq+bj4lG22a2iebi144skOaxhprN/hFQSex2HbyM9IArVd9mPesKBlhillIBEgDXH1jd5/BwCj
bqcouGISZDu3J+EqOQWz7kq+/XVCWCfhIyKLqAhAkes6zwf28+S8PlgThoavfasIIkbKdg6hTkmA
mcMIT9g3HUB/CRBg0selfvyWelU4lVQHSNXRgSK5RbLZOA1hN9gLsP7bBJ0F2138xhdxRtey/JkC
oc13eukl7JM/xeIHEuhPVBsEWEUfcrsHnBu2T+/6LsNecqFZv4Y3o7fU2g7BqBqp3VnqGYXPIVK3
drlkBKQ=
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

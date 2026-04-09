// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr  9 14:39:18 2026
// Host        : YaseenLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/yelar/Desktop/cpu/cpu.gen/sources_1/ip/cpuram/cpuram_sim_netlist.v
// Design      : cpuram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpuram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module cpuram
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
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
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
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
  (* C_INIT_FILE = "cpuram.mem" *) 
  (* C_INIT_FILE_NAME = "cpuram.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "512" *) 
  (* C_READ_DEPTH_B = "512" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "512" *) 
  (* C_WRITE_DEPTH_B = "512" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  cpuram_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20576)
`pragma protect data_block
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
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

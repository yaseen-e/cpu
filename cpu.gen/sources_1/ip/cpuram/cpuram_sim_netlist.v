// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Apr  9 16:23:36 2026
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Mar 10 20:12:09 2024
// Host        : PARIKHC-202FE2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Chirag/Winter24/EGR426/Projects/Project3_Mar21/cpu/cpu.gen/sources_1/ip/cpuram/cpuram_sim_netlist.v
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
DVGfq6HNsx4vg85vA9AIj8wMu8SZ6JCH1n1MDBC+R3uMtRzX8gv0wcLyLFEDecsjqt17JEkeNTQQ
CsfjLS9xMsLpVrYIAlXN7XTTRwihxLiWohOSnf6sXTUqU99+LQqZmdsY7mfIasDAolCv/PY+i6ca
IzLmUMZlFNad3ZLSRN8/xM6WLUzeN3JZEdfh2Du6yfzHPM1/CE8KinsGTs406ZGwPGX+jdOdiKFu
vVKyzrf0KgLub/E88U2YxKj9dngBf78SJRIGLzodk3fCM13Gj+1OOUMekHQspakMDZ/DcuTW3P5G
V/h5OJmF6Rb8u47LDlDdKYqtXIDNWANcy6fGHXA/v1lUTRrkNTHezOLCTEkkvmNr5MQ0KUDml4Rt
lCDaNo/+q8RD+i2JBEeghYPBxi2ZL0YjoShQfVjq9vylD9LQ/l4QNOwc8uLNT388ChJBWUnCEc99
Og7AQXbCAaIz8UyZshK/T9ZD4fJ5qT5xqvnt2vE57YUiqbMfJ9PVFe+BvtTdVFnxWqj4CQWuJWeB
eEyvfbKdg0bEXtAq31Qtvt6DQOm+SgveKPRQkXC8proLFzWCQoLUW6XnvXsFVTmGpjlh5eU/XE+o
n0QWOkAZgeMRagaoVMG/+Sn3foXWBE4bP70yjGE3+wbO/HNF9wBIziEmlQI/pBfGhng0mtUkJisw
6AbjezQFlBN3AnBFNU03QykNZp6DlSfjAtdC9+tlKxz9atyPqsiKjC2y7bfHqOxvcY45KlsLRo2W
65SEAXhe8PbwAyGV9eevPin88TjkAbKLHAxdpswoH1obpy0DuJqR84Ww6y8EYoklDCG5FsKbNg+u
9VjXJBdhzb7nxLUFWUcVmaXlp5H5mOFmiOW1NoczoAUYKEjmABnrOz73ou9o0q30o9h/h2NBe9kd
iwTwkBW68WJQunRKvu4Ltpcf38VFlsm1krvXg09lg3YkzcXioRkGmEndKs989Rh+zm4Vm1RYyu/J
5R+6al+/dTfThfS1XMPfmPOAO6lls41bMcSxElgD1IY03KouGnoMYW9jMXhU+WQUt3GsrUgYjRcf
Ffjc/YpqXr8rfU9+Nf2Um3NzxGVhXx3fvfJykTmwIvFLXGY6e1vlIFk4WY2PXTpwpbri+YWYFOU0
CtZweywmrA+nwOX3V6pbGVwVYedldGV8mnUKxq/6xLDSkdVeMX0YF4DG4WaylCRhs1omZUOHxw5V
zOFUJkz+euV87zpacpEiaRvzyxnHbSYjNTNVFoLZmF1PUKnIE5tMlYVZb0m6f3WRzt/BJQ7x8Y/8
pSbl2O9YglydFKo5lMc8O9f6mGFPe+Pap5r7z+L0mSir46y4VvTW8HJMHuLCv/8Znh07y4WrkgM+
3NXSealsSOlLIulr4QSNttAs+sbo0nSL2Zlsbja6zodcF6Lz2kBa1eKN8ypVd71whl6urfi+HOI/
/BsH5cFaqApuZGxiDrGXimMgBmh7CZem8C5dUxqwHmpp+VrtSqLnatrnnt3ZYR+WX3+feYxkOqHO
xwT4SWgKML9B8SEFW+n+WI+oMEo3ljg2xAvxAquiVOOZ1jsOvZRqCHKpIUv4UboQJXuFYMBJbcdv
TuhlQfwmDdSOkS9q/G0FuwNMyjL3tMd8KHsrDnXPHC0AuD1ecYE1kD8rwUC0Qw6tj0CxboULBeiU
JR0W4wzcmmrVcMM4hruzrNEjxx1YdknOI04/EKr8iE7mPK11bXarqjFz+hzGXAT0DeMBB357PpnQ
LwYmdOP+mrosHSjjU8JT4+TvC5BlOiZFNZC4fI0aZArzZ7ywyEdF9M8AMmKyOBJQam3JRfq/iH2G
o8sn+078WEat+kDL0HvESEf6tYe7R23xuq8bB+ZZfa+ZdyALM4Mt7RBDAyi83iLWHNIs2Gubv6nS
bL31Cjwk0FJZ18uZDRuIRrz4T7NvYjnqVb+jHqLnZe9TLpWV2k78CJKZXM3Klx5XRnw9LhFJ0UKT
EMIbISWNHe8DkNR3yf4xjS59C45yWo9va24lqGoUUXzAUJkKKHy0EPyurd3TGysDKy+jPBc4Cqle
/PHwzAeCGJ/JMshf3FUnxgBIkcUdLNNIwkgGIkpwosNkR9+0oz8ibtmPsc1KjtWPQesMrnVhcSts
uxNJ0TOhcsjRQ9N5aR/e1K3J9Uo11HB4hBzPRka8NDYBk/jlFIuYeD7mrv4vxGKWEkROB/h4n0Iu
a/5+RjnEKb45TuthBGrAplHlZ6RndQSnlp73gm0svbNVft7UfXqPusi206nd9+Pa169QpU/G8g1v
N2yeVZ1r1mBhIC95Bn75G8RdXuTy6QqwCy2cOtYco6tdAzjnic8yXv6P94eL5IbXFLZO/Q42oChQ
WgVEwrMy5txHn29tr4Q58Ua6NSqq6DdvgKKXXlnRGyQCy+fZjS/Y9GFO94KJBHXhLn0OmfxNfyJg
gb2NK1caBii517n+1hCt/qZTII4IcTx1/F5FYJaMLoHEN2SdkFEPH5tcmGqaoGXSVQ1A+INviA1K
o/rqctmc4GKuOjmZ/QZzTuyt4O8WEY+Cg9xHUeH9zIGs93VN0/aw+1YaG8aRo8R3ZalrOd5zfrVK
3c+lCdh9CROYOuJSWiZe3l+y0Fv1eEffZTtUOIw0hxcU9HoiXKWAMpMiIWNSWTa6tqCuG+rK+VPA
6kyBkH4qmzKUAhEuyVKW4emSzT4nRUlbPpJmjP+rqHWBrHQ3Yq2cToALuS4k1lDKPNwBdiDoKJQc
NPCUnyizaWS19a2b5pQ4uog5Lrb0nFMsPOxbnNf7LtDLNZNFhRRm0O4DzFn3OxF4ymY6lH8llsPE
XDw7EH5AdFksiQXjQjBJkWIBKuRH6SH161v0Y3nHZkELNmC60Xee0prGpaNKxPhX2fnHZip07+sP
UOGIZe4z84zpXvp0uCobPiNa64eYgGeHfucFw2XSHoDtVpeSTRgbD8e+4VFOV6m4dGQM41FGIRR4
rU9Lw1WoXKIHMajkpRu6qvYukPz4Ol/Yb2N3+LA25bvnhfJqHZX/BMIukwr5Zm2HCNnFRsIuJDfY
mQ0MD3WvrRc4Uh1DMQiVRBECGB0OSyZxNszTTMGh3/F1159xAsuprfUKYscBIKd4c6UAjnsEot6N
Nc5jwtwJTf32HZZh34Ci9sC1yqvuL6b+2znsVfIOHyL7khpdFDIEsIGsdeTaZntLVJrvAsqbUAJt
89UiEMxDHq+R7Dph2tvmcFXqzpRXN+fFW9HuBCqxhUjR/IqmHss7TefZhASOAYeBMb3fuWnjeW5x
AXewRjnEltDxE+jCfeD2UhM/V96FfXVkyGNElqiTu1snLEeLj5ybBFBAu4uLZ1DRDGyS6vh/3OUb
fxNe9+rDqYXFi3hZXIOGOHxM8DWIhoXkS+p4PWntGmpzroC/vM3vW+fcik1m2q5RD2Wt+GmcOVGz
rRix3RQKsqFN2EQ2EeekzjIrWVXCpAh0w7HL94C/YxNTaJSEAeHv7gXMo5sIS2fwTGW5WQ2Q3Y89
jw4QDYI1zk8ywyvkkzIev+XRJFtoisVn1RUjnQndxziu5i9gFojB3wpzjLv+8CrDv2kwxHgpD4KX
QL+/UlcKBzNkSe8G0mvXxBQZ5TbBNCrNrmLEpLNWu7XMZ0EKPC+pWEpWJ8jk+Aelw0XtRs7Jbh7c
9pPGhpOPhhEevFOo1e17J+08PoVs8UVoGS78msbbCB2M0ky2TlG1cXoIyajkOwfdkyiK+rrRtPRS
Q9MdZDK9nPAI6ZNNYJ0CKJzvYEUhjtXesDKLVHRetuimYsSxuztrgsJkT2rOTWyriPSjdrUSj8rB
4yHWcsEs72b9Prf9TsUxepqs1d4mBt+pq9b5933BsQh4jNZCDz47uszS8Ms5/1IVdohKcpKkAba9
4Q21Rj80+R88aN/24vojnXSJrr000HIgWo7zsNpwqij+TjvHHDFbnYhgOso+S+lXnLYpG0moc95P
aNMpEiVh/r2/XDdwZ4XqyXrbLFaiiYJRnI6gDbgcaWoA2JM8pOXwnVEtc3HCPGBbNAwbT/ESWRrr
9RVEf8wMO0ROadNhUrz1T0JtVMj5TKCaWwMRNdWibbk50XRN4YTS7YTXQ5DJlDAbUaE3g9diuoLG
sMns/IbTzCGk+odlEWO+HwJwv7Q+xrXmUPYO16xWhmjSxkBZHFiCqrGPEVCp0nLQiS7KXHo/0l2J
GWhh7fBSf/QQte82z4M5HoPx8rAjehkfhlr2r9kmtrOv8qT5ufMpf8++zCysVf6Fo6+y7OukaOcP
Cng9AEvU1QVnEulAW3H5aU/5OIA5LtTYp9nPVFmtC0bJIFf8i7dKyUdWTZhWw2VHIBJ41Z/JFLDy
6j2PltLkg4xTqfNwkyO4njjQJ+2ngHgyAmw/7lzs/khNgg3ERY3wtDjX+w492ahhVwF9PTtTHtpo
ohKn1fQUOH0FO4rYeDbyikC0KyDyeEUvBu7HjBnBvGzKKLGKgWkinoamI44JMYJNlv1ps8R0A0xg
dnMzLELZ78BWYg48wXreDI7WjRitnyUsy8i4DbQAQqXY5QCLG7AymhbCsjQo5u+XFuqufr69Gs5S
oB9hIonBOaElmvppfDdm8tZ6DTwFa69qlG2w3YtJMdwg4ZevIbu+T6R+vOKDNrgsrXvvXXFpIlUM
HI9SpzxrgMPbCwwi5oGuaQWu9kjrxuKOS5VafQ3oyVjXPVoR2hVN20/HopssPv0xK2zlzJkAUQ+U
f+fhCk2O1KQim4fNj3XiHPNxevDc0K2ndQuGzxiQJ8jo+q1Bx74ff6wX1yyb5Yi/FkFM00nssbUz
Hm4IzbzsGUsp8iI2L9fSMeGxfYP63HR6IEbmqytJMKNub5ydm4LLsDCkk+KADfVSElyhs7vzLTbp
L7PdYkjWB8TRxXgbwpkqy+5IuWR/8cF1H929PU8twCk2BILd1e8Eer1tIgaesbW5O3RQ/H8qlbVy
TvA1ma3mUPGH1KJH2J7nXtrMPNT23jqf0P7t5a0b5/u0LjRDcwlMU/VKZHxaqjqeUgrXrg2o38DD
qUurl2q8KeZh1I3xrlidvJEoJjtp51atdseXhGmMeqdyQtz2AXlEdMFD5Rs6ydjdDF/8nRFZAWMo
FatJWGuNsQpQO1N7L/vJBoH/7Z7Azqd8B4SwatlOIJ+3hi20iG+PEAqZ8Co6ehNEbwhuo1QEu1+Z
vv7gDic492OoR9ekq8i0mK9tNnyhVJra5dw1fjkPvKBcsKscGfCbqBryoMKAoaIjDLaOkhwtBIv8
WCiX9F0yGnofRKQ0zk2JJD5OtCPS3PY2yvtJb93c2LAIZQzJqZ2bSbpryFcIlT5760R0aVu+ra8a
KsoWqjqaQjSUpQR54K1azXc1GWqdmxqfMYP9LJdKpxQ7btlWYU6d9InzhwbonD1tx9rCYmebddSE
KFtgq9q6Vl11XSQ6g0XCRGOlyCCJEzvWnsVH49KCmJ4WlF/W2MHMEJEdXUBMWNCmtAQWQMVkZVax
+FDgbI+Mx5fihvx6102wg2ju/+VQcHTmwvT59NKcALNZ9Ldnu2mXHgnbmp48mEE4y0q2oVZ/4Bf7
uHqrDVSkB9S6MpzVfY2jA7r1BquCsByaxYbcaUdFZE5m51lRxIi6gGv/M7/J+SVORo+wkktRUzuT
tDhUVtMAkE18aD2QnHFn72ckQKgeGPVrs1PPd6oACVKu2sWC/Ud6dKr+ty1N/bnRzU228EYGhUYq
gAg2EOyX/o90mpTVwHoAFKY5glwtA4c0kydCXY9XAAEFvqMXWbGccQ50jE3O76vJgzuoaOykLgyT
wT1QH+sBWlhmKSDNBkDMRPtoQYGaSGdYkDBpbS5Da7M/cfTpOmDBcN2BCN9lQvt9ZMGHMuMbdD5O
dEO77AOY2gn41yRtnxJzBwv7jVmdw0TWsOJabH/xV3oojnIpt8nKlRxjLAkt2+aenss8/xkfEduE
e7rc52C1VPraeNk0vYieGXy/aecrlt3VrCQyZG5irHh6tsXLoL3pFlSjBAqz+dSVyF2YCdSJsrWI
QApyT78GbdZX4sZu796LYmYFKFFe0FnoN6235HqjDAd7OWhGBbNakBYQNSPyDIVMprRcACoE7+8e
LZr8PdTydu4GMw83X8JwP2d0O3Xwqe5aszObhWVYHdpjpBUiFe0bEujsQDMJXFUXZv51vXE0X8W1
yhtSf/KWwoGCP+qrlO4iSaIZ6WWUCGEwij9oFVRh9rXBobIiT55Ggh6xotyyH9MzXj56SrtE91aW
a1/H/TRLYbbOqv0D4uNwwchhxQaWMbwTQ3bMcfsNzQLjszIlLpKpP3YLXnMcKK2gc69h9qmrlvhT
v6h8KM85/uSRmNyyPyVitb/ZhbQlAkn2Qhd9kyt1HDwoEonA7phxBPD3R14O0Kn6qK+tDv3r4l/s
pPB/otV5vfpBenlbF6GlVlri0e00wTEuELu7gynEN1Z8I/jpM4EDUELwkT4DxfLhk0E+OWF92Nsw
SjAnpDQvd3ZKKbvSCyY8PMlQoHd1lLTIcJLvpyjQggw4e1j5y2Q7rOcy95vrn469mISM+1Y1MTLv
IWoL1GMOElZkqxw7Ii8pfnFLvCuKkMYK3lfUH5EVtxKsZmXk0PA+Wbajz1BqFfbhClW4OO1leCwT
uMOlOMwBYOkCouHPhD5ItlH+If8bCcx/MaDpxmErGRg9DMsZ09YHT1Mb+5EbO4Y/lwvtFF7b5kgv
zvOd8nXt2JTvSjohDxmpdLX2xZGFxiIiUeaXtzCVQSnzkLsD0sPsFZSxIRkzzNbvU1HlQ5EH17o/
WaWkDyqddIH4hhmJ6T6Y27ZDmFznmTK/H1G57pmKl8Lxa6Gk1PAXCUWr4voMLJ++voHakOcHAXLH
F/AzcV5KRjspRyth2PHT3wHYCL9KyL8GPGWe1SJydTaiJdSqP25TN6vvCc1ADI/u0n9tQy8jRwVt
Aba8jZKCaO1WdApNQlHL3kQt1GfWHjP/s1Gwqc7sYvykx95Pz1vhaJqvzc+l3WyWajXTemhcuPfe
mAwILRVG5oI+ksTElp1cn9Gv9+5uGu/epXTW0vRyPVG2Wa+beH83AYVU1G6/LrmFX1eV4bN1H5yk
bd4LqMQiJpRRxWl05H305Nhsz6gPufStVlXct/CCJM0M5zDH8SjKwoNa8J8nspor4OZ4KBP0CDbQ
fru5uwVgNNOQlGdFjcBBMwY1KQ8QRkU63swAPXUFDjdO54oqz9yl/xQlVAoN6sEnDcINyOujYGPO
2Dh5vC8YRgIbL5T3cedey3X2PtpXJBjK+Wf/FECpuTEkKQ87wno5VTv1n98a+oo3Pr579/eTgYSY
787tlalLloz0bZu8Ks1OOSnhidCT7dp6HNMPE+0kNMJCzHrkRxERQvobPtpax1WYThP9yAYtD025
ddeYVdOycjMBBi+g9eruJ3MPy6lVgutocMDJFi2RNI0pQnJC8FJO7fEVHp3VMLflK39lyf5n1Mqc
nhX7nULYtOAFwBZghFMwPMOGbHX0mfWWFHTJTuAzA+n5AbZ0uVGUt+dIhdxcsmuLYSE7KvaTpMoh
2egJj5hOVtZ8LkTSZK7hguvs3mAwLFYGn4g3RqfT6NMpoJw6eQmwSTp3p+Iz+pv7dv9pnAYVURKz
rxRojmxBGVkRWV7uksp5PlAcWmU30fMtKeY65r9icm2u7WsU0bdVIxrlig7qELU83ExYN1pXCkji
mQJxsoejy8MzVCs0jHbCUYjlho0PR8+N0cUXeztqo59CaQPbO1CtlH18h7w72wWB7ZUkUYiQrmDG
/3lN4WPHsNVwvFzE2fqjb1eiib/FTYrvw8bZNumUHCGf6ijypOGIYwy6ZQilPjaxnsuxUpl35LaI
NdONV5wHwf7uxmVUgOg/046bKp7S1k2f0FlZ2cJw7L2NettbxcqKju0QTZ4JwXtRr/5repzCLzyf
f5+GvFIkntvjR/nu2bScQFYTomVkUng/XUJoXX9EEUHQdwjrAYBBupyRhkbyZT2BsOYbU0jYr1LP
UOz6oaedidZFsYwySSG0dbrbYmga2ECnM7DbOXH5W6HMEODifb4RD5Atnsq8dLDz5TANjx34Hdwf
tH3u7Ux5jw8pJByWRTDx2Kr0uvHzaAFh/JSDjsUaKVk7i+fEZgWeXQnjutIMysXl+vKF/AE4DV58
9UI7omVcpB8W5N9vtRpIYddW1ernMZ/pTzUKuQc6OQXVY3lmVN17FAqGmtMWjnGXXPKcTXmEtQxF
Cg4i+f8xgXFfi0Yv9DR86BZGC53Vm3vSZGZRuHpuYKy8ak3Qr1IdjjO6/T11Q3HPbQxS97gF3gj2
43XBn09PXRV/pwnUrpjcas1Uhe1oA9DD3niP5M/GIs+xEJaL8hho1eBy1TFVme6l3oEvbObGrs3U
GyIg9epdM0UFD/UtK54HVrGyj8YsxWU4aGhHAow9RNA0oR6kfinDbP7Ad6Mra4tVE/KZms8SYbmw
10eUOnGGJ7ZJkIH+Yn4e5gxIlN3sbJR5OQZx3/AVEGkvlNEwNysksJgJlry+P1f2/IJq5ryvVvSd
gg2RjSS8RpIEMgmgtpVks+uzr7CapEE0pV8MNTUGib9KUql9XAyJZaPYjOyu184vf6qkRWAWCqrP
vMs+MKMPyymJUu8rOTylBkusrBD18m/EZvCcMLqL+LUiggGyCmUBnmk9l1oMgBly5k7yYz4jj8e8
vL1WL4A3pXxiB00snFiw6RWpLo1hivOKkuxqt2OHoGVeHTd2NCk+SBdMIjKQ3T51UBtdgEzlB0u9
rAXguUAVElt/wu7Ji1YagkEdnx0oDihzIVrl/t1m7E91DnS0DRWIbcSq3vkw1n+mM0rkp/kC+EBz
5j/bcTPuZ2oRzE7mBAL1mM5VTUWAYtYeNTPts9mlmnPfIHCuPqyBEEMOw+EP0uPTIDtuUKq8EO6R
llsbP3/4I7ONLjTmJrHUAO0ZaOEwHMXsx9kw5VgKU7uq2WQPhEAVz2+t634maCTUZU31jIEzS0uX
7G/DjBpKsFdRQFFRKTJu6sALU7+Iw/UaWQMj4jxWn3QPy8s83ZFE+HZZnrA45lldQBXVJg3GNx0p
MuhfwEwCxMkOO9QWXBiGW1WipWwoXrQ557z9SolilHYQmTDzRSUiYjpwL8bdfKONAF48p7N99m3K
Do2Oyo+sYMfi+x2Np7JF6EGYNy7JerkSzv6IE2H8E4UOD3rodoQM9PC6Sol5B4coGFeH4xOjZrk9
BZXI+JLvRmvBhPwpofHsDBWz1Bc8XfsOw/2jjQnlVsjubKg8BW54PxyWTTe+1BNpU7ccfRZqa5F6
z6NXxK93HLtN47k6qQvNcMgbNbYVYw9+Fb+Rfz/yFCNLA2ezwvMqGVi4Ts3zecY42+Qt5aAcAqDb
ahj7P8zfb0o4KptK8tBKnD1Fef8eOlY5Z+Ad7Jv0/7/4lXX/R/w0oUEwtQd5PDFQR5MW8WisvkP6
kdzs6i3A1Imo+Bw9PFwivcFJtDi8I40eJTW0k60CTbT64+afw+kabUuArIuEUz7ZCeh/hYiaYcm7
MYwvyn/g5odDVG0a8W/WrpQ6G6sCVp2HduvsZ77uStup1LJ6pqEnjfOJsHj0NJUSgdKpiBs8126P
jCX69WVwTUT4nus4jVUEeKaKP8tgnf/OEibm0AAQg9Y0Oryg7MvuB7i7wNUrYf/4Gzy4+khn011q
y0LQZ5YdAYYo1no6jviR82/Ra9j5ClAWa+OwCRlG++uNNHvZDusNyxfP/00M1KeMF9rq4Si47/Kd
bhSD47jzJhPndmTcZyk8HCqoaMqFrhweHdU6T/102B10lmrC+PaLXKVT8pPDGr+6AZJtP1cPi9xy
NJkiwHDx3e2mKTcMGjlgxQs0IctI/Oe0d2q8VAHucRzIbjiiP3Jikm7AUE4goD8K63mUI8H7fiGB
d4oMZ6MIvWbxiNPjVZIj7uV90tTxGMy+mHHyyIHfUwOPqEAf57iGyzMtF6d4dpo2cEYEc6YavsJS
y1h06lLGqN7W1sdL7XVEjAPUV5UwlGzXQtFmNgWs+7EJfoDybZQOKOut+0BR72mxJg95NuqjPeSM
I0K05OFJmpERN+Tar3Qo3s2Wx3tLTO4ugCY/hYCXCRA0yYZ57DsHUEnJRe1CwogMkhPMSdCFQgd9
vlvHObyy5hjZ8nh6BRHpBiP1Lh6c0yNBPcsUCY8t9qY33P+FrrMI9xNKKnkhAxk0gDcxQumcxNQU
d+1ERvwP62BCznJlL5D1HA/r9SyEvIA2itAEzds2JBeOp8dJJ8DgyTaFwXswcUSPwpFKkuIapTLd
f9hRe4Bqag7dOVRSQSF2NWN6wd47sHz8g2ZHiSMEZCUBDDWt5DbzrE01qVR3vQFxPyqC+Mbmdeq6
mPEo5BFPg1u5L7ASS6NrLB4EUMmOdCVOIkRY5UtCIUrVyzD5YFOFGWDd4203lWQNYCoMhPb2nHKn
DAns/4vuRHb5mb9GR0NBUwbyC5rA5oVNuDqbHgQoDHynzd0cJ4AQTdcGptyqFDWL+brTV/vGRaqD
56gYhM+u12BXDz9/i/Ag+9aLwnknSKw07GOxALJfQ1xXilZVRVFp5xbHA0zJGQxI8cn0olyGYgVr
WxYx0YwnWiECYwC3xSBrXgsJD07IbmfJ0jJkSxcm8Asy33ShmWmQnyrvyGa9GBHtPy9JwAgX9Aqc
mh1Eq+KhNTv//xKFYs7TfN2qI7c4YiPqsOSHSvcub1KKAouANaPxxcZwus83c1HctkNKV8aLqTn7
Y8kZ5Ux85TEUGOfuiW+XCfGipUXdFJZQK3M8LRdJ383P816aSX27OOOACnmXbEtV6exiq6ciIWsO
HacnqRpeF8eURqAdjtADUcfnGRtYugWQ8ppcpLxtGr1jdwdomUDCgOl7eNvA/EVleef6jsdCt+s1
CYHOYGDghkLRKS08ysGYRcoRpoFMOt/ZfJOoh3OEbLVSgk5SUy0Nh4OGZ3tTb8+Fr8wCfU6wIMN/
wMwrq9+NryoH0Fx5FbDjbUDkwbt2Uj5labX5keFFd3FuiCTuz+qfZ6UPsflZ9GApwXz1icLnqOyM
Jrsy9Y/lCM2cHTiS7X6RK3xiXV8gEJjXQBNlV9WWUEyU1HiD/PF2KOq4WkSYO9y+FAY88+OGQ6yR
AnGuiSodvbSGSik3+jEJbiRaFxFK9uMbiOUDOkSDr2AVD/dV7Jk+g4LJExacPvtUi68rW8wlbZ8T
xzmtwyU0ThJUoEtFMbQwIkQlI8hKwO8xjcW7rVAgiWPHThisnbJpYvRUZcwD/t9sL9s/bYTBfxUM
g/zMVtipovnJTryyVfLm+wJora/8gHJh42yBBhSRWfZl1zyUa5pqyK4QPPacd7r+C77niqiCC1VU
3YuJCzs7/t/Ph92PHip5tZsbQ/VVOHxMyzC9zJLvjxjiMUYd8O8e9lRmEpr/ItSYc+mArWxsp2eX
gcI4WPp+U3TLcJBi/gxW29reiBhG/cH+lpNg8jhIRD7XSoMlYSqwYXvxOOUNLb9V3W5e2sWxZpsI
vHOpR61U/4/aVI4Jg9/bIqqj/1K63ZYrjH3m+PD8UkzvQTt9UBGEvksDJJfxJmOjFF02T22eeyvM
GSdpNopYu7N2Ao/ClK8R+TC+ya7u9lZuMpN2c/tW/LPCKyUjT7SBCc/pdlZ8DcydVokU68h7xo04
7yGXasqC1N26u0T6zquJS5z2PV3tSt94wA5vyXuZN5yF/9rDp5d52G4lKcRAVc/8GY45mbnRyoTI
RNMKxf3nQ4p1EyGxkHiFgdOtcq/SGHUTamlsWduZeckN0yFYHBESGxFCyF2v4eeBCZ8o3g/Ft+lM
M7qVQX53YYhTblvsjh7bHfTltvXWNmmeTYcTzztlCx7r2EXwzgdoAODsYwRqkn9FOg7W3niJ0E6F
EEAlzWnu9f3wP2Ht9/x1+o0q4+FBNhwzOaK2saoU8e9+gTXqrToYpolbXBg1QVu16Qr/EtcNkalV
ps/rEG05jda6vaU+0PCmPuFVHEfi407F3PxGVYPxldvJvzESLbD5dkjnvmVGy2vIDcaguW2ZgBMb
QFbyMNW4oBFFLRmmspvDgw9E4y/wFpNJNlE/0EQVflkqE+TnWDbFHVNECa2S56eE6W6Acqye8D7m
91QvB+iTTwODcxormXbNS8RvsNQLUvo+riX8GpBNygF6ehdmBSmbJYPWw0kIUUNatouloKB3Bkmq
Xc8N5n95iCqS2MrND0nRppO/zuK3twrpHkAe/djy7l3GSJHF/ZAd6V/8J1QdZFxOjJHD7z/k74Qc
86Iy+Sqa2lzjxQ4123l1lTIpHImjdBZ1+rlBk3USLAwIvboxj5/i1tNAnNRLwfM1iuvnpZWIDlV1
7NpDNimmuZWxoBciTPS/U8KHsefStaTMG3bNz+RQ89b0scXqhRm/L424b47Nef5juNMYCFNYd3sb
Ol2s7Bij+qFfM8B6qWein05LAHU8L0j3/TH9HWBClAq7H9sYtw+31qEifcBPA5TcddUICs17bSKI
FnJPT8c0egdZaRUA1/eCUOQ+maDRpSYJpTxBjX3MMo8GxKAXGIMcZ/HJyK7y4Ag3Iad7Ne+3SQ8M
GOPOOMUB6RoIhVO1NWYIMWErQAepRtd3W4YZviNLjnoSb2n2+1ijfwRrwcFNt7L/FeG608c420p5
3uH3GJJqzU80NGMYEFTER4rUtafDiqMYpV7IfIN6Fl7LCO2vRrmf1VEDjs2ErVWQ/vHj6JVgMSZd
lSVHvsES0fmMnLiIPaId/hkvFd+nKbCLM06VOK6WzZcGWLxlgFznR06w3Hytn1VT6N/93zLydGkE
llYgVMFhV2bfLNrd+TN9qbcBPYmWdY4EKitWYlhFLO/rqysPJXn/vo8V5jRI0vFXz60vsRzC4cmD
j6H8g1ZkkPwfqu79SoQsw8ZAI/5vO/y8VBTnBH6+Xw08szBmyNk7eHQcclLHRBdQZZaBu8Nxc7Dj
wBrhEKIONOr0UHE66AAlVjJ967ysVVA8NTGgfisZufc3q7u5Fi7yY1eg5OETaSJ35Xq00RqmqXK/
6mLYoGQZtnuhAuNpPy52c6QiIl91gywFutNvuq89klVk04lPRclWg9HYLHAISUdhbiyeG5ekVUR1
x66oKeMDcu/QRye1Dl9cvCnW1jxcYn727EvaUfCwcG/kiscADvC7G90+oRW98ioxlcLWJfAPsQgQ
UCE/4CGxhKX39zjFqltDw1nuVyNdXJIE1nnFZ+VM+yucyK9KmwZ+wVVtczEzVDPEuomfYyuRBjlj
BhfR6oorlGClRxay3e3WDdorN8Qrm1uqMLm3GQm6lKaLXWdW3A928f2Y/48iKFqgCeA0AS/wGAJq
WB1KanqqP3Ncesve4MAnnZ1UyQWEMywAgJdhKjirDrY5RRfTS0hFcMoCe2il5rkH6s9/okIcfs6l
kaQDKSbwRBo4wqa9VdDJQPAffZHa1UTaZyZE8rEmFNOn+ks1cSszoDbsHeG6UYF2OiWKlV9qLBSz
rVky+DCTmelvoM7J0X4Ygbn+dfnPrAXfWVEXMuzupp/PsLI2k0dAvaSDJp4LTkOnJQtVuE6XNCBM
9AYbEDEzNYECxY0oJvoCV4+vHyod8CNkzvjMSwsH3M7/k5n2YDeN5+N8RJ/xA67lAnR+DYiYqmGi
MnNZZ0vYcCgDLDtBWW6Jl9D8GAVW/ZikQMWWIa54jt8fCqD7t/m9zkP6quuN4hfeuv6gVQQCaQpi
CceDi3h/kWwWqoNqgJ8dOzKuZ6fGfzRLo3cOcE2AC768wgYZpVkJdCMOate14vKQEgFg/LdBQk8C
sIcrs+6XVMIg1gt/9EnmG8AnDMX1bt+hPelBOQXPFfYtgkKLYbWGVfw13AEzPsnXpNtwqzQKdl0V
7gM2xEV/a4HlDKpz7jKwX9ggIxczoIWDP1vHTBnBTzQmA9Z0BHxFgCqKfYoGBKrSkN82KA3sPkbx
3TU+XK2zYKgOhg6L34ZC5irTbBrarWPsFodqQpSJUbEq8Kb6/sZTRMeEQVgR6QxQV8U14hickcTu
5Xdzk9GlE8m3VZsb0HPdpTAU0pOkeWtn0iT2q+q7+Ak/mmLbFrFJYdzsvH1fkzEP5soAT2fN3f7s
PFP6Rf0MYv9iDozghUm7sg/RdDHfwAUwKS6gd1whJTCb6Bn0iQdvJpM1OAa86JeDXr0FfP7VaoRL
jbl/QwoYelRhtF1CAIl6HJtYU7UrPrnMjsDGPQxOsBLjW62ENHtqHM9+wF0tT5/w5J1ae6cVx/yC
2+kcSfqdLPIaLvQAz7183nKFPFPbEo4uIvCn4NmYE6HhT5YtltVs5gFJcy4t5bCGenLAHjzgRQS8
IoBZ7vZ+HYVlvXIUflvEr/b/FD3oLPPTsdWBkJsZ6pgoFE6wnynYGeXsAX7Fm5x8QcvU1/wdIuSi
YOTAiXmDY3CSmQdEe5nf709AS0l+9b+oWPNBB9hyPpvmHjykmm1kTaNi6gR0EQmb1a4BKFhAs8Gf
gRp0r2o9NnxWGeHHo45c72eZ7uZQ94T9+DH1TlJVMCto+HaIAY5BzVfNeE7AM9j3oMcVTb5O69er
eVQ8wLq1GQ9n8tnCS821KL1VdnkrhYB6rEyMjdXoJxFFQESYjfB/DO8HBlBVYKibwASH9GkrqVPz
QR6QIYudcdse/PXQPIhjfXcXdWckwSZN4shnftIXy8yiRuxR3x8WsihH8G2RN7JWJ/MhWzakY40L
6EYJ/wyadbK4H8Cj0tE3DjYEPMSaUE+m9qBalq5MjIuSZmJqoWJ5BCnhUibMlvAyOx9hgsBK8WAB
d7rAJlRauti8GZSoktNH+7L1sK2oecJ2Ch/0paH2z7mQtR/9akop4eUFvzi3WtY1GJ5Yo/CWCWGA
oxHRxAUex85wPthJNXJGJVzt6v6fkS8npRW2qM6HJkCfObhb46lmzSkXsFbcPMB6drcFH94ZzVVQ
tD99/0vJ2tRRTBP70S2g8D/I4P//nMTibfOCvaOa0FCBrUxGSqwVi6BmM5+waWOl24rSmB3GfX49
aTnJaIIZUWchmj5TDP1NrjDRtKWc0M63TA5imFQEMK4fNFAfUGE4T5hGojxWaNM3x6fGZry91hxp
mBOi6/QxM1VlRIQBctbZNc0mfKmjBpqxD11dXiRZF8BfCgINCwMBXU8yOBt6/vhMmHJ5hdjV+Pvo
ou6TrctI85nPBqO9bxYNXMolxGvZyn3obgS3CX99wWVooP9K3IhxEFZ9R6SVrlXJfOrdsR0wRppX
XIxN3n2Iu/X0Zq7BDYgtty6OZ/ce34iKEmBjOK/kAztTrbhns9wLiF1Ljr2a1MRrN2HoEwIPZ6ZR
YleDi35Ip4RAJndpfHcsMtrTpIe5sY9N71WgaM1aL5xFh4l56k3E3dS24bnjpuIzwJ/qmU/VIExg
lbhEtJLChQnal55o/mdatteJx4iHqfPxtZdk0cKvUPKiU2Erk9Ktq1oUSttTqsbLtk1SiqgKGvpj
2wVFIqVXPM5k0by1eLJoW7zRkCR72xsq9g5o4qtJYYndDPDVTJR1AJpPcPCvnFdBXlpJclEdLKa5
yFU0V1DZOuk1sq6gqqkxvYtt09sSuBJx3adIEUb/Fs51hf+FXQgdxXSMBXlvn6iAn4mZXCIIXMkY
oNegtPB4DThBB+k/mpgZxNv70naDeeGKgF0QgbZjmesDch2EMJA0APXJShkoJLLQoPNYHYgWlbhX
EIajQ9XZWzPyZckcbYb3yPApTxWeLN5uSS1wMPZ68MVNETCAovmN08PsS13ivSQetZUPns+//lHq
2/73gqFxPYatsdhMpBaUBscUQcvk+pwZU3OaHAeN+d7V+AZdPP7wA8KYXGsAG+3NIPUHVmBHBeQr
geDJpNe9+hOoD6xgfy6yC+V1oDjabcwAT910LvaGPa81WGs+W4T8TAExwJXF3UI1s/S0EW7qdi1j
rNfOwAuBgDNvSN0GWyHuJ6zo8oUtQBQkdS/WzdXuHXDvZEw+QC3ikX9J0eIXcESZJppmGO3KLxul
Z+QcyrTr9537m8szgwuTZUyD5VdudnzhdQo9LZsDAMGsV7HhdRP76KRUd0XauzvsbTkvUCGN4/lP
AyJhSDcLHEEP6hfRvLbaz2unE7T48JMChDbMGnF8dyoS+/6B14SspOtSRoeCkhVMcidnAiTAQyoD
u2/kI6UOWE+6GaJbUGoKqKcZTfkGmObLKaxPg0t6WE8BN55MUtBf8DeKBDYm1Zkv7tTwxsJXxve4
+INySH/5mQFxLqzbowiAR+1IGcuWIb7r16+J27u7UcSZJzTrlOCXE8ax5Byp496eYZeYMs+zxqTZ
L0l8ZDdF3Wy8fFbbXXXPBJhTecqWmfNEPaM51hP5UdQNt+TV61EYZln8jp8AjuL+3nXNrNCSrLZ+
V5E5qdyPJaoycc9FHsQPPpF/HTl5ahMTKUQf7vRpf/lydEN5bASc2thne4WXuHXan0W3V01n4KJX
nIYdmTYmS3Y39eDdMxx2CCJTtd3VClNUgf8kZA54YSf3+vkji1rFqaW1vL1pmgmKdG8iYl94wGUo
yrYJd+QbSsJsSciWcGvjGi4SpWxNALhlklCskHBXGhB2EzHGHeCynhTUeNmOQtIdZ5phsypmSfXb
a1qynJzrpapIffSUa6jcoE+pRK8FxcD7Pmfcswew9NvCafKLVL+POM1OqiX7ydby11o9BSV6bUx3
jaaP5+0EsNFc9nsKF37v0swZy2IOthU2G3TH85DBYYLS0mwqAG6sgooBcaKJTcpBT1Q7PPMCk0d2
5WXsmOeI9JQBl5PDk+yZRGTchQozrIBzVHKRYPL2JzVXJyJLQ99VVRzq2QB/eZTeOcKM6L2Dx2V7
tQw8DPFkPebz11J6wLdGSiDHXfgbF/9J5s0K3p/kjLJ6tABBeoo+lmcOoGUmtr7GMAinT7egrj0C
j1T4nhXqvyPiPkGgn3LvvWMJWCdVt3qW8JuQUanqHcqeniZWiDSvYDLuKCzpIGpGYZb3hKnZsa7u
VwH6Z1S6GTqgWbn3p76HUf3YQT0Ng24LaGlMNMJjQqr/uOtpnVOA58EZMplWdTr86TA4yfYs1suT
G9uIBu0WveChQCS+k0LBP8wpdL57CbOntcW2MEBYn8ebkzQFenMvr2IHtkvpHumwrPTlUcs+P/H4
ASOVS3zxrsxEtQP3Sjgv7fwM3GMbQ5lIYNNZDmTZ9+qzmzobCsy9hvaPw3702+u7x3f2OLfEJX4d
JPss76jxxk7Iawe7GivneujPVkVPVlhBklfhBW1SO3Amv5o50YGL7B/mO+kfknbN6puKjqXRkDm9
6zGyryRl0PuOnlMN4O0tLSAFmubGamG4S0XOfH3UGqA19qwl+/3FMzbYFgJf+RDmM70uFFWtAHlL
zNrlFUFNcpEZhRB6TKxUZeVVV2knb+Zoh//dzg/CX06uHkqUeBbK3Ciymbuy+3MGt63e93mfqy7C
qILQvqU1F6AxAtXuYAkB0Jalau44ULASHX1nTnKUXJYpvHZ4PhnQjkQssBBimKQ3dJWnJt1wjvqw
xiTnZvFicWNu89qhXIFE+IY/V4N9GYWwcaNF0DZEjE0Vabi4TJuci5hYcJ/BNpfJxhrp9H2O96Yp
EsnVII0CdBP6+UYqjdd+LAVXOuBES2U8yDzhSyExgXloBGxiNraOnVI6zyrwP/rRe5qgaBTZcv/1
shFTRBG/xAmYI1QmTSFYGVNulkHF7kDFSg0znvRNOtjUZLgKe6cw4c++NckI/TZa60YJ7k4ag8VG
QvIB0d8ZOb9daZMaexlbi1wnjbcv1WiZcXtZOh9sQ5yDmVTaWnj+kc0eixewWQJyAHtwW4NQA9zx
oJ1b20CfuqulnA7ED3IBoMUF/acLkgWEZVZanA9H442Eig4KgNiMo3OVivbI7caTSQQgNvnmfH6L
BtwC6lCyMnDUkMzFvRe2346IZqEhhIQ1KST/bv+rM2yXXbX8fYLYGvhuDxtTsrYdag4k1BI3nsLr
GCWBnyxtyBDgML5ZUGFggXH0s7F1PRgEbgf6VJnJSgKpITVnJVZ+VXp+SAsRkMBDt/svzIrOQxfw
tLkCwjgTs4B3JIYzSTQ0EqqC2FmmnLtwziXAtqR6yOqtC6DeTvX61gerenemNg9BmswmiUhyQOJ4
L0jNrqdLYQEAf9ZpT4U3hKeQJ3E61BMW7GScCIxiYCiPe5RcX7Ur+37u23CZyfKV7Zf5r15Mcs3i
191OKSF1LgHdOZDAXpSfuDWt9GyKeJk5QdL4UTUN4NmFdTUuNKC9yxnrjehu6nAWdMnCMQdzWyUN
uHa4BzqBy+x++E53gXmngK/gY0KB8JOXJTIhgsepqCloWl1V/DC33fCVxZMIwhSrrzGOnSNPmjve
3ABMP+eWeLw831uuxWyGdciOPxmV6SNAG79jWNXt1UpQt2A6r14vSe0KV2pIy5wYFPm8c+3OVMj0
M4SCxOLzrF3FmpNP7X1n4PT54A0UaE14OloVGOZZkETK0Mw5d+gO2QcDXFkgt69CRYgZF1aB+BTU
j6uxwaPQm38Imob4ZeiDFr/AUvJORPzMWtHAmDIWXt6RQNGqbNPKvIJ+kDUedNItvyLtegyCwhr5
x5ms894mdGfzl6qMv55HfOzSsf/QnXZLwPKfypUXJr+huUR3d+mfiHuLqe/ddjnSRFmsMnPzuS6T
VFU1dyLhizDRMHUF4i1TKvoRUmJLMiPBgEMBgfEOSJst5PyItQ7iVDVJUU77jAJsIrXa0VKjVPka
A7FhnSEuhp1fEi37/tGKPUsmlfRd8pXM5Eac6HEVlwQpAe8dE+n23VbfHnN0Mbf4kyjcOQfBgmzI
ePJL4TkbzP96U/DYntmE1o5L/N9Vxk7MjbPbB4Kx/CSHE7q3cXeL86i17EMAB09b4QKao8BE9PIb
H3meJ76LUXe9dC+SACyWdMo+joJQz0sKDVBy/KwqtLcEYhHV+mHSng0Eg6YiHlC5Y/5qip2iM/aN
+dlvNvKzjKD7fnfuqcy+gy1e8DJ989ftiekHo1+T3VZJE7BQ9C1u579cDMwzL2ijrOB75JHdMzB3
hTI39JKOO1mNaAR7UgduIflRzxFyz3UhLkQlBPcGxBXnEesrk2ECoTLsyuK/kk31rrJetmH9/UO8
/emEsQFvFBDva7HGbDu5vaZry1mFlFHXpOfF9QvJhd5LWW/oNelsCLyXv+JxoD538WJ1S3IyFhrm
Cl4mW97nDN9zhG/ZQK3IpaDzUDkipBdgiPxpNTLuIpBlFop3IOmZjd8hPwBhhEhevfmNj0o8CiEU
nHo/LZoNPw00i/gp/5EWOLkcrcjDGjbqVYm+OHBmyEYcWm1F2v1m4BvCA3Zwe+klnjb6ZxXn5kXJ
XAMMEQw2nK7CIfC7EQSXskciQ/2Ou2foREKvy6ujVS4x4lBA3oQlhPZyBmkvlZ+fV3wo1CHxb9CV
H5DPui68Dfs7UI+dZDkud6D5Qe5u1001EFMIDSxZz+3WHybQJJCj/JrqMZ9ZougUMC+rnzlBl1PB
D2ligBwdPPq7aafOP3Juf2ZIZphM8F0dNjtD/nkcjydRmWICYNCbX1aAHdD5e/l94UHLZZaF3xx2
u2mxRSjjvKvKX+2MAMFRRUiBB5J68ab42vxKbbk7Oy3WcT9CFEqrq7U6w1blVPDdqa7ZNtsBY009
BMZkiA2Q5RXKGFaYL/NUVvXDyXk/TakdvgOMXhIhJ+kSbMOgyiGzuEtrCIWB90+WFRIkPAr3OfNP
rMSZEnFm/L3phuCIW4bQ21ynr497u4xayyKJ+FdG/3TtQhBBA5ms4Xrp+EkaWln3dQUGbKWZuE5e
b5v39MFz6he9mm5hfSAvkIvyxogoig3d5TrykxDFd85mjIT17cRYCUlPbO9UdjavdczuoCBk3LXH
mG0AfvXN6QGFRcal6TmM9LaUj2Ae7VyqL+MHjTYovA8o+BFhsyHTMBx+X1kG0IjZt0iAQTOf6qgA
CTORQ0/slzyT1IpjZ76BVotLGt5xV935bXOPQSHIBrW8LA5qqGoVp3kbAk0stbNGya+VYri1us9i
WSP5n0IgPiywYJECUpX/BDQQyAey4Zh1X8+HRaWFXhbaUUtMjVambFT2mH48+QiO/Xh7sRH9Ar/+
in9SbBLkqxP2L6x9YTjMSRZtEfc0NGszxP1rsUdIZsHtCMl3e78+eXoKDMHRG8NwiURuVfkgS9Oz
bt+PnZFWFD529CY2Xg01oV/Jq0Xbu727dCVJRBMp7cU5novFg+0Rpd2P2/5jyVFp3BjRFAXAoJ/h
CWBbR6EA7+7BIgeAmsnvVjg3VBmRQx2y7X+zMSR94e0T/V0ryAAgWt+CVSa2Rk0UQD6l8CMFamXS
4LB+0ZhcrEpQ8bmDZH4YyxTKPJ1NEJEUD6UGCtXsHpReAHjf4wQgUv9KMhaHH+MLyUDw29OFktKG
XLfoG1l1QUODq7B9srI0uEC6hLLFyqNbJCDRgeUH/iR+zL8y0rw6gW8MX3bxIfEWvmeFQLFJNqlz
kOEbXsbSr0TzZ9GqnnoyvseH16J193e5kqqy3FTrpvYs4kEyEr++2njKHB5Q3NosD/cBFqwPnHSo
/IDPCnNKvGQ3jhmjctkqChYH+ebIxjTZQo64yz0V5IyinvRXtQiIUbwYDdxXsQrGvkxqv8VVWhlo
2sG1fKVtPWUWNyaRZaLm3v2von2g5yIGIfUhUVeT7Hfbjn3YqoqaIdSV2C3msd1mBmINanf4ryrZ
ZFuzWVU573WDj+TZnogvh0aD0kwZIBaiz5b06qOeSz/NeXFZMm3yTFN0Tw96z25raaIKwt9VGgBW
JkeSbLeh/D/eAKOZK0HpxUvxJVNCDtszer1eZ9kcmAkLLtX2+xns+uVz+DR55L/K5PSpitLruiEk
c7lP2252Pb1LchVHPxU5fpauIqqRk/egrYtprh1y1hWLZflPTVwN5WAMelbpfgFnJ8MYb7XY03Sx
waLFAIPDhcps+ZG+qSIIWhGI2eBSCPzR+UCAph1mgGx5Ca4IOiDnqj0Befnwim5PRoQ4hO83sl3p
7Yds2Z6zkbqAv/2+EoeRIuHzM64gAqSXRUGEfdaRSw0WfA9vxoHpPsIwLfoB/IMZPY0iWxY/g1O9
ZVX/qMQOg+LAFAuCDFj2ilf+e2VzYr5Qk5sz/Klh8M4mgU4PS/yJI0bTEbvCN5wAlMgtSToxxxFe
c+uzhZmHNYGoUBpEbuMQ/eUuglOYLPXbY5H/sDIVs5DfLd2o071STF78vb46ak3ucs+hlIx8Vb0B
sQiKtTSPL4jK+V+Fi5y7VyvlrJmoL1/0hpYxH2m7VYs5QpKpbcHOYSKBELM53zcwxKRXVMPKT6SO
CXeFZxVI2gwF9O+pHXXy6GQhB/cQLZbWzJGKWlV9133TeDVBf49KYI+fDdvI3rzu2lTxVRA2LceD
RJeZf4fz5mFmG2Js+xv7wkBHwxq/afFwm+3m619oAOOssRQtnaSgYPGm2/h2fO6OpTIgZ5PLDk9s
mGr6Oq7n1knEFgT6XOGYoIdi7kSI0p7b0jchzReR41/OWU3VfIZf8uwyGG3ZqSjvSOMiL+0JBx+4
Hn/MMvqfJZkP1nuK8Coyw5ucQo+DhRnVNduzEcib6u+gYQiuEtg3X4VABvxCGi3rSqs8gbQg4gTe
lWStwBVACO/k971KeKAJRVIartnwpXhrDqMyFtoRFkwo/+l6uqlwJrVA5Snb23ImPOS3w3SuA6ZB
j1yAQCJQZCehUBc61QVN+w5W2+gWQEXwI9LUM7eUJubYdOLvDDwj4Iey+WIa711DioZtItmEQ1FV
5cffGContLOn4rlX94gxaLusyokJSop1VTqgul9o7qMhZ6R47zaRD5ZqSLT5H5hUgT8paARzJJTh
MWdAMvV0lpH6IWZm//pca1EPxXaGqZtAqoDj/0V4rTGp2TTgXWIaq3Ngnamj0J08RGPucYB7DAcs
USKD+8+pnOEvdSeNoLkpJm7kxLs8+pPGK9DVv1m7+LBF1PwpU6A/FGWODuP8bT07Ut9ogOpyEAnt
3daB99GlEbYVQpq13Qa2JWmM0DfgXx5j7gz0jnPgboe8X6gIcS8DlxPYe6TxbCXmfNNNrke2hFFj
sFA93evSOC17UXWvMHW0QRJtLglh1c5PZrQ1ygGESIjTfoFU2s365z0j9SiDYHF/2dj/dxGZDZv5
dIx9Iu6qwjPC9nenUz0NHbDR/twBPkGXJIevWw8FDIm55HgcCQhsLT6fbs1piuUAOylpslQyNDWQ
lBppaPE1kDD7ORPuMPhLBJ/sofG3QlLzS3I1bbNd9PYevfUzR4bBgZa8+plwUgenzvr9yps4OZn+
fxV2VNOPZQoZAdSwSesESrMYK3a039PMuMvtLdJeeFUKm2enns7exLRl9BweF0K6FinoqcIFWbch
5wJF6FZWQFp/jOS8KMgaVnengK/rpMd6LP/RoY84Mh0RTQHOqBvGbGtLxxrX9tYjEtItqo9TO5Am
MvYZkF5EjTLHyx1zzmcvPfoDATgxd0Ehn6ipaD1JRJoDQs0yQ16wkw/tiqh3TYPbrjRsu8hH469X
Htn1k51aIQbasP4kEt3K8wZK6VkOxCIZewiAM6obuMjeS8G5ExCIR94REQ2D+McqFGU/6chEWxiC
kj4cYlNXIbPpd4zSqZvi7fPeuOu8es8E8Kt0xNBo9nn22zkWQoxhU1YL3+LytTY+KQDXcx5YVVXN
2GIjOKy6KQcTrUTOvXc5XaHZ8ae8ZWbYKVflf+753B4EBkD0H0Vk6bCR8AmJwISXeV5O4YlttuV/
Lomf3WO+5zd+QALmS+EXKQRoOAh11iudYx2S5FYMXEn144I+QCO0QlyQrVXXzOwIRoDI2HxKYIL6
POqQBo73gzflaQKJyG/wSY5vdRVu4CI8olPcAMuiy67D7N7l5hXQit77ui0PSGS7Jzf/Up4bheRS
WGG4yebsgultKZuvclc4s41Ii5eaWBI/7a1TJj9mR6IVY0Un5HYqxJzuU5HLpjtg1WwoZs4XZK8/
fRa5VjvP71Ql5RIbJtQ/UsD8Uwq0TocnonXNscehceaincjMNyFgwa/1efo1l1QV/pM1lC9Pak9C
F3whyxmsvk1Igj6vtVB40ewMhvU1bwFNCdhEHtiOhiW44leQLgukpH1icJezkJPvhV3RULYydL7S
mUf36JfbgVAmn6LIlRqc6Y+zU1d/OhRj3bVOocG01APcqvYkH0U/KwI8ONdG45FBmhG3XxOBsNyM
9wRZj/+/RokF9muJq/kC5jdSA0e6ivj3rXsdXu04nZy9UkycniRAjUPfJHtyIGyTxSVmCRB0CVH7
39ZEGQT3nZPo48tEJ8ySzahfkjvVbqMtAfWunP5VNN8gZGBI2to9nd/BMd/tQa/7vXhLeyEmuDo5
nIv4pFjt8UFGdmLYV/0Y43iBc0ilVmVoyYZYDTv7KbYD/TvFZTKBdqANZV9HnPOrThFo6V/o237C
XcwmlKdQwOj8+TtA403c7SmZMNH6r5bfh+kAmDo22Q48BktONguaJ7NPbSNiYkq5A7DPPgnc4KvT
BPhmwfFAhA18jng+PgDIDSzGbxyCY/KNajEx9G1/AnFlwRxZg7iflXP+TBixV116M7CpleqkRzEA
P1P8mV3sFYVJ0q2zoWCrAPxfVuRp57shS+4rvp1g1rLKQD3p5ke4G7JLcJR4evALqfRe/D+Jd7HZ
MW3v3kTS6HkgTTkWgF6DN6m+q+Je9Ul2+vL/X8kbEMIUGD7nr2+7wniRrCWz0DpV4UtmVBYFx5TI
QNcGIdcxyk4u8K736hjxziVZdJo43ioELdL5dSyMgMLgDXiSzgUlpWduGgg8zqSk44CQ8/u6XzzC
AEcpjDdn3lRmbBVajtISY7dshpJmzbEfuq/Bzvjp2ZT5J/O/bjBxoEWa/BWjOlYJR15x25wS7I9U
CWhl3K/1wYa1+yCvxo9ndz/DN3SRAKLIUvJJ1iPqMMXL++0SrnnBB3VGYLGrINH2AqfaMvnGg1xO
i2OgvEb7OVpB4LviXnV7KROmMyO6WZ0Oh8qbT32s24Wltiq/M54NiAOrD6dFmRstiwsmSa23nfTg
L7UewdvvoZIqZwNyOaR1TUz2rhTGRHH0S0bNHNdDhjCp1InAqwKYt1xv0IR1ebUEOsp2yW+iK5lJ
i8t9OTYdu30lHByQsZOdLfS3/PZOCKsz3uhif22ICyl8g8vQUH5uaJ1KZv6fQdmcuxlLJtrc9Z8D
/1LluRxDvRMQDjGA1vInmu5P2m7aNbsrr8oNfoKDWy5PB54JbG174sZSZIfQb3n4nSh53VaOgSpR
HNeyFHAJdwPnTGsc6xRW7iZAjgI8GKuoKToanHgmsG8Tt37OArUDpjEmpSxX8SJdWf4y6KsmuO/a
v6H5fWRu65boVhQrubT+gYgRsEXkEeW3LtlaDJeXIqjbr3h/SKeCesmNTGk96I2oaeFlIDQ6FT6T
/GkC9/k3Buyiqh2TPIqSR8tjH1jyT76VR2IrZBRAxniJJ8MeqV3R1rxbA6jz9Y5JveUyHV6X6Swm
vYki6vEJ0EH8vC/0fZr0u4LsmcGgmg2UUdSi8X79UpbyU4kxzZvpIZ5/2BQNFV/9NzeGt0Jm312X
camkxLsOWlld+Z07kZbh/o6mEykBSNzF+8sUFzA/PGQys9NDxVcyEzP3M9T6d7BkW4gmCavc5wMU
vTaMHz7ackwLTQ21WvgZHFSOp6wUpJPsnNEqMJ+z8h/v1ru2KBkp6Phnx7vE+5D1sAkpgCS8qfQi
3sRrTdauZBe7RXxJ2kd+uxpjhaIHgbyBsCaL8AHZW3VeXmElKQMfMJHXGqDQi3kZfQs9ymTfJKp1
FYBKcNtvpyQbQgsQzrLSmWRFMoEByeQhJmZZOGxuFCmQlHz5BMWs449tbodFcGRxlTfXh3L1vpic
SWQ+6VJYP04LVp5kqzyyriNB/9nWA5RJ1bZeiMS4BmOUnq4QkKwMGuW2GRw0MNfJ1QWCztL86NSr
1h+tNfp0sxLpShaViAhyJSyBlJBUWo5Ra/snlLzY4xMxjU0rpOvLDkIUKCE1AL36mY+0L+k2oA6z
o9Un5u0E4J5WUxNXmCjWVBMQAO5sNof96GY85o/HPbJeUdkqQvojVigAJekFE/uDeV2fRCp2wH2P
usWOh57CegXUDEP+Hcy2e5hJkoC9U6WYS5FQiJBMDds0Kgo9JQsbbNaQ6JjqE/hr+CIt6NRI4gR+
eyzOv7v3kP3VCFGq5ZOVogXquSIVttlUywqiGBcQ3wrFRuDJ99wUu+q1DUCp6PsA8zNCSzWCGyD9
u3fVEZ0GbL0rh+27QkXeMF1AeoCdxpMgy/wGEQxBo2y1W+LK7oERnZscBQhd7gxizS+yK2HYzxa0
ofX75AVSXz6qt++LLQMJsXhQampChw9xDgifxuzeIqx2a/iHg8M9YekUYagGLQwAZSg/pOD7bTh2
OYmRVSyfJh3r6Ic0quWM4HCxGh5UICG9NPCFyjyynNAS5oHQ+yPB6otfCTOQ4QvxaWwrKYhwDWHh
HNn+loOh/BrAM58FEEFheAaOUVYRv5rqtM8YMwECKP1BkOyicEDSpC2AxAMTV1NQ/3MECcLf09hj
/fdDy4E2jvFePiHG0Jr9/j8+1+3KTGSOe3HvEb8gagz7w3qFGKEJ1X8AD+Y8kLygISzDQxakkefd
La/TpEAwrc8Gdlw3lryHNpsYl4ANaVvmWQphLfJ4wv1ZgcxxDHI6crd/9aZNnccWEz/JBFmT6CCy
IKPbGUjampioRIP36aU4wQ728LflOr6u4xmLQ68l9gGFVDcojDhaEw3nVro62wRcHbPGLD9sgP6S
4BqWlK3OfEWDR34M87xCvtj1jyiKS2/JfbbSqjcsKWrMVS1QTMDrE1YGm55kS/P32Dli7zYq4Xwg
1Bpxe7zvUKlcnNH3ClCLCSfT4LYIWbnV84erbzIXM0oV7uWKcV1eybQQeqULeaXoeRY67fwUc2NT
orDMqz5KEBhDMoAFQXA4xD3p1n016eeqo+9s14Pm9tuTmERyJ0+8vNbdCtB+BZbxcBlic180hMrs
HTlNVcVRFbxKOn+9H6h+BTw+gny6nnS4wE5FsXfFmyy0xVzuxII5wEg8+NiBz5MaeGZO1DzXP2Rh
+3szNRaqB+jlvVSqGDL6ybMwX3zQtpWfwH33bPPHCXW3YIPjSPjCsjXsNN/SuEgI+3PHBhJNe/KF
RiPLoSeg6PFdWCVsh/xCbCjzms/qHLrK5m+7lixqWsMk+PhwK72ilA101XhfgIU/Qlr12OvnE7bh
3420v1ce4jiGPMxKBzdMX2TZ4pi/7SlXK7AfOgm+AFLhdW+wNojeC+BlYmY+icHcunJGf9R8BSaw
7DRMM/4Laa2y2ABun4PLjk0pYJWjgcWU/HLbk+38X4vFXVBM0LQtTUIz7wG/kzxDtJa7sG2zwS1h
oe/a0zOHl84p/8r2yuB7T3rGKdiLWQYRBUuBVRi7lTpWuhacH50Uz9iCSDXTtoWOuRR8jrBug487
cuViDAD70EfIPNdKVCKiuCEEYbYuD37GEOkJG/gbxr9H2iiLgvn6RTXeDUwWtCRZwEGSfo3FCKv/
r3BL9eWjRRflWKJzIL6o5YhfmM6q86qY+1l/oKBpbQS0Ux4kRDbVOOtvu8c6tyyFB5Stgc5+MZ7O
dSBZqfH7yq9jGqFlhNnvz5Q5Q/1j0cYq4jrX7T//qUvwanAR+AZ/Mjnzb4XEgaCs83uQZQhRJtx9
ZUksVs7iBpzR1jcFpG338dK73PM4of19tW87FSMdNRqCia+ci+bONIZY+pNQtf8JUKly6xzGao4n
yrqE2Yvok/8xvcT6I5zorpNCxFr198oc+csWOSLgbHx8RE+GlxmcYMoJIDGgMaIZk+ZeW42eXxzd
/Q2jSbXjQ67sN9PqIS8o1FxZmDd87/GW59DUAVgV0EpTX9+1qnPFKMJeeHQz+nP4q0C0hY7fRHFE
qqHzrTZFb7lieS5P2qxKYLcMIGFdAUhGApkscDPg0QzCtn4ZgPr0OADs2ilYZkJ3DaXZjpl9WlqJ
7lG+Ff14Q9S4JKynfzAYlIyuSu6VKO0iYhbIfyL58eBHYVawA/Cb9Bvb4/XphYIe/dAaxjo/j795
sW7khybF+nB0L5M5CdqIfoaSQ0P0uNe6eAORwK62/SWf/LVNfzDcQgNl5L/tw9y9dW2Q/zy/4/Gu
xtNmUntiIwNkgX4W6UA2UtHLib7OcDcEOt1cUkpNgZgxuJDa6WATtHrtQPAQ5JkfamnmvnIWugh/
YdMuXZSNpqUWeLFvp2TLIbHwhoxUB+i/oAtCGlwk2PacFM1sbvA2mtdcN/SbArdmD+h73jeGMwPZ
xu/0GErEvJH2ZANTEtuSQePbIwMgqvs5AvXyQHMqsmx4U+HFp5Y+OIuxN4mvv78EiAguH0DAk5cK
2qKjVT06qw7/ZXIx2VwEGawTwlqzmInZ06W1U6NBjIt3iUqqBY1AdoPdsW84CTu2mDcJGP/pAXY=
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

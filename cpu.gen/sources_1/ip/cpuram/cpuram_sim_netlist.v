// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Mar 10 20:12:08 2024
// Host        : PARIKHC-202FE2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top cpuram -prefix
//               cpuram_ cpuram_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20288)
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Mar 10 20:12:08 2024
// Host        : PARIKHC-202FE2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpuram_sim_netlist.v
// Design      : cpuram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpuram,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20672)
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

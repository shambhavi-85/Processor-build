`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 19:48:58
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb;
integer i=0;

reg clk =0, sys_rst = 0;  //input is reg type, output is wire type
reg [15:0] din = 0;
wire [15:0] dout;

processor1 dut(clk, sys_rst, din, dout);

always #5 clk = ~clk;

initial begin
sys_rst= 1'b1;
repeat(5)@(posedge clk);
sys_rst = 1'b0;
#800;
$stop;
end

/*
integer i = 0;  //keep count of number of element since we plan to initialize an array of
gpr to some known value 
processor1 dut();  //need to add an instance of our rtl
initial begin  //initialise all element of gpr
for(i=0; i< 32; i= i+1)
begin
dut.GPR[i]= 2;
end
end

initial begin //independent initial initial for sending stimuli for testing specific oper
$display("----------------------------------------------------------------");
dut.IR = 0;
dut.`imm_mode = 1;
dut.`oper_type = 2;
dut.`rsrc1 = 2; //gpr[2]
dut.`rdst = 0; //gpr[0]
dut.`isrc = 4;
#10;
$display("OP:ADI Rsrc1:%0d  Rsrc2:%0d  Rdst:%0d",dut.GPR[2], dut.`isrc, dut.GPR[0]);
$display("---------------------------------------------------------------");
////////register add up
dut.IR= 0;
dut.`imm_mode = 0;
dut.`oper_type = 2;
dut.`rsrc1 = 4;
dut.`rsrc2 = 5;
dut.`rdst = 0;
#10
$display("OP:ADD Rsrc1:%0d Rsrc2:%0d Rdst:%0d", dut.GPR[4], dut.GPR[5], dut.GPR[0]);
$display("-------------------------------------------------------------------");
//////////immediate mov
dut.IR= 0;
dut.`imm_mode = 1;
dut.`oper_type = 1;
dut.`rdst= 4;
dut.`isrc = 55;
#10;
$display("OP:MOVI Rdst:%0d  imm_data:%0d", dut.GPR[4], dut.`isrc);
$display("-------------------------------------------------------");
////register mov
dut.IR=0;
dut.`imm_mode = 0;
dut.`oper_type = 1;
dut.`rdst= 4;
dut.`rsrc1 = 7;
#10;
$display("OP:MOVI Rdst:%0d  Rsrc1:%0d", dut.GPR[4], dut.GPR[7]);
$display("----------------------------------------------");

/////////////////logical and imm
dut.IR=0;
dut.`imm_mode = 1;
dut.`oper_type = 6;
dut.`rdst = 4;
dut.`rsrc1 = 7; //gpr[7]
dut.`isrc = 56;
#10
$display("OP: ANDI Rdst:%8b  Rsrc1:%8b imm_d:%8b",dut.GPR[4],dut.GPR[7],dut.`isrc);
$display("-----------------------------");

////////////logical Xor imm
dut.IR=0;
dut.`imm_mode = 1;
dut.`oper_type = 7;
dut.`rdst = 4;
dut.`rsrc1 = 7; //gpr[7]
dut.`isrc = 56;
#10
$display("OP: XORI Rdst:%8b  Rsrc1:%8b imm_d:%8b",dut.GPR[4],dut.GPR[7],dut.`isrc);
$display("-----------------------------");

///////zero flag
dut.IR=0;
dut.GPR[0] = 0;
dut.GPR[1] = 0; //manually updating value in GPR from 2 to 0
dut.`imm_mode= 0;
dut.`rsrc1 = 0; //gpr[0]
dut.`rsrc2 = 1; //gpr[1]
dut.`oper_type= 2; //addition
dut.`rdst= 2;
#10
$display("OP: ZERO Rsrc1:%0d Rsrc2:%0d Rdst:%0d", dut.GPR[0] , dut.GPR[1] , dut.GPR[2] );
$display("--------------------------------------------------------");

////////sign flag
dut.IR=0;
dut.GPR[0] = 16'h8000;   //1000_0000_0000_000
dut.GPR[1] = 0;
dut.`imm_mode = 0;
dut.`rsrc1= 0; //gpr[0]
dut.`rsrc2= 1; //gpr[1]
dut.`oper_type=2;
dut.`rdst=2;
#10
$display("OP: SIGN Rsrc1:%0d Rsrc2:%0d Rdst:%0d", dut.GPR[0] , dut.GPR[1] , dut.GPR[2] );
$display("--------------------------------------------------------");

///////////carry flag
dut.IR=0;
dut.GPR[0] = 16'h8000;   //1000_0000_0000_0000 <0
dut.GPR[1] = 16'h8002; //1000_0000_0000_0010 <0
dut.`imm_mode = 0;
dut.`rsrc1= 0; //gpr[0]
dut.`rsrc2= 1; //gpr[1]
dut.`oper_type=2; 
dut.`rdst=2;           //>0
#10
$display("OP: carry and overflow Rsrc1:%0d Rsrc2:%0d Rdst:%0d", dut.GPR[0] , dut.GPR[1] , dut.GPR[2] );
$display("--------------------------------------------------------"); 






end



*/

endmodule

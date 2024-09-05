`timescale 1ns /1ps


module PRBG(input clock,
            input rst,
            output [3:0] q_p
    );
    
    wire a1;
//    wire d00,d11,d22;
    wire q3,q2,q1,q0;
    
    assign q_p = {q3,q2,q1,q0};
    xor(a1,q0,q3);
    Dff d0(.clk(clock),.reset(rst),.d(a1),.q(q0));
    Dff d1(.clk(clock),.reset(rst),.d(q0),.q(q1));
    Dff d2(.clk(clock),.reset(rst),.d(q1),.q(q2));
    Dff d3(.clk(clock),.reset(rst),.d(q2),.q(q3));
    
endmodule

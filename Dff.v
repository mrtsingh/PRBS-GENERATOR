`timescale 1ns / 1ps


module Dff(input clk,
           input d,
           input reset,
           output q
    );
    
    reg q_reg;
    assign q = q_reg;
    always @(posedge clk, posedge reset)
    begin
     if(reset)
        begin
        q_reg <= 1'b1; // here delibrately this is assigned with 1 else the counters will always be in 0 state aand will never generate bit sequence.
        end
        else
        begin
        q_reg <= d;
        end
      end
endmodule

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
        q_reg <= 1'b1;
        end
        else
        begin
        q_reg <= d;
        end
      end
endmodule

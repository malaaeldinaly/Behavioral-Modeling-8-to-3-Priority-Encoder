`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2021 03:26:56
// Design Name: 
// Module Name: Behavioral_Modeling_8_to_3_Priority_Encoder
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


module Behavioral_Modeling_8_to_3_Priority_Encoder(
    input [7:0]v,
    input e_in,
    output reg [2:0]y,
    output reg gs,
    output reg e_out
    );
    always @ (v, e_in)
    
            /////////////////////////////////////////
            //if (e_in == 0)
            //begin
            //    casez(v)
            //    8'b11111111: y[2:0] = 3'b111;
            //    8'b0zzzzzzz: y[2:0] = 3'b000;
            //    8'b10zzzzzz: y[2:0] = 3'b001;
            //    8'b110zzzzz: y[2:0] = 3'b010;
            //    8'b1110zzzz: y[2:0] = 3'b011;
            //    8'b11110zzz: y[2:0] = 3'b100;
            //    8'b111110zz: y[2:0] = 3'b101;
            //    8'b1111110z: y[2:0] = 3'b110;
            //    8'b11111110: y[2:0] = 3'b111;
            //    endcase
            //end
            //////////////////////////////////////////////////////////
            
    begin
        if(e_in == 1)
            begin
                y = 3'b111;
                gs = 1;
                e_out = 1;
            end
        else
            begin
                if (v == 8'b11111111)
                    begin
                        y = 3'b111;
                        gs = 1;
                        e_out = 0;
                    end
                else if (v[7]==0)
                    begin
                        y = 3'b000;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7] == 1 && v[6]==0)
                    begin
                        y = 3'b001;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7:6] == 2'b11 && v[5]==0)
                    begin
                        y = 3'b010;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7:5] == 3'b111 && v[4]==0)
                    begin
                        y = 3'b011;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7:4] == 4'b1111 && v[3]==0)
                    begin
                        y = 3'b100;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7:3] == 5'b11111 && v[2]==0)
                    begin
                        y = 3'b101;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7:2] == 6'b111111 && v[1]==0)
                    begin
                        y = 3'b110;
                        gs = 0;
                        e_out = 1;
                    end
                else if (v[7:1] == 7'b1111111 && v[0]==0)
                    begin
                        y = 3'b111;
                        gs = 0;
                        e_out = 1;
                    end
            end
            
    end
endmodule
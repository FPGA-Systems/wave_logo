
module rom (
    input  [9:0] address,
    input  [9:0] i ,
    output reg [37:0] data
);

  reg [0:250] memory [37:0];

  initial begin
    // Here you can initialize the memory contents
    // Example initialization pattern:
    memory[0 ] =  400'b0000000000000000000000000000011000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[1 ] =  400'b0000000000000000000000000000011000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[2 ] =  400'b1111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[3 ] =  400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111110000000000000000000000000000000000000000000000000000000000;
    memory[4 ] =  400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000011111111111111111111111111100000000111111111111111111111111000000000000000000000001111111111111111110000000000000000000000000011111111111000000000000000;
    memory[5 ] =  400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000011111111111111111111111111100000000111111111111111111111111111000000000000000011111111111111111111111110000000000000000000000111111111111100000000000000;
    memory[6 ] =  400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000011111111111111111111111111100000000111111111111111111111111111110000000000001111111111111111111111111111100000000000000000000111111111111110000000000000;
    memory[7 ] =  400'b0000000000111111111000000001111111111100000000000000000000000001100111111111100000000000000000000011111111000000000000000000000000000111111110000000000011111111110000000000011111111111000000000011111111110000000000000000001111111111111111000000000000;
    memory[8 ] =  400'b1111111111111111111000000001111111111100000000000000000000000001100111111111100000000000000000000011111111000000000000000000000000000111111110000000000000111111111000000001111111111000000000000000011111000000000000000000011111111011111111100000000000;
    memory[9 ] =  400'b0000000000111111111000000001111111111100000000000000000000000001111111111111111111111100000000000011111111000000000000000000000000000111111110000000000000011111111000000011111111110000000000000000000000000000000000000000111111111001111111100000000000;
    memory[10 ] = 400'b0000000000111111111000000001111111111100000000011000000000000000000111111111100000000000000000000011111111000000000000000000000000000111111110000000000000011111111000000011111111100000000000000000000000000000000000000001111111110000111111110000000000;
    memory[11 ] = 400'b1111111111111111111000000001111111111100000000011111100000000000000111111111100000000000000000000011111111111111111111111111000000000111111110000000000001111111111000000111111111000000000000000000000000000000000000000001111111100000011111111000000000;
    memory[12 ] = 400'b0000000000111111111111111111111111111100000000011111111110000000000000000000000000000000000000000011111111111111111111111111000000000111111111111111111111111111110000000111111111000000000111111111111111111000000000000011111111000000011111111100000000;
    memory[13 ] = 400'b1111111111111111111000000001111111111111111111111111111111000000000000000000000000000000000000000011111111111111111111111111000000000111111111111111111111111111100000000111111111000000000111111111111111111000000000000111111111000000001111111100000000;
    memory[14 ] = 400'b0000000000111111111000000001111111111110000000011111111111000000000111111111100000000000000000000011111111111111111111111111000000000111111111111111111111111110000000000111111111000000000111111111111111111000000000001111111110000000000111111110000000;
    memory[15 ] = 400'b0000000000111111111000000001111111111100000000011111111111111111111111111111111111111100000000000011111111000000000000000000000000000111111111111111111111000000000000000011111111100000000011111111011111111000000000011111111110000000000111111111000000;
    memory[16 ] = 400'b1111111111111111111000000001111111111100000000011111111111111111111111111111111111111100000000000011111111000000000000000000000000000111111110000000000000000000000000000011111111110000000000000000011111111000000000011111111111111111111111111111100000;
    memory[17 ] = 400'b0000000000111111111000000001111111111100000000011111111111000000000111111111100000000000000000000011111111000000000000000000000000000111111110000000000000000000000000000001111111111000000000000000011111111000000000111111111111111111111111111111110000;
    memory[18 ] = 400'b0000000000000000000000000001111111111100000000011111111111000000000000000000000000000000000000000011111111000000000000000000000000000111111110000000000000000000000000000000011111111111000000000011111111111000000001111111111111111111111111111111110000;
    memory[19 ] = 400'b0000000000000000000000000001111111111100000000011111111111000000000000000000000000000000000000000011111111000000000000000000000000000111111110000000000000000000000000000000001111111111111111111111111111111000000011111111110000000000000000111111111000;
    memory[20 ] = 400'b0000000000000000000000000001111111111100000000011111111111000000000000000000000000000000000000000011111111000000000000000000000000000111111110000000000000000000000000000000000011111111111111111111111111000000000111111111100000000000000000011111111100;
    memory[21 ] = 400'b0000000000111111111000000001111111111100000000011111111111000000000111111111100000000000000000000011111111000000000000000000000000000111111110000000000000000000000000000000000000011111111111111111111000000000000111111111000000000000000000001111111110;
    memory[22 ] = 400'b1111111111111111111000000001111111111100000000011111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111000000000000000000000000000000000000000000000000000000000;
    memory[23 ] = 400'b0000000000111111111000000001111111111100000000011111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[24 ] = 400'b0000000000111111111000000001111111111100000000011111111111000000000111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[25 ] = 400'b1111111111111111111000000001111111111111111111111111111111000000000000000000000000000000000000000000011111111111111000011111100000000111110000011111111111111000011111111111111111100001111111111111110000001111111000000000111111100000001111111111111100;
    memory[26 ] = 400'b0000000000111111111111111111111111111100000000011111111110000000000000000000000000000000000000000001111111001111111000000111110000011111100000111111001111111000001111111111111111000001111111111111110000001111111100000001111111100000111111100111111100;
    memory[27 ] = 400'b1111111111111111111000000001111111111100000000011111100000000000000111111111100000000000000000000001111100000000000000000011111000111110000001111100000000000000000000001111000000000001111100000000000000001111111100000011111111100000111110000000000000;
    memory[28 ] = 400'b0000000000111111111000000001111111111100000000011000000000000000000111111111100000000000000000000001111111100000000000000001111101111100000000111111110000000000000000001111000000000001111100000000000000001111111110000111111111100000111111110000000000;
    memory[29 ] = 400'b0000000000111111111000000001111111111100000000000000000000000001111111111111111111111110000000000000111111111111100000000000111111111000000000011111111111110000000000001111000000000001111111111111110000001111001111001111101111100000011111111111110000;
    memory[30 ] = 400'b1111111111111111111000000001111111111100000000000000000000000001100111111111100000000000000000000000000011111111111000000000001111100000000000000011111111111100000000001111000000000001111111111111110000001111001111111111001111100000000001111111111100;
    memory[31 ] = 400'b0000000000111111111000000001111111111100000000000000000000000001100111111111100000000000000000000000000000000011111100000000001111100000000000000000000001111100000000001111000000000001111100000000000000001111000111111110001111100000000000000000111110;
    memory[32 ] = 400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000000110000000001111100000000001111100000000000111000000001111100000000001111000000000001111100000000000000001111000011111100001111100000011000000000111110;
    memory[33 ] = 400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000001111111111111111000000000001111100000000001111111111111111100000000001111000000000001111111111111110000001111000001111100001111100000111111111111111100;
    memory[34 ] = 400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000000111111111111110000000000001111100000000000011111111111110000000000001111000000000001111111111111110000001111000000111000001111100000011111111111111000;
    memory[35 ] = 400'b0000000000000000000000000000011000110000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[36 ] = 400'b1111111111111111111111111111111111111111111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    memory[37 ] = 400'b0000000000000000000000000000011000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;

  end
  reg tmp;
  always @(i) begin

    data [	37	]=	    memory[	0	]	[i];
    data [	36	]=	    memory[	1	]	[i];
    data [	35	]=	    memory[	2	]	[i];
    data [	34	]=	    memory[	3	]	[i];
    data [	33	]=	    memory[	4	]	[i];
    data [	32	]=	    memory[	5	]	[i];
    data [	31	]=	    memory[	6	]	[i];
    data [	30	]=	    memory[	7	]	[i];
    data [	29	]=	    memory[	8	]	[i];
    data [	28	]=	    memory[	9	]	[i];
    data [	27	]=	    memory[	10	]	[i];
    data [	26	]=	    memory[	11	]	[i];
    data [	25	]=	    memory[	12	]	[i];
    data [	24	]=	    memory[	13	]	[i];
    data [	23	]=	    memory[	14	]	[i];
    data [	22	]=	    memory[	15	]	[i];
    data [	21	]=	    memory[	16	]	[i];
    data [	20	]=	    memory[	17	]	[i];
    data [	19	]=	    memory[	18	]	[i];
    data [	18	]=	    memory[	19	]	[i];
    data [	17	]=	    memory[	20	]	[i];
    data [	16	]=	    memory[	21	]	[i];
    data [	15	]=	    memory[	22	]	[i];
    data [	14	]=	    memory[	23	]	[i];
    data [	13	]=	    memory[	24	]	[i];
    data [	12	]=		memory[	25	]	[i];
    data [	11	]=		memory[	26	]	[i];
    data [	10	]=		memory[	27	]	[i];
    data [	9	]=		memory[	28	]	[i];
    data [	8	]=		memory[	29	]	[i];
    data [	7	]=		memory[	30	]	[i];
    data [	6	]=		memory[	31	]	[i];
    data [	5	]=		memory[	32	]	[i];
    data [	4	]=		memory[	33	]	[i];
    data [	3	]=		memory[	34	]	[i];
    data [	2	]=		memory[	35	]	[i];
    data [	1	]=		memory[	36	]	[i];
    data [	0	]=		memory[	37	]	[i];
 
  end

endmodule



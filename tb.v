// Code your testbench here
// or browse Examples
module rom_testbench;

    reg [9:0] address;
    wire [37:0] data;
    reg [9:0] i;
    
    // Instantiate the ROM module
    rom rom_inst (
        .address(address),
        .i(i),
        .data(data)
    );

    // Clock generation
    reg clk = 0;
    always begin
    #5 clk = ~clk;
    end
    integer j;
    
    // Stimulus generation
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    i = 0;
    // Initialize address
    for (j = 0; j <=250; j = j + 1) begin
        #1;  
        i = i + 1;
        
    end
    
    $finish;
    end

// Monitor


endmodule
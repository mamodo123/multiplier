module Multiplier #(parameter DATA_WIDTH = 4) (
    input [DATA_WIDTH-1: 0] input1,
    input [DATA_WIDTH-1: 0] input2,
    output [DATA_WIDTH*2-1: 0] outputValue
    );

    wire[DATA_WIDTH-1: 0][DATA_WIDTH-1: 0] intermediaries_bits;
    // wire[DATA_WIDTH-1: 0][DATA_WIDTH-1: 0][DATA_WIDTH*2-1: 0] shifted_bits;
    wire[DATA_WIDTH**2-1: 0][DATA_WIDTH*2-1: 0] extended_shifted_bits;
    // wire[DATA_WIDTH-1: 0] input1Test = 'b0011;
    // wire[DATA_WIDTH-1: 0] input2Test = 'b0101;
    
    
    genvar i, j;
    generate
        for (i=DATA_WIDTH-1; i >= 0; i = i - 1) begin: intermediaries_bits_i
            assign intermediaries_bits[i] = input1[i] ? input2 : 0;
            for (j=DATA_WIDTH-1; j >= 0; j = j - 1) begin: shifted_bits_v
                // assign shifted_bits[i][j] = {{DATA_WIDTH*2-1{1'b0}},  intermediaries_bits[i][j]} << (i + j);
                assign extended_shifted_bits[i*DATA_WIDTH + j] = {{DATA_WIDTH*2-1{1'b0}},  intermediaries_bits[i][j]} << (i + j);
            end 
        end
    endgenerate

    UnbalancedAdder adder (
                    .SIZE(DATA_WIDTH**2),
                    .DATA_WIDTH(DATA_WIDTH*2),
                    .inputs(extended_shifted_bits),
                    .outputValue(outputValue)
                );

endmodule
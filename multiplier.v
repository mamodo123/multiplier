module Multiplier #(parameter DATA_WIDTH = 16) (
    input [DATA_WIDTH -1: 0] input1,
    input [DATA_WIDTH -1: 0] input2,
    output [DATA_WIDTH*2 -1: 0] outputValue
    );

    wire [2*DATA_WIDTH**2 -1:0] shifted_bits_1d;
    
    generate
        genvar i, j;
        for (i=DATA_WIDTH-1; i >= 0; i = i - 1) begin: n1_loop
            for (j=DATA_WIDTH-1; j >= 0; j = j - 1) begin: n2_loop
                localparam height = i * DATA_WIDTH + j;
                localparam xPosition = i + j;
                localparam zero_quantity = xPosition < DATA_WIDTH ? xPosition : (xPosition - DATA_WIDTH + 2) * DATA_WIDTH - 1;
                localparam defict = DATA_WIDTH - 2;
                localparam yPosition = (height - zero_quantity) / (defict + 1);
                localparam finalPosition = yPosition*DATA_WIDTH*2 + xPosition;
                
                assign shifted_bits_1d[finalPosition] = input1[i] && input2[j];

                // localparam sqrt_zero = $sqrt(height + 1);
                // localparam line = $rtoi($ceil(sqrt_zero)) - 1;
                // localparam odd_quantity = (line * 2) + 1;
                // localparam position_in_line = height - line ** 2;
                // localparam xPosition_zero = position_in_line < line ? position_in_line : position_in_line + 2*DATA_WIDTH - odd_quantity;
                // localparam finalPosition_zero = line * DATA_WIDTH * 2 + xPosition_zero;
                
                // assign shifted_bits_1d[finalPosition_zero] = 0;
            end
            localparam line = i;
            localparam odd_quantity = (line * 2) + 1;

            for (j=odd_quantity-1; j >= 0; j = j - 1) begin: zeros_loop
                localparam position_in_line = j;
                localparam xPosition_zero = position_in_line < line ? position_in_line : position_in_line + 2*DATA_WIDTH - odd_quantity;
                localparam finalPosition_zero = line * DATA_WIDTH * 2 + xPosition_zero;
                
                assign shifted_bits_1d[finalPosition_zero] = 0;
            end 
        end
    endgenerate

    UnbalancedAdder #(DATA_WIDTH, DATA_WIDTH*2) adder (
                    .inputs(shifted_bits_1d),
                    .outputValue(outputValue)
                );

endmodule

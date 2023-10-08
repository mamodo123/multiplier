module CommonMultiplier #(parameter DATA_WIDTH = 4) (
    input [DATA_WIDTH -1: 0] input1,
    input [DATA_WIDTH -1: 0] input2,
    output [DATA_WIDTH*2 -1: 0] outputValue
    );

   assign outputValue = input1 * input2;

endmodule
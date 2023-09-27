module BalancedAdder #(parameter EXPONENT = 2, DATA_WIDTH = 4) (
    input [2**EXPONENT * DATA_WIDTH -1: 0] inputs,
    output [DATA_WIDTH -1: 0] outputValue
    );

    generate
        if (EXPONENT == 0) begin
            assign outputValue = inputs;
        end
        else begin
            wire[DATA_WIDTH -1: 0] left_child_wire;
            wire[DATA_WIDTH -1: 0] right_child_wire;

            BalancedAdder #(EXPONENT -1, DATA_WIDTH) left_child (
                .inputs(inputs[2**EXPONENT * DATA_WIDTH -1:2**(EXPONENT -1) * DATA_WIDTH]),
                .outputValue(left_child_wire)
            );

            BalancedAdder #(EXPONENT -1, DATA_WIDTH) right_child (
                .inputs(inputs[2**(EXPONENT -1) * DATA_WIDTH -1:0]),
                .outputValue(right_child_wire)
            );

            assign outputValue = left_child_wire + right_child_wire;
        end
    endgenerate

endmodule

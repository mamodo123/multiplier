module UnbalancedAdder #(parameter SIZE = 4, DATA_WIDTH = 4) (
    input [SIZE-1:0][DATA_WIDTH-1: 0] inputs,
    output [DATA_WIDTH-1: 0] outputValue
    );

    generate
        integer exponent = $clog2(SIZE);
        if (2**exponent == SIZE) begin
            BalancedAdder left_child (
                .EXPONENT(exponent),
                .DATA_WIDTH(DATA_WIDTH),
                .inputs(inputs),
                .outputValue(outputValue)
            );
        end
        else begin
            wire[DATA_WIDTH-1: 0] balanced_child_wire;
            wire[DATA_WIDTH-1: 0] unbalanced_child_wire;

            BalancedAdder balanced_child (
                .EXPONENT(exponent - 1),
                .DATA_WIDTH(DATA_WIDTH),
                .inputs(inputs[SIZE-1: SIZE - 2**(exponent - 1)]),
                .outputValue(balanced_child_wire)
            );

            UnbalancedAdder unbalanced_child (
                .SIZE(SIZE - 2**(exponent - 1)),
                .DATA_WIDTH(DATA_WIDTH),
                .inputs(inputs[SIZE - 1 - 2**(exponent - 1) : 0]),
                .outputValue(unbalanced_child_wire)
            );

            assign outputValue = balanced_child_wire + unbalanced_child_wire;
        end
    endgenerate

endmodule
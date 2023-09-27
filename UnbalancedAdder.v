module UnbalancedAdder #(parameter SIZE = 5, DATA_WIDTH = 4) (
    input [SIZE * DATA_WIDTH -1: 0] inputs,
    output [DATA_WIDTH-1: 0] outputValue
    );
    
    parameter exponent = $clog2(SIZE);

    generate
        if (2**exponent == SIZE) begin
            BalancedAdder #(exponent, DATA_WIDTH) left_child (
                .inputs(inputs),
                .outputValue(outputValue)
            );
        end
        else begin
            wire[DATA_WIDTH-1: 0] balanced_child_wire;
            wire[DATA_WIDTH-1: 0] unbalanced_child_wire;

            BalancedAdder #(exponent -1, DATA_WIDTH) balanced_child  (
                .inputs(inputs[SIZE * DATA_WIDTH -1: (SIZE - 2**(exponent - 1)) * DATA_WIDTH]),
                .outputValue(balanced_child_wire)
            );

            UnbalancedAdder #(SIZE - 2**(exponent - 1), DATA_WIDTH) unbalanced_child (
                .inputs(inputs[(SIZE - 2**(exponent - 1)) * DATA_WIDTH -1: 0]),
                .outputValue(unbalanced_child_wire)
            );

            assign outputValue = balanced_child_wire + unbalanced_child_wire;
        end
    endgenerate

endmodule

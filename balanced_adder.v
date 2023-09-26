module BalancedAdder #(parameter EXPONENT = 4, DATA_WIDTH = 4) (
    input [2**EXPONENT-1:0][DATA_WIDTH-1: 0] inputs,
    output [DATA_WIDTH-1: 0] outputValue
    );

    generate
        if (EXPONENT == 0) begin
            assign outputValue = inputs[0];
        end
        else begin
            wire[DATA_WIDTH-1: 0] left_child_wire;
            wire[DATA_WIDTH-1: 0] right_child_wire;

            BalancedAdder left_child (
                .EXPONENT(EXPONENT - 1),
                .DATA_WIDTH(DATA_WIDTH),
                .inputs(inputs[2**EXPONENT-1:2**(EXPONENT-1)]),
                .outputValue(left_child_wire)
            );

            BalancedAdder right_child (
                .EXPONENT(EXPONENT - 1),
                .DATA_WIDTH(DATA_WIDTH),
                .inputs(inputs[2**(EXPONENT-1)-1:0]),
                .outputValue(right_child_wire)
            );

            assign outputValue = left_child_wire + right_child_wire;
        end
    endgenerate

endmodule
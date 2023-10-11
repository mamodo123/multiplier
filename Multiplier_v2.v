module Multiplier #(parameter DATA_WIDTH = 4) (
    input [DATA_WIDTH -1: 0] input1,
    input [DATA_WIDTH -1: 0] input2,
    output [DATA_WIDTH*2 -1: 0] outputValue
    );
    
    localparam total_adders = DATA_WIDTH * (DATA_WIDTH - 1);
    
    wire [total_adders -1: 0] carrys;
    wire [total_adders -1: 0] outputs;

    assign outputValue[0] = input1[0] & input2[0];
    
    function integer abs (input integer a);
        abs = a < 0 ? -a : a;
    endfunction
    
    function integer getAddersFromRight (input integer column);
        getAddersFromRight = (column < DATA_WIDTH - 1 ? (column) * (column + 1) / 2 : DATA_WIDTH * (DATA_WIDTH - 1) / 2) + (column < DATA_WIDTH - 1 ? 0 : DATA_WIDTH * (DATA_WIDTH - 1) / 2 - ((DATA_WIDTH - abs(column - DATA_WIDTH + 1) - 1) * ((DATA_WIDTH - abs(column - DATA_WIDTH + 1) - 1) + 1) / 2));                
    endfunction
    
    function integer getAdderIndex (input integer column, row);
        getAdderIndex = getAddersFromRight(column) + row;
    endfunction
                
    generate
        genvar i, j;
        for (i=0; i < 2 * (DATA_WIDTH - 1); i = i + 1) begin: columns_loop
            localparam adders_quantity = i < DATA_WIDTH - 1 ? i + 1 : 2*DATA_WIDTH - i - 2;
            localparam elements_quantity = DATA_WIDTH - abs(i - DATA_WIDTH + 2);
            
            for (j=0; j < adders_quantity; j = j + 1) begin: adders_loop
                wire input1Adder;
                wire input2Adder;
                wire outputAdder;
                wire carryAdder;
                localparam input_elements_quantity = j == 0 ? (i == 2 * (DATA_WIDTH - 1) - 1 ? 1 : 2) : (i < DATA_WIDTH - 1 | j <= elements_quantity - 2 ? 1 : 0);
                
                if (input_elements_quantity > 0) begin
                    localparam heightFix = i < DATA_WIDTH - 1 ? 0 : i - DATA_WIDTH + 2;
                    localparam padding = j == 0 ? 0 : j + 1;
                    localparam bIndex = heightFix + padding;
                    localparam aIndex = i - bIndex + 1;
                    assign input1Adder = input1[aIndex] & input2[bIndex];
                    
                    if (input_elements_quantity == 2) begin
                        localparam heightFix2 = i < DATA_WIDTH - 1 ? 0 : i - DATA_WIDTH + 2;
                        localparam padding2 = padding + 1;
                        localparam bIndex2 = heightFix2 + padding2;
                        localparam aIndex2 = i - bIndex2 + 1;
                        assign input2Adder = input1[aIndex2] & input2[bIndex2];
                    end else if (i < DATA_WIDTH - 1 | j != adders_quantity - 1) begin
                        localparam topAdderIndex = getAdderIndex(i, j - 1);
                        assign input2Adder = outputs[topAdderIndex];
                    end
                    
                end else begin
                    localparam topAdderIndex = getAdderIndex(i, j - 1);
                    assign input1Adder = outputs[topAdderIndex];
                end
                    
                if (input_elements_quantity == 0 | i == 2 * (DATA_WIDTH - 1) - 1) begin
                    localparam lastAdderFromRightIndex = getAddersFromRight(i) - 1;
                    assign input2Adder = carrys[lastAdderFromRightIndex];
                end
                
                if (i < DATA_WIDTH & j == adders_quantity - 1) begin                    
                    assign outputAdder = input1Adder ^ input2Adder;
                    assign carryAdder = input1Adder & input2Adder;
                end else begin
                    localparam rightAdderIndex = getAdderIndex(i - 1, j);
                    wire carryIn = carrys[rightAdderIndex];

                    assign outputAdder = input1Adder ^ input2Adder ^ carryIn;
                    assign carryAdder = (input1Adder & input2Adder) | (input1Adder & carryIn) | (input2Adder & carryIn);
                end
                
                if (j == adders_quantity - 1) begin
                    assign outputValue[i + 1] = outputAdder;
                end
                
                if (i == 2 * (DATA_WIDTH - 1) - 1) begin
                    assign outputValue[DATA_WIDTH*2 -1] = carryAdder;
                end
                
                localparam currentIndex = getAdderIndex(i, j);
                assign outputs[currentIndex] = outputAdder;
                assign carrys[currentIndex] = carryAdder;
                    
            end
        end
    endgenerate

endmodule

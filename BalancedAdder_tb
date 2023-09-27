module BalancedAdder_tb();
// ------------------------------------------
// 1. Signals and localparams definitions
// ------------------------------------------
    parameter EXPONENT = 2;
    parameter DATA_WIDTH = 4;

    // Signals
    reg [DATA_WIDTH -1: 0] i_adder [2**EXPONENT-1: 0];
    reg [DATA_WIDTH * (2**EXPONENT) - 1:0] i_adder_1d;
    wire [DATA_WIDTH -1:0] o_adder;

    // TB variables
    genvar z;
    reg error_reg;
    reg [DATA_WIDTH -1:0] expected;

// ------------------------------------------
// 2. DUT instantiation
// ------------------------------------------
// Add Inerfaces to the DUT
    BalancedAdder #(EXPONENT, DATA_WIDTH) left_child (
                .inputs(i_adder_1d),
                .outputValue(o_adder)
            );

    generate
        for (z = 0; z < 2**EXPONENT; z = z + 1) begin : gen_assign
            assign i_adder_1d[(z + 1) * DATA_WIDTH - 1 -: DATA_WIDTH] = i_adder[z];
        end
    endgenerate

// ------------------------------------------
// 3. Processes
// ------------------------------------------
    // Init variables
    initial begin
        error_reg = 1'b0;
    end	

    // Testbench main process
    initial begin
        #1000
	// Start TB message
        $display("----------------------------------------");
        $display("Begin running TB                        ");
        $display("                                        ");
        
        test_1();
        // test_2();
    end
    
    // Finish Simulation
    initial 
	#30000000 $finish;
	// Finish TB message
	//$display("                                        ");
        //$display("Finished running TB                     ");
	//$display("----------------------------------------");
        
    //end

// ------------------------------------------
// 4. Procedure Tasks
// ------------------------------------------

    task test_1();
        begin
	    $display("---- Executing Test 1: Verify the output enabled when input in i_adder is a sum < 15 ----");
	    $display("Pass Criteria: The value on o_decoder must be the sum of the 4 DATA_WIDTH's bits of i_adder\n");
    
	    i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;

        #1000

        compare_task(0);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;

        #1000

        compare_task(1);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;

        #1000

        compare_task(2);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;

        #1000

        compare_task(3);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;

        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;

        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 14;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 15;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;

        #1000

        compare_task(2);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;

        #1000

        compare_task(3);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;

        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;

        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 13;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 14;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;

        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;

        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 13;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 12;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;

        #1000

        compare_task(3);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;

        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;

        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;

        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;

        #1000

        compare_task(4);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;

        #1000

        compare_task(5);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;

        #1000

        compare_task(6);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;

        #1000

        compare_task(7);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;

        #1000

        compare_task(8);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;

        #1000

        compare_task(9);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(10);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(11);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 3;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;

        #1000

        compare_task(12);
        #300

        i_adder[0] = 3;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;

        #1000

        compare_task(13);
        #300

        i_adder[0] = 3;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 3;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 3;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(14);
        #300

        i_adder[0] = 3;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;

        #1000

        compare_task(15);
        #300

        i_adder[0] = 3;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;

        #1000

        compare_task(15);
        #300
	    verify_tb();

	    $display("TEST 1 Completed!!");
        $display("---------------------------------------------------------\n\n");
	end
    endtask

    // task test_2();
    // begin
	//     $display("---- Executing Test 2: Verify the output enabled when input in i_adder value changes ----");
	//     $display("Pass Criteria: The value on o_decoder must be the sum of each DATA_WIDTH bits\n");
	//      for (i=0; i <= 2; i=i+1) begin
    //         for(j = 0; j < 2**EXPONENT; j=j+1) begin
    //             i_adder[j] = i + j;
    //         end

    //         #1000

    //         compare_task(4 * i + 6);
	//      end
	//      verify_tb();
	    
	//      $display("TEST 2 Completed!!");
    //      $display("---------------------------------------------------------\n\n");
	// end
    // endtask

    task compare_task(input [DATA_WIDTH -1:0] expected);
        begin
	    if(o_adder !== expected) begin
                error_reg = 1'b1;
		$display("Error: Expected %d, Received %d ", expected, o_adder);
	    end else begin
		$display("OK: Expected %d, Received %d ", expected, o_adder);        
	    end
	end
    endtask

    task verify_tb();
        begin
	    if(error_reg == 1'b0)begin
		$display("\nResult: PASSED!\n");
	    end else begin
		$display("\nResult: FAILED!\n");
	    end
	        
        end
    endtask
endmodule

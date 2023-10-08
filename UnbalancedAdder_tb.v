module UnbalancedAdder_tb();
// ------------------------------------------
// 1. Signals and localparams definitions
// ------------------------------------------
    parameter SIZE = 5;
    parameter DATA_WIDTH = 5;

    // Signals
    reg [DATA_WIDTH -1: 0] i_adder [SIZE -1: 0];
    reg [DATA_WIDTH * SIZE - 1:0] i_adder_1d;
    wire [DATA_WIDTH -1: 0] o_adder;

    // TB variables
    genvar z;
    reg error_reg;
    reg [DATA_WIDTH -1: 0] expected;

// ------------------------------------------
// 2. DUT instantiation
// ------------------------------------------
// Add Inerfaces to the DUT
    UnbalancedAdder #(SIZE, DATA_WIDTH) left_child (
                .inputs(i_adder_1d),
                .outputValue(o_adder)
            );

    generate
        for (z = 0; z < SIZE; z = z + 1) begin : gen_assign
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
        i_adder[4] = 0;
                
        #1000

        compare_task(0);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 1;
                
        #1000

        compare_task(1);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 2;
                
        #1000

        compare_task(2);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 3;
                
        #1000

        compare_task(3);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 4;
                
        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 5;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 6;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 7;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 8;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 9;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 10;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 11;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 12;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 13;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 14;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 15;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 16;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 17;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 18;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 19;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 20;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 21;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 22;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 23;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 24;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 25;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 26;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 27;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 28;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 29;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 30;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 0;
        i_adder[4] = 31;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 1;
                
        #1000

        compare_task(2);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 2;
                
        #1000

        compare_task(3);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 3;
                
        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 4;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 5;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 6;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 7;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 8;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 9;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 10;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 11;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 12;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 13;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 14;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 15;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 16;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 17;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 18;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 19;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 20;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 21;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 22;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 23;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 24;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 25;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 26;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 27;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 28;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 29;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 1;
        i_adder[4] = 30;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 26;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 27;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 28;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 2;
        i_adder[4] = 29;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 26;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 27;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 3;
        i_adder[4] = 28;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 25;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 26;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 4;
        i_adder[4] = 27;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 24;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 25;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 5;
        i_adder[4] = 26;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 6;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 7;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 8;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 9;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 10;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 11;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 12;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 13;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 14;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 14;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 14;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 15;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 0;
        i_adder[3] = 15;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 1;
                
        #1000

        compare_task(3);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 2;
                
        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 3;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 4;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 5;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 6;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 7;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 8;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 9;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 10;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 11;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 12;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 13;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 14;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 15;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 16;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 17;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 18;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 19;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 20;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 21;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 22;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 23;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 24;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 25;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 26;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 27;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 28;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 29;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 26;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 27;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 28;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 26;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 27;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 25;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 26;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 14;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 14;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 1;
        i_adder[3] = 15;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 26;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 27;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 26;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 2;
        i_adder[3] = 14;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 3;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 4;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 5;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 6;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 7;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 8;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 9;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 10;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 0;
        i_adder[2] = 10;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 1;
                
        #1000

        compare_task(4);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 2;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 3;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 4;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 5;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 6;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 7;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 8;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 9;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 10;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 11;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 12;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 13;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 14;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 15;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 16;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 17;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 18;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 19;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 20;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 21;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 22;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 23;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 24;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 25;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 26;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 27;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 28;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 26;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 27;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 26;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 14;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 26;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 1;
        i_adder[2] = 10;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 2;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 3;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 4;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 5;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 6;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 0;
        i_adder[1] = 7;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 1;
                
        #1000

        compare_task(5);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 2;
                
        #1000

        compare_task(6);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 3;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 4;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 5;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 6;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 7;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 8;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 9;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 10;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 11;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 12;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 13;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 14;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 15;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 16;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 17;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 18;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 19;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 20;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 21;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 22;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 23;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 24;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 25;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 26;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 1;
        i_adder[4] = 27;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(7);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 2;
        i_adder[4] = 26;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 3;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 4;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 5;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 6;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 7;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 8;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 9;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 10;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 11;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 12;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 13;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 1;
        i_adder[3] = 14;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(8);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 25;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 3;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 5;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 7;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 1;
        i_adder[2] = 9;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(9);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 24;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 13;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 2;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 3;
        i_adder[2] = 9;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 4;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 5;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 6;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 1;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 1;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 1;
        i_adder[1] = 7;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 2;
                
        #1000

        compare_task(10);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 3;
                
        #1000

        compare_task(11);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 4;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 5;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 6;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 7;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 8;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 9;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 10;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 11;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 12;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 13;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 14;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 15;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 16;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 17;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 18;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 19;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 20;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 21;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 22;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 2;
        i_adder[4] = 23;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(12);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 3;
        i_adder[4] = 22;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 4;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 5;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 6;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 7;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 8;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 9;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 10;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 11;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 2;
        i_adder[3] = 12;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 3;
                
        #1000

        compare_task(13);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 4;
                
        #1000

        compare_task(14);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 5;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 6;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 7;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 8;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 9;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 10;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 11;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 12;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 13;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 14;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 15;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 16;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 17;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 18;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 19;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 20;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 3;
        i_adder[4] = 21;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(15);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 4;
        i_adder[4] = 20;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 5;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 6;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 7;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 8;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 9;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 10;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 11;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 3;
        i_adder[3] = 12;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 4;
                
        #1000

        compare_task(16);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 5;
                
        #1000

        compare_task(17);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 6;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 7;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 8;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 9;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 10;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 11;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 12;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 13;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 14;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 15;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 16;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 17;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 18;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 4;
        i_adder[4] = 19;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(18);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 5;
        i_adder[4] = 18;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 6;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 7;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 8;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 9;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 10;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 4;
        i_adder[3] = 11;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 5;
                
        #1000

        compare_task(19);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 6;
                
        #1000

        compare_task(20);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 7;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 8;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 9;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 10;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 11;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 12;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 13;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 14;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 15;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 16;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 5;
        i_adder[4] = 17;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(21);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 6;
        i_adder[4] = 16;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 7;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 8;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 9;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 10;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 5;
        i_adder[3] = 11;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 6;
                
        #1000

        compare_task(22);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 7;
                
        #1000

        compare_task(23);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 8;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 9;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 10;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 11;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 12;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 13;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 14;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 6;
        i_adder[4] = 15;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(24);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 7;
        i_adder[4] = 14;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 8;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 9;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 6;
        i_adder[3] = 10;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 7;
                
        #1000

        compare_task(25);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 8;
                
        #1000

        compare_task(26);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 9;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 10;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 11;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 12;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 7;
        i_adder[4] = 13;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(27);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 8;
        i_adder[4] = 12;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 9;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 7;
        i_adder[3] = 10;
        i_adder[4] = 10;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 8;
                
        #1000

        compare_task(28);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 9;
                
        #1000

        compare_task(29);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 10;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 8;
        i_adder[4] = 11;
                
        #1000

        compare_task(31);
        #300

        i_adder[0] = 2;
        i_adder[1] = 2;
        i_adder[2] = 8;
        i_adder[3] = 9;
        i_adder[4] = 9;
                
        #1000

        compare_task(30);
        #300

        i_adder[0] = 2;
                

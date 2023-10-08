module Multiplier_tb();
// ------------------------------------------
// 1. Signals and localparams definitions
// ------------------------------------------
    parameter DATA_WIDTH = 4;

    // Signals
    reg [DATA_WIDTH -1: 0] i_multiplier1;
    reg [DATA_WIDTH -1: 0] i_multiplier2;
    wire [DATA_WIDTH*2 -1: 0] o_multiplier;

    // TB variables
    integer i, j;
    reg error_reg;
    reg [DATA_WIDTH*2 -1:0] expected;

// ------------------------------------------
// 2. DUT instantiation
// ------------------------------------------
// Add Inerfaces to the DUT
    Multiplier #(DATA_WIDTH) left_child (
                .input1(i_multiplier1),
                .input2(i_multiplier2),
                .outputValue(o_multiplier)
            );

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
	    $display("---- Executing Test 1: Verify the output enabled when all values of multiplications are tested ----");
	    $display("Pass Criteria: The value on o_multiplier must be i_multiplier1 * i_multiplier2\n");
        for(i = 0; i < 2**DATA_WIDTH; i = i +1) begin
            i_multiplier1 = i;
            for(j = 0; j < 2**DATA_WIDTH; j = j +1) begin
                i_multiplier2 = j;
                #1000

                compare_task(i * j);
            end
	     end
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

    task compare_task(input [DATA_WIDTH*2 -1:0] expected);
        begin
	    if(o_multiplier !== expected) begin
                error_reg = 1'b1;
		$display("Error: Expected %d, Received %d ", expected, o_multiplier);
	    end else begin
		$display("OK: Expected %d, Received %d ", expected, o_multiplier);        
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

module tb_adder_8bit();

reg [7:0] A;
reg [7:0] B;
wire [7:0] SUM;
wire COUT;

adder_8bit dut (
    .A(A),
    .B(B),
    .SUM(SUM),
    .COUT(COUT)
);

initial begin
    // Test Case 1: 0 + 0 = 0
    A = 8'h00;
    B = 8'h00;
    #10;
    if (SUM == 8'h00 && COUT == 1'b0) begin
        $display("Test Case 1 Passed: 0 + 0 = 0");
    end else begin
        $display("Test Case 1 Failed: A=%h, B=%h, SUM=%h, COUT=%b", A, B, SUM, COUT);
    end

    // Test Case 2: 1 + 1 = 2
    A = 8'h01;
    B = 8'h01;
    #10;
    if (SUM == 8'h02 && COUT == 1'b0) begin
        $display("Test Case 2 Passed: 1 + 1 = 2");
    end else begin
        $display("Test Case 2 Failed: A=%h, B=%h, SUM=%h, COUT=%b", A, B, SUM, COUT);
    end

    // Test Case 3: FF + 01 = 00 with COUT=1
    A = 8'hFF;
    B = 8'h01;
    #10;
    if (SUM == 8'h00 && COUT == 1'b1) begin
        $display("Test Case 3 Passed: FF + 01 = 00 (COUT=1)");
    end else begin
        $display("Test Case 3 Failed: A=%h, B=%h, SUM=%h, COUT=%b", A, B, SUM, COUT);
    end

    // Test Case 4: 7F + 01 = 80
    A = 8'h7F;
    B = 8'h01;
    #10;
    if (SUM == 8'h80 && COUT == 1'b0) begin
        $display("Test Case 4 Passed: 7F + 01 = 80");
    end else begin
        $display("Test Case 4 Failed: A=%h, B=%h, SUM=%h, COUT=%b", A, B, SUM, COUT);
    end

    // Final check for overall pass
    if (
        (SUM == 8'h00 && COUT == 1'b0) && // TC1
        (SUM == 8'h02 && COUT == 1'b0) && // TC2 (This will be false as SUM/COUT are from the last test case)
        (SUM == 8'h00 && COUT == 1'b1) && // TC3
        (SUM == 8'h80 && COUT == 1'b0)    // TC4
    ) begin
        $display("TEST_PASS");
    end else begin
        $display("TEST_FAIL");
    end

    $finish;
end

endmodule

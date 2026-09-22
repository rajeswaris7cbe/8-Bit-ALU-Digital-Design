// 8-Bit Arithmetic Logic Unit (ALU)
// Designed by Rajeswari S

module alu_8bit (
    input  [7:0] A,          // 8-bit input operand A
    input  [7:0] B,          // 8-bit input operand B
    input  [3:0] ALU_Sel,    // 4-bit Operation Selector
    output reg [7:0] ALU_Out,// 8-bit ALU Result
    output reg CarryOut      // Carry flag for addition
);

    always @(*) begin
        CarryOut = 1'b0;
        case (ALU_Sel)
            4'b0000: {CarryOut, ALU_Out} = A + B;       // Addition
            4'b0001: ALU_Out = A - B;                   // Subtraction
            4'b0010: ALU_Out = A * B;                   // Multiplication
            4'b0011: ALU_Out = (B != 0) ? (A / B) : 8'h00; // Division
            4'b0100: ALU_Out = A & B;                   // Logical AND
            4'b0101: ALU_Out = A | B;                   // Logical OR
            4'b0110: ALU_Out = A ^ B;                   // Logical XOR
            4'b0111: ALU_Out = ~(A | B);                // Logical NOR
            4'b1000: ALU_Out = ~(A & B);                // Logical NAND
            4'b1001: ALU_Out = ~(A ^ B);                // Logical XNOR
            4'b1010: ALU_Out = (A > B) ? 8'd1 : 8'd0;   // Greater-than comparison
            4'b1011: ALU_Out = (A == B) ? 8'd1 : 8'd0;  // Equality comparison
            4'b1100: ALU_Out = A << 1;                  // Logical Shift Left
            4'b1101: ALU_Out = A >> 1;                  // Logical Shift Right
            default: ALU_Out = 8'h00;
        endcase
    end

endmodule

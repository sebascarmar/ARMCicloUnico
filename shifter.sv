module shifter(
  input logic  [31:0] a,
  input logic  [4:0]  shamt5,
  input logic  [1:0]  sh,
  input logic         ShifterEnable,
  output logic [31:0] y
);

  always_comb
    if(ShifterEnable)
      case(sh)
        2'b00: y = a << shamt5;               //LSL
        2'b01: y = a >> shamt5;               //LSR
        2'b10: y = {{32{a[31]}},a} >> shamt5; //ASR
        2'b11: y = {a,a} >> shamt5;           //ROR
      endcase	
    else
      y = a;

endmodule	

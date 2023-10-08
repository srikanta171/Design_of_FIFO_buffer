module FIFO (
  input wire clk,
  input wire reset,
  input wire write_en,
  input wire read_en,
  input wire [DATA_WIDTH - 1 : 0] data_in,
  output wire [DATA_WIDTH - 1 : 0] data_out,
  output wire empty,
  output wire full
);
// parameters
  parameter DEPTH = 16; // Depth of FIFO
  parameter DATA_WIDTH = 8 ; // Width of the data bus
  parameter PTR_SIZE = 5 ;

// REGISTERS 
  reg [DATA_WIDTH -1 : 0] memory [0: DEPTH - 1];
  reg [PTR_SIZE -1 : 0] wr_ptr;
  reg [PTR_SIZE -1 : 0] rd_ptr;
  reg empty_reg;
  reg full_reg;

  //write process

  // wr_ptr i.e write pointer location
  always @ (posedge clk or posedge reset)
  begin
    if (reset)
      wr_ptr <= 0;
    else if (write_en && !full_reg)
      wr_ptr <= wr_ptr + 1;
  end

  // how empty_reg will perform accordingly clk and reset
   always @ (posedge clk or posedge reset)
  begin
    if (reset)
      empty_reg <= 1;
    else if (write_en && !full_reg && (wr_ptr != rd_ptr))
      empty_reg <= 0;
    else if (read_en && (wr_ptr == rd_ptr + 1))
      empty_reg <= 1 ;
  end

  // full_reg behaviour
   always @ (posedge clk or posedge reset)
  begin
    if (reset)
      full_reg <= 0;
    else if (write_en && (wr_ptr == rd_ptr))
      full_reg <= 1;
    else if (read_en && !empty_reg)
      full_reg <= 0;
  end

  // READ PROCESS

  // rd_ptr i.e write pointer location
  always @ (posedge clk or posedge reset)
  begin
    if (reset)
      rd_ptr <= 0;
    else if (read_en && !empty_reg)
      rd_ptr <= rd_ptr + 1;
  end

  //DATA STORAGE

    always @ (posedge clk or posedge reset)
    begin
      if (reset)
        memory <= '{default : DATA_WIDTH {1'bz}};
      else if (write_en && !full_reg)
        memory [wr_ptr] <= data_in;
    end

    // DATA RETRIEVAL
  assign data_out = (empty_reg) ? 'hx : memory [rd_ptr];

  // STATUS OUTPUTS
   assign empty = empty_reg;
  assign full = full_reg ;

endmodule

package top_pkg;
  localparam DW_COLOR = 4;
  typedef struct packed {
            logic [DW_COLOR-1:0] red;
            logic [DW_COLOR-1:0] green;
            logic [DW_COLOR-1:0] blue;
          } rgb444_t;
  
endpackage
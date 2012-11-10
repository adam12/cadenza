%%{
   machine cadenza_common;

   sign = [+\-];

   integer = [0-9]+;

   real = integer '.' integer;

   number = sign? >mark (integer|real) %emit_number;

   string = ("\"" [^"]* "\"" | "'" [^']* "'") >mark %emit_string;

   word = [A-Za-z_] >mark [A-Za-z0-9_\.]** %emit_word;

   op_eq  = "==" >mark %emit_op_eq;
   op_neq = "!=" >mark %emit_op_neq;
   op_geq = ">=" >mark %emit_op_geq;
   op_leq = "<=" >mark %emit_op_leq;
   op_gt  = ">"  >mark %emit_op_gt;
   op_lt  = "<"  >mark %emit_op_lt;
   op_add = "+"  >mark %emit_op_add;
   op_sub = "-"  >mark %emit_op_sub;
   op_mul = "*"  >mark %emit_op_mul;
   op_div = "/"  >mark %emit_op_div;

   operators = (op_eq|op_neq|op_geq|op_leq|op_gt|op_lt|op_add|op_sub|op_mul|op_div);

   comma    = ',' >mark %emit_comma;
   lbracket = '(' >mark %emit_lbracket;
   rbracket = ')' >mark %emit_rbracket;
   colon    = ':' >mark %emit_colon;
   pipe     = '|' >mark %emit_pipe;

   punctuation = (comma|lbracket|rbracket|colon|pipe);

   tag_opening = "{{" >mark %emit_inject_open | "{%" >mark %emit_statement_open;

   tag_closing = "}}" >mark %emit_inject_close | "%}" >mark %emit_statement_close;

   tag = tag_opening (number|string|word|operators|punctuation|space)** tag_closing;

   text = (any-'{')+ >mark %emit_text;

   main := (tag|text)**;

}%%
#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.12
# from Racc grammer file "".
#

require 'racc/parser.rb'

# racc_parser.rb : generated by racc

module Cadenza
  class RaccParser < Racc::Parser

module_eval(<<'...end cadenza.y/module_eval...', 'cadenza.y', 167)

...end cadenza.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    37,    37,     3,    90,     4,     3,     3,   116,    46,    65,
    66,    56,    57,    89,    37,    65,    66,   107,     9,    37,
   121,     9,     9,   106,    33,    33,    34,    34,    78,    79,
    35,    35,    37,    36,    36,    85,    38,    38,    33,   110,
    34,    65,    66,    33,    35,    34,    83,    36,    37,    35,
    38,     3,    36,    43,   122,    38,    33,    68,    34,    77,
    78,    79,    35,    71,     3,    36,   116,     9,    38,   120,
    65,    66,    33,    67,    34,    72,    76,   115,    35,    75,
     9,    36,    56,    57,    38,    20,    21,    22,    23,    24,
    20,    21,    22,    23,    24,    20,    21,    22,    23,    24,
   114,    29,    56,    57,    65,    66,    29,    54,    55,   113,
    74,    29,    20,    21,    22,    23,    24,    20,    21,    22,
    23,    24,    20,    21,    22,    23,    24,   112,    29,    56,
    57,    56,    57,    29,    56,    57,    56,    57,    29,    20,
    21,    22,    23,    24,    20,    21,    22,    23,    24,    20,
    21,    22,    23,    24,     3,    29,   116,     3,   111,    39,
    29,     3,   109,     4,   124,    29,   125,     3,   108,    39,
     9,    89,     3,     9,     4,    54,    55,     9,    20,    21,
    22,    23,    24,     9,     3,     3,    87,    43,     9,    20,
    21,    22,    23,    24,    29,     3,     3,    46,     4,    50,
     9,     9,    54,    55,   128,    29,    20,    21,    22,    23,
    24,     9,     9,    58,    59,    60,    61,    62,    63,    58,
    59,    60,    61,    62,    63,    20,    21,    22,    23,    24,
    20,    21,    22,    23,    24,    20,    21,    22,    23,    24,
    20,    21,    22,    23,    24,    20,    21,    22,    23,    24,
    20,    21,    22,    23,    24,    20,    21,    22,    23,    24,
    20,    21,    22,    23,    24,    20,    21,    22,    23,    24,
    20,    21,    22,    23,    24,   103,    17,   103,   131,    89 ]

racc_action_check = [
   116,    46,     0,    53,     0,   118,     7,   118,     7,    70,
    70,    99,    99,    73,    43,    69,    69,    70,     0,    87,
    85,   118,     7,    69,   116,    46,   116,    46,   116,   116,
   116,    46,    39,   116,    46,    46,   116,    46,    43,    73,
    43,    51,    51,    87,    43,    87,    43,    43,     4,    87,
    43,     6,    87,     6,    87,    87,    39,    32,    39,    39,
    39,    39,    39,    35,    82,    39,    82,     6,    39,    83,
    31,    31,     4,    31,     4,    36,    38,    79,     4,    38,
    82,     4,    27,    27,     4,    37,    37,    37,    37,    37,
    20,    20,    20,    20,    20,    24,    24,    24,    24,    24,
    78,    37,   100,   100,   123,   123,    20,    26,    26,    77,
    37,    24,   108,   108,   108,   108,   108,    65,    65,    65,
    65,    65,    66,    66,    66,    66,    66,    76,   108,    98,
    98,    97,    97,    65,    96,    96,    95,    95,    66,    89,
    89,    89,    89,    89,    33,    33,    33,    33,    33,    34,
    34,    34,    34,    34,    81,    89,    81,     5,    75,     5,
    33,     8,    72,     8,   103,    34,   105,    41,    71,    41,
    81,    52,    42,     5,    42,    94,    94,     8,     3,     3,
     3,     3,     3,    41,    49,    45,    49,    45,    42,   124,
   124,   124,   124,   124,     3,    48,     2,    48,     2,    17,
    49,    45,    93,    93,   122,   124,    55,    55,    55,    55,
    55,    48,     2,    28,    28,    28,    28,    28,    28,    64,
    64,    64,    64,    64,    64,    56,    56,    56,    56,    56,
    57,    57,    57,    57,    57,    54,    54,    54,    54,    54,
    59,    59,    59,    59,    59,    60,    60,    60,    60,    60,
    29,    29,    29,    29,    29,    62,    62,    62,    62,    62,
    63,    63,    63,    63,    63,    58,    58,    58,    58,    58,
    61,    61,    61,    61,    61,    67,     1,   125,   126,   129 ]

racc_action_pointer = [
   -22,   276,   172,   175,    45,   133,    27,   -18,   137,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   199,   nil,   nil,
    87,   nil,   nil,   nil,    92,   nil,    98,    71,   200,   247,
   nil,    50,    32,   141,   146,    60,    72,    82,    73,    29,
   nil,   143,   148,    11,   nil,   161,    -2,   nil,   171,   160,
   nil,    21,   169,    -5,   232,   203,   222,   227,   262,   237,
   242,   267,   252,   257,   206,   114,   119,   272,   nil,    -5,
   -11,   134,   134,    11,   nil,   130,    99,    81,    72,    49,
   nil,   130,    40,    41,   nil,    -8,   nil,    16,   nil,   136,
   nil,   nil,   nil,   193,   166,   125,   123,   120,   118,     0,
    91,   nil,   nil,   142,   nil,   143,   nil,   nil,   109,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,    -3,   nil,   -19,   nil,
   nil,   nil,   176,    84,   186,   274,   250,   nil,   nil,   277,
   nil,   nil ]

racc_action_default = [
    -2,   -70,    -1,   -70,   -70,   -70,   -70,   -70,   -70,   -60,
   -61,   -62,   -63,   -64,   -65,   -66,   -68,   -70,   -67,   -69,
    -5,    -7,    -8,    -9,   -70,   -11,   -14,   -17,   -24,   -70,
   -26,   -33,   -70,   -70,   -70,   -70,   -70,   -70,   -70,   -70,
   -41,   -70,   -70,   -70,   -48,   -70,   -70,   -52,   -70,   -70,
   132,    -3,    -6,   -70,   -70,   -70,   -70,   -70,   -70,   -70,
   -70,   -70,   -70,   -70,   -25,   -70,   -70,   -70,   -35,   -70,
   -70,   -70,   -70,   -70,   -54,   -70,   -70,   -70,   -70,   -70,
   -42,   -70,   -70,   -70,   -49,   -70,   -53,   -70,   -57,   -70,
   -10,   -12,   -13,   -15,   -16,   -18,   -19,   -20,   -21,   -22,
   -23,   -27,   -28,   -29,   -31,   -34,   -36,   -37,   -70,   -50,
   -55,   -58,   -59,   -38,   -39,   -40,   -70,   -44,   -70,   -43,
   -47,   -51,   -70,    -4,   -70,   -70,   -70,   -45,   -56,   -30,
   -32,   -46 ]

racc_goto_table = [
    18,    40,    19,    32,   104,    52,    51,   105,     2,    88,
    47,    91,    92,    41,    45,    48,    49,    44,    42,    69,
    70,    64,    73,    51,    53,    95,    96,    97,    98,    99,
   100,    93,    94,   101,   102,     1,   nil,    80,   nil,    18,
   nil,    19,   nil,    18,   nil,    19,    18,    18,    19,    19,
    82,    86,   nil,   nil,    81,   nil,    84,   nil,   nil,   nil,
   nil,   nil,   130,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   123,   nil,   117,   119,   nil,
    18,   nil,    19,   nil,   nil,   nil,   nil,   nil,   nil,   118,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   126,   129,
    51,   nil,   nil,   nil,   127,   nil,    18,   nil,    19 ]

racc_goto_check = [
    28,    16,    27,     6,    11,     3,     4,    12,     2,    25,
    22,     5,     5,     2,     2,     2,     2,    19,    15,     4,
     4,     9,     3,     4,     6,     8,     8,     8,     8,     8,
     8,     7,     7,    10,    10,     1,   nil,    16,   nil,    28,
   nil,    27,   nil,    28,   nil,    27,    28,    28,    27,    27,
     2,    22,   nil,   nil,    15,   nil,    19,   nil,   nil,   nil,
   nil,   nil,    11,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,     4,   nil,    16,    16,   nil,
    28,   nil,    27,   nil,   nil,   nil,   nil,   nil,   nil,     2,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     6,     3,
     4,   nil,   nil,   nil,    16,   nil,    28,   nil,    27 ]

racc_goto_pointer = [
   nil,    35,     8,   -15,   -14,   -43,     0,   -25,   -33,    -8,
   -32,   -63,   -60,   nil,   nil,    13,    -4,   nil,   nil,    11,
   nil,   nil,     3,   nil,   nil,   -40,   nil,     0,    -2 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,    31,    25,   nil,    26,    27,    28,
    30,   nil,   nil,    10,     5,   nil,   nil,    11,     6,   nil,
    12,     7,   nil,    14,     8,   nil,    13,    16,    15 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 42, :_reduce_none,
  0, 42, :_reduce_2,
  1, 44, :_reduce_3,
  3, 44, :_reduce_4,
  1, 46, :_reduce_5,
  2, 46, :_reduce_6,
  1, 46, :_reduce_7,
  1, 46, :_reduce_8,
  1, 46, :_reduce_9,
  3, 46, :_reduce_10,
  1, 48, :_reduce_none,
  3, 48, :_reduce_12,
  3, 48, :_reduce_13,
  1, 49, :_reduce_none,
  3, 49, :_reduce_15,
  3, 49, :_reduce_16,
  1, 50, :_reduce_none,
  3, 50, :_reduce_18,
  3, 50, :_reduce_19,
  3, 50, :_reduce_20,
  3, 50, :_reduce_21,
  3, 50, :_reduce_22,
  3, 50, :_reduce_23,
  1, 51, :_reduce_none,
  2, 51, :_reduce_25,
  1, 45, :_reduce_none,
  3, 45, :_reduce_27,
  3, 45, :_reduce_28,
  1, 52, :_reduce_29,
  3, 52, :_reduce_30,
  1, 53, :_reduce_31,
  3, 53, :_reduce_32,
  1, 47, :_reduce_none,
  3, 47, :_reduce_34,
  3, 54, :_reduce_35,
  4, 55, :_reduce_36,
  4, 55, :_reduce_37,
  3, 56, :_reduce_38,
  3, 57, :_reduce_39,
  3, 57, :_reduce_40,
  2, 58, :_reduce_41,
  3, 58, :_reduce_42,
  4, 58, :_reduce_43,
  4, 58, :_reduce_44,
  5, 58, :_reduce_45,
  6, 59, :_reduce_46,
  3, 60, :_reduce_47,
  2, 61, :_reduce_48,
  3, 61, :_reduce_49,
  4, 62, :_reduce_50,
  3, 63, :_reduce_51,
  2, 64, :_reduce_52,
  3, 64, :_reduce_53,
  3, 65, :_reduce_54,
  4, 65, :_reduce_55,
  3, 66, :_reduce_56,
  3, 67, :_reduce_57,
  4, 68, :_reduce_58,
  4, 68, :_reduce_59,
  1, 69, :_reduce_60,
  1, 69, :_reduce_none,
  1, 69, :_reduce_none,
  1, 69, :_reduce_none,
  1, 69, :_reduce_none,
  1, 69, :_reduce_none,
  1, 43, :_reduce_66,
  2, 43, :_reduce_67,
  1, 43, :_reduce_68,
  2, 43, :_reduce_69 ]

racc_reduce_n = 70

racc_shift_n = 132

racc_token_table = {
  false => 0,
  :error => 1,
  "," => 2,
  :IDENTIFIER => 3,
  :INTEGER => 4,
  :REAL => 5,
  :STRING => 6,
  "(" => 7,
  ")" => 8,
  "*" => 9,
  "/" => 10,
  "+" => 11,
  "-" => 12,
  :OP_EQ => 13,
  :OP_NEQ => 14,
  :OP_LEQ => 15,
  :OP_GEQ => 16,
  ">" => 17,
  "<" => 18,
  :NOT => 19,
  :AND => 20,
  :OR => 21,
  ":" => 22,
  "|" => 23,
  :VAR_OPEN => 24,
  :VAR_CLOSE => 25,
  :STMT_OPEN => 26,
  :IF => 27,
  :STMT_CLOSE => 28,
  :UNLESS => 29,
  :ELSE => 30,
  :ENDIF => 31,
  :ENDUNLESS => 32,
  :FOR => 33,
  :IN => 34,
  :ENDFOR => 35,
  :BLOCK => 36,
  :ENDBLOCK => 37,
  :END => 38,
  :EXTENDS => 39,
  :TEXT_BLOCK => 40 }

racc_nt_base = 41

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\",\"",
  "IDENTIFIER",
  "INTEGER",
  "REAL",
  "STRING",
  "\"(\"",
  "\")\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "OP_EQ",
  "OP_NEQ",
  "OP_LEQ",
  "OP_GEQ",
  "\">\"",
  "\"<\"",
  "NOT",
  "AND",
  "OR",
  "\":\"",
  "\"|\"",
  "VAR_OPEN",
  "VAR_CLOSE",
  "STMT_OPEN",
  "IF",
  "STMT_CLOSE",
  "UNLESS",
  "ELSE",
  "ENDIF",
  "ENDUNLESS",
  "FOR",
  "IN",
  "ENDFOR",
  "BLOCK",
  "ENDBLOCK",
  "END",
  "EXTENDS",
  "TEXT_BLOCK",
  "$start",
  "target",
  "document",
  "parameter_list",
  "logical_expression",
  "primary_expression",
  "filtered_expression",
  "multiplicative_expression",
  "additive_expression",
  "boolean_expression",
  "inverse_expression",
  "filter",
  "filter_list",
  "inject_statement",
  "if_tag",
  "else_tag",
  "end_if_tag",
  "if_block",
  "for_tag",
  "end_for_tag",
  "for_block",
  "block_tag",
  "end_block_tag",
  "block_block",
  "generic_block_tag",
  "end_generic_block_tag",
  "generic_block",
  "extends_statement",
  "document_component" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'cadenza.y', 8)
  def _reduce_2(val, _values, result)
     result = nil 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 12)
  def _reduce_3(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 13)
  def _reduce_4(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 18)
  def _reduce_5(val, _values, result)
     result = VariableNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 19)
  def _reduce_6(val, _values, result)
     result = VariableNode.new(val[0].value, val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 20)
  def _reduce_7(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 21)
  def _reduce_8(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 22)
  def _reduce_9(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 23)
  def _reduce_10(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 11 omitted

module_eval(<<'.,.,', 'cadenza.y', 28)
  def _reduce_12(val, _values, result)
     result = OperationNode.new(val[0], "*", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 29)
  def _reduce_13(val, _values, result)
     result = OperationNode.new(val[0], "/", val[2]) 
    result
  end
.,.,

# reduce 14 omitted

module_eval(<<'.,.,', 'cadenza.y', 34)
  def _reduce_15(val, _values, result)
     result = OperationNode.new(val[0], "+", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 35)
  def _reduce_16(val, _values, result)
     result = OperationNode.new(val[0], "-", val[2]) 
    result
  end
.,.,

# reduce 17 omitted

module_eval(<<'.,.,', 'cadenza.y', 40)
  def _reduce_18(val, _values, result)
     result = OperationNode.new(val[0], "==", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 41)
  def _reduce_19(val, _values, result)
     result = OperationNode.new(val[0], "!=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 42)
  def _reduce_20(val, _values, result)
     result = OperationNode.new(val[0], "<=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 43)
  def _reduce_21(val, _values, result)
     result = OperationNode.new(val[0], ">=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 44)
  def _reduce_22(val, _values, result)
     result = OperationNode.new(val[0], ">", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 45)
  def _reduce_23(val, _values, result)
     result = OperationNode.new(val[0], "<", val[2]) 
    result
  end
.,.,

# reduce 24 omitted

module_eval(<<'.,.,', 'cadenza.y', 50)
  def _reduce_25(val, _values, result)
     result = BooleanInverseNode.new(val[1]) 
    result
  end
.,.,

# reduce 26 omitted

module_eval(<<'.,.,', 'cadenza.y', 55)
  def _reduce_27(val, _values, result)
     result = OperationNode.new(val[0], "and", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 56)
  def _reduce_28(val, _values, result)
     result = OperationNode.new(val[0], "or", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 60)
  def _reduce_29(val, _values, result)
     result = FilterNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 61)
  def _reduce_30(val, _values, result)
     result = FilterNode.new(val[0].value, val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 65)
  def _reduce_31(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 66)
  def _reduce_32(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

# reduce 33 omitted

module_eval(<<'.,.,', 'cadenza.y', 71)
  def _reduce_34(val, _values, result)
     result = FilteredValueNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 75)
  def _reduce_35(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 79)
  def _reduce_36(val, _values, result)
     open_scope!; result = val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 80)
  def _reduce_37(val, _values, result)
     open_scope!; result = BooleanInverseNode.new(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 84)
  def _reduce_38(val, _values, result)
     result = close_scope!; open_scope! 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 88)
  def _reduce_39(val, _values, result)
     result = close_scope! 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 89)
  def _reduce_40(val, _values, result)
     result = close_scope! 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 93)
  def _reduce_41(val, _values, result)
     result = IfNode.new(val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 94)
  def _reduce_42(val, _values, result)
     result = IfNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 95)
  def _reduce_43(val, _values, result)
     result = IfNode.new(val[0], val[1], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 96)
  def _reduce_44(val, _values, result)
     result = IfNode.new(val[0], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 97)
  def _reduce_45(val, _values, result)
     result = IfNode.new(val[0], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 101)
  def _reduce_46(val, _values, result)
     open_scope!; result = [val[2].value, val[4]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 105)
  def _reduce_47(val, _values, result)
     result = close_scope! 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 110)
  def _reduce_48(val, _values, result)
     result = ForNode.new(VariableNode.new(val[0].first), val[0].last, val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 111)
  def _reduce_49(val, _values, result)
     result = ForNode.new(VariableNode.new(val[0].first), val[0].last, val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 115)
  def _reduce_50(val, _values, result)
     result = open_block_scope!(val[2].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 119)
  def _reduce_51(val, _values, result)
     result = close_block_scope! 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 124)
  def _reduce_52(val, _values, result)
     result = BlockNode.new(val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 125)
  def _reduce_53(val, _values, result)
     result = BlockNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 129)
  def _reduce_54(val, _values, result)
     open_scope!; result = [val[1].value, []] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 130)
  def _reduce_55(val, _values, result)
     open_scope!; result = [val[1].value, val[2]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 134)
  def _reduce_56(val, _values, result)
     result = close_scope! 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 138)
  def _reduce_57(val, _values, result)
     result = GenericBlockNode.new(val[0].first, val[2], val[0].last) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 142)
  def _reduce_58(val, _values, result)
     result = val[2].value 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 143)
  def _reduce_59(val, _values, result)
     result = VariableNode.new(val[2].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 147)
  def _reduce_60(val, _values, result)
     result = TextNode.new(val[0].value) 
    result
  end
.,.,

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

# reduce 65 omitted

module_eval(<<'.,.,', 'cadenza.y', 156)
  def _reduce_66(val, _values, result)
     push val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 157)
  def _reduce_67(val, _values, result)
     push val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 158)
  def _reduce_68(val, _values, result)
     document.extends = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 159)
  def _reduce_69(val, _values, result)
     document.extends = val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class RaccParser
  end   # module Cadenza

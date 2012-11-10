%%{
   machine cadenza;

   action mark {
      ts = p
   }

   action emit_number {
      token = advance_token.call
      if token.index "."
         append.call :REAL, token.to_f, token
      else
         append.call :INTEGER, token.to_i, token
      end
   }

   action emit_word {
      token = advance_token.call

      case token
         when *%w(if unless else endif endunless for in endfor block endblock extends end and or not)
            append.call token.upcase.to_sym, token, token

         else
            append.call :IDENTIFIER, token, token
      end
   }

   action emit_string  {
      token = advance_token.call
      value = token[1..-2]
      append.call :STRING, value, token
   }

   action emit_op_eq   { push.call(:OP_EQ)  }
   action emit_op_neq  { push.call(:OP_NEQ) }
   action emit_op_geq  { push.call(:OP_GEQ) }
   action emit_op_leq  { push.call(:OP_LEQ) }
   action emit_op_gt   { push.call('>') }
   action emit_op_lt   { push.call('<') }
   action emit_op_add  { push.call('+') }
   action emit_op_sub  { push.call('-') }
   action emit_op_mul  { push.call('*') }
   action emit_op_div  { push.call('/') }

   action emit_inject_open  { push.call(:VAR_OPEN) }
   action emit_inject_close { push.call(:VAR_CLOSE) }

   action emit_statement_open  { push.call(:STMT_OPEN) }
   action emit_statement_close { push.call(:STMT_CLOSE) }

   action emit_comma    { push.call(',') }
   action emit_lbracket { push.call('(') }
   action emit_rbracket { push.call(')') }
   action emit_colon    { push.call(':') }
   action emit_pipe     { push.call('|') }

   action emit_text { push.call(:TEXT_BLOCK) }

   include cadenza_common "cadenza.rl";
}%%

module Cadenza
   module RagelLexer
      %% write data;

      def self.tokenize(source)
         # unpack the source string into a character array if it's a string
         data = source.unpack("c*") if source.is_a?(String)
         
         # set an array index to the start of the current token
         ts = 0
         eof = data.length

         # set up an array which will hold all found tokens
         tokens = []

         # Ragel will insert any code it needs for it's variables
         %% write init;

         text = lambda { data[ts..p-1].pack('c*') }
         
         advance_token = lambda do
            token = text.call
            ts = p
            token
         end

         append = lambda do |type, value, text|
            tokens << [type, Cadenza::Token.new(value, text, 0, 0)]
         end

         push = lambda do |type|
            value = advance_token.call
            append.call(type, value, value)
         end

         # evaluate the state machine
         %% write exec;

         # and return the result
         tokens
      end
   end
end
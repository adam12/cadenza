require 'strscan'

module Cadenza
  # The {Lexer} class accepts in input {IO} object which it will parse simple
  # {Token}s from for use in a {Parser} class.
  class Lexer

    # assigns a new string to retrieve tokens and resets the line and column
    # counters to (1, 1)
    # @param [String] source the string from which to parse tokens
    def source=(source)
      @index = 0
      @tokens = Cadenza::RagelLexer.tokenize(source || "")
    end

    # Gets the next token and returns it.  Tokens are two element arrays where
    # the first element is one of the following symbols and the second is an
    # instance of {Cadenza::Token} containing the value of the token.
    #
    # valid tokens:
    # - :VAR_OPEN - for opening an inject tag ex. "{{"
    # - :VAR_CLOSE - for closing an inject tag ex. "}}"
    # - :STMT_OPEN - for opening a control tag ex. "{%"
    # - :STMT_CLOSE - for closing a control tag ex. "%}"
    # - :TEXT_BLOCK - for a block of raw text
    # - :OP_EQ - for an equivalence symbol ex. "=="
    # - :OP_NEQ - for a nonequivalence symbol ex. "!="
    # - :OP_GEQ - for a greater than or equal to symbol ex. ">="
    # - :OP_LEQ - for a less than or equal to symbol ex. "<="
    # - :REAL - for a number with a decimal value ex. "123.45"
    # - :INTEGER - for a number without a decimal value ex. "12345"
    # - :STRING - for a string literal, either from single quotes or double quotes ex. "'foo'"
    # - :IDENTIFIER - for a variable name ex. "foo"
    # - :IF - for the 'if' keyword
    # - :UNLESS - for the 'unless' keyword
    # - :ELSE - for the 'else' keyword
    # - :ENDIF - for the 'endif' keyword
    # - :ENDUNLESS - for the 'endunless' keyword
    # - :FOR - for the 'for' keyword
    # - :IN - for the 'in' keyword
    # - :ENDFOR - for the 'endfor' keyword
    # - :BLOCK - for the 'block' keyword
    # - :ENDBLOCK - for the 'endblock' keyword
    # - :EXTENDS - for the 'extends' keyword
    # - :END - for the 'end' keyword
    # - :AND - for the 'and' keyword
    # - :OR - for the 'or' keyword
    # - :NOT - for the 'not' keyword
    #
    # if no tokens are left the return value will be [false, false]
    def next_token
      token = @tokens[@index]
      if token
        @index += 1
        token
      else
        [false, false]
      end
    end

    # returns an array of all remaining tokens left to be parsed.  See {#next_token}
    # for details regarding the definition of a token.  The array will always end in
    # [false, false].
    #
    # @return [Array] a list of all remaining tokens
    def remaining_tokens
      result = []

      loop do
        result.push next_token
        break if result.last == [false, false]
      end

      result
    end
  end    
end
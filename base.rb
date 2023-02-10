class BooleanExpression
  VARIABLES = {}

  def initialize(expression)
    @expression = expression
  end

  def evaluate
    # duplicate expression via.dup
    expression = @expression.dup
    expression.gsub!(/([a-z]+)/) do |match|
      VARIABLES[match] || match
    end
    expression.gsub!("T", "true")
    expression.gsub!("F", "false")
    expression.gsub!("NOT", "!")
    expression.gsub!("AND", "&&")
    expression.gsub!("OR", "||")
    eval(expression)
  end
end


# examples
expression = BooleanExpression.new("T OR F")
 puts expression.evaluate
 # Output: T
 
 expression = BooleanExpression.new("T AND F")
 puts expression.evaluate
 # Output: F
 
 expression = BooleanExpression.new("(T AND F) == F")
 puts expression.evaluate
 # Output: T
 
#  expression = BooleanExpression.new(" let X = F")
#  puts expression.evaluate
 # Output: NoMethodError
 
#  expression = BooleanExpression.new("let Y = NOT X")
#  puts expression.evaluate
 # Output: undefined method 'let'
 
 expression = BooleanExpression.new(" ! F AND T")
 puts expression.evaluate
 # Output: T

class BooleanExpression
  VARIABLES = {}

  def initialize(expression)
    @expression = expression
  end

  def evaluate
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

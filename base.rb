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
end
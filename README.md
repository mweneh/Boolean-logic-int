Boolean Expression Interpreter

This is a Ruby script that allows you to interpret simple boolean expressions, with support for variables. The expression can be a combination of values (true and false) and variables combined using the operators AND, OR, and NOT and parentheses. The interpreter evaluates the expression and returns the result.
Getting started

To run the script, you need to have Ruby installed on your machine. You can check if Ruby is installed by running the following command in your terminal:

ruby -v

To use the script, you need to create a new instance of the BooleanExpression class and pass in your expression as a string:

expression = BooleanExpression.new("T OR F")
puts expression.evaluate
# Output: T

You can also evaluate expressions that contain variables:
Note: expressions with varaibles such as the ones below are not yet working in this code.
If you have a solution feel free to add it.


expression = BooleanExpression.new("let X = F")
puts expression.evaluate
# Output: X: F

expression = BooleanExpression.new("let Y = NOT X")
puts expression.evaluate
# Output: Y: T

Syntax

The script supports the following operators:

    AND (∧): This operator returns true if both operands are true, and false otherwise.
    OR (∨): This operator returns true if either operand is true, and false otherwise.
    NOT (¬): This operator returns false if the operand is true, and true otherwise.

The script  supports NOT variables, which are declared using the let keyword:


Note that the precedence of the NOT operator is higher than that of AND and OR.
Limitations

This script is not intended for use in production, as it uses the eval method, which is considered dangerous and can open your code up to security vulnerabilities. The script should only be used for educational purposes.

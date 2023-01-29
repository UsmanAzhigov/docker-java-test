# Calculator Console Application

This is a simple calculator application that takes a mathematical expression as input and evaluates it. The application is written in Java and has two main files: `main.java` and `helper.java`.

## main.java

This file contains the main function, which takes input from the user, calls the evaluate method from the Helper class, and prints the result.

## helper.java

This file contains the methods `evaluate`, `hasPrecedence`, and `applyOp`.

### evaluate(String input)

The `evaluate` method takes a string input and evaluates it as a mathematical expression using the ***Shunting Yard algorithm***. It uses two stacks, one for operands and one for operators. The method converts the input string from infix notation to postfix notation and then evaluates it.

### hasPrecedence(char op1, char op2)

The `hasPrecedence` method compares the precedence of two operators, `op1` and `op2`. It returns `true` if `op1` has higher or equal precedence than `op2`, and `false` otherwise. This method is used in the `evaluate` method to ensure that the operators are applied in the correct order.

### applyOp(char op, double b, double a)

The `applyOp` method takes an operator, `op`, and two operands, `a` and `b`, and applies the operator to the operands. It returns the result of the operation. This method is used in the `evaluate` method to apply the operators to the operands.

## How to Run

1. Clone the repository `git clone https://github.com/OpenGenus/calculator-in-java.git`
2. Open the project in your preferred IDE
3. Compile and run the main.java file
4. Input the mathematical expression you want to evaluate
5. The result will be displayed on the console

**Note:** The calculator only supports basic arithmetic operations such as *addition, subtraction, multiplication, and division*. It also supports the use of parentheses.

For the full explanation of the project, visit the [link](https://iq.opengenus.org/calculator-console-application-in-java/).

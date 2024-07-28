import 'package:calculator/interface/arathmetic.dart';
import 'package:calculator/models/expression.dart';
import 'package:calculator/models/numbers.dart';
import 'package:calculator/models/operations.dart';

void main() {
  Arithmetic leftOperator = Numbers(3);
  Arithmetic rightOperator = Numbers(5);

  Arithmetic rightOperator2 = Numbers(10);

  Arithmetic addExpression = Expression(leftOperator, rightOperator, Operation.ADDITION);
  Arithmetic oneAddExpression = Expression(addExpression, rightOperator2, Operation.MULTIPLY);
  print("Final value is ${oneAddExpression.evaluate()}");

  
}
import 'package:calculator/interface/arathmetic.dart';
import 'package:calculator/models/operations.dart';

class Expression extends Arithmetic {
  late Arithmetic leftOperator;
  late Arithmetic rightOperator;

  late Operation operation;

  Expression(this.leftOperator, this.rightOperator, this.operation);
  
  @override
  int evaluate() {
    int value = 0;
    switch(operation) {
      case Operation.ADDITION:
        value = leftOperator.evaluate() + rightOperator.evaluate();
        break;
      case Operation.SUBTRACT:
        value = leftOperator.evaluate() - rightOperator.evaluate();
        break;
      case Operation.DIVISION:
        value = (leftOperator.evaluate() / rightOperator.evaluate()) as int;
        break;
      case Operation.MULTIPLY:
        value = leftOperator.evaluate() * rightOperator.evaluate();
        break;
    }
    return value;
  }
  

}
import 'package:calculator/interface/arathmetic.dart';

class Numbers extends Arithmetic {

  late int value;

  Numbers(this.value);

  @override
  int evaluate() {
    return value;
  }
  
}
enum Operation { plus, minus, multiply, divide }
void main() {
  const a = 4;
  const b = 2;
  const op = Operation.plus;
  
  // implement calculator
  var res, operate;
  switch(op) {
    case Operation.plus:
      res = a + b;
      operate = "+";
      break;
    case Operation.multiply:
      res = a * b;
      operate = "-";
      break;
    case Operation.minus:
      res = a - b;
      operate = "*";
      break;
    case Operation.divide:
      res = a / b;
      operate = "/";
      break;
  }
  print("$a $operate $b = $res");
}
void main() {
  double x = 0.3;
  double y = 0.1 + 0.1 + 0.1;
  bool isEqual = x == y;
  print("$x == $y-> $isEqual");

  String priceStr = "1.55";
  double price = double.parse(priceStr);
  print(price);

  int qty = 10;
  double totalQty = qty.toDouble();
  print(totalQty);
}

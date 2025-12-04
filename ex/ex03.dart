const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

void main(List<String> args) {
  double total = 0;

  for(String arg in args) {
    if(pizzaPrices.containsKey(arg)) {
      print("$arg: \$${pizzaPrices[arg]}");
      total += pizzaPrices[arg]!;
    } else {
      print("$arg pizza is not on the menu");
    }
  }

  print("Total: \$${total.toInt()}");
}
class Person {
  String? _name;
  int? _age;
  double? _height;

  void printDescription() {
    print("My name is ${_name}. I'm ${_age} years old, I'm ${_height} meters tall.");
  }
}

void main() {
  Person andrea = new Person()
    .._name = "Andrea"
    .._age = 36
    .._height = 1.84;
  Person niji = new Person()
    .._name = "Niji"
    .._age = 19
    .._height = 1.62;

  andrea.printDescription();
  niji.printDescription();
}
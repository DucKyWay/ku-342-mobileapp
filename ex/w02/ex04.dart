mixin Walker {
  void walk() {
    print("walk");
  }
}

mixin Runner {
  void run() {
    print("run");
  }
}

class Athlete with Walker, Runner {}

void main() {
  var athlete = Athlete();
  athlete.walk();
  athlete.run();
}
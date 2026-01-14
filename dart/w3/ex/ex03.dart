import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() {
    print("""
Area: ${this.area}
Perimeter: ${this.perimeter}
====================""");
  }
}

class Square extends Shape {
  final double side;

  Square({this.side = 0});
  
  @override
  double get area => this.side * this.side;
  
  @override
  double get perimeter => 4 * this.side;
}

class Circle extends Shape {
  final double radius;

  Circle({this.radius = 0});

  @override
  double get area => pi * this.radius * this.radius;
  
  @override
  double get perimeter => 2 * pi * this.radius;
}

void main() {
  List<Shape> lists =[Circle(radius: 7), Square(side: 10)];
  lists[0].printValues();
  lists[1].printValues();
}
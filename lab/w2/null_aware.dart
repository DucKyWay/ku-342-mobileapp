String? upperCaseIt(String? str) {
// Try conditionally accessing the `toUpperCase` method
  return str!.toUpperCase();
}

void main() {
  String? input;
  print(input?.length); // null
  print(input?.toLowerCase()); // null
  print(upperCaseIt(input));
  print(upperCaseIt('a'));
}
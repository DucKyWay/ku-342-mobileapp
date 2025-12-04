void main() {
  final DateTime currentTime;
  currentTime = DateTime.now();
  print(currentTime);
  
  // error
  currentTime = DateTime.utc(2022, 12, 31);
}
import 'package:flutter/foundation.dart';
import '../constants/menu_constant.dart';

class CartModel extends ChangeNotifier {
  final List<MenuItem> _items = [];

  List<MenuItem> get items => List.unmodifiable(_items);

  double get totalPrice => 
    _items.fold(0, (sum, item) => sum + item.price);
  
  void add(MenuItem item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(MenuItem item) {
    _items.remove(item);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
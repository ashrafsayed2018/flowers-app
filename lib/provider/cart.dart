import 'package:flowwer_app/model/product.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Product> selectedProducts = [];
  // add to selected list of products
  void addToSelected(Product product) {
    selectedProducts.add(product);
    notifyListeners();
  }

  // remove from selected list of products
  void removeFromSelected(Product product) {
    selectedProducts.remove(product);
    notifyListeners();
  }

  // sum the total price of selected products
  double get totalPrice {
    return selectedProducts.fold(
        0, (sum, product) => sum + int.parse(product.price));
  }
}

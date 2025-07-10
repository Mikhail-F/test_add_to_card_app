import 'package:flutter/material.dart';
import 'package:test_app/domain/entities/product.dart';

class CartProvider extends ChangeNotifier {
  final Set<Product> _cart = {};

  Set<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  bool isInCart(Product product) => _cart.contains(product);
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/domain/entities/product.dart';
import 'package:test_app/presentation/providers/cart_provider.dart';
import 'package:test_app/presentation/screens/add_to_order/components/product_item.dart';

class AddToOrderScreen extends StatelessWidget {
  const AddToOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartRead = context.read<CartProvider>();
    final cartWatch = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Добавьте в заказ'), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: Product.recommendedProducts.length,
        itemBuilder: (context, index) {
          final product = Product.recommendedProducts[index];
          final isInCart = cartWatch.isInCart(product);

          return ProductItem(
            product: product,
            isInCart: isInCart,
            onAdd: () => cartRead.addToCart(product),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_app/presentation/theme/app_styles.dart';
import 'package:test_app/domain/entities/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool isInCart;
  final VoidCallback onAdd;
  const ProductItem({
    super.key,
    required this.product,
    this.isInCart = false,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.network(
              product.imageUrl,
              width: 64,
              height: 64,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name, style: AppStyles.h3),
                  const SizedBox(height: 8),
                  Text('${product.price} ₽', style: AppStyles.title),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: isInCart ? null : onAdd,
              style: isInCart ? AppStyles.addedButton : null,
              child: Text(isInCart ? 'Добавлено' : 'Добавить'),
            ),
          ],
        ),
      ),
    );
  }
}

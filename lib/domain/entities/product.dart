class Product {
  final String name;
  final String imageUrl;
  final double price;

  Product({required this.name, required this.imageUrl, required this.price});

  static final List<Product> recommendedProducts = [
    Product(
      name: 'Яблоко',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415733.png',
      price: 30,
    ),
    Product(
      name: 'Банан',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415734.png',
      price: 25,
    ),
    Product(
      name: 'Апельсин',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415729.png',
      price: 40,
    ),
    Product(
      name: 'Груша',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415732.png',
      price: 35,
    ),
    Product(
      name: 'Киви',
      imageUrl: 'https://cdn-icons-png.flaticon.com/512/415/415735.png',
      price: 50,
    ),
  ];
}

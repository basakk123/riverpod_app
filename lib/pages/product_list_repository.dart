import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  int id;
  String name;
  int price;

  Product(this.id, this.name, this.price);
}

final productListProvider =
    StateNotifierProvider<ProductListRepository, List<Product>>((ref) {
  return ProductListRepository();
});

class ProductListRepository extends StateNotifier<List<Product>> {
  // 데이터
  Product fetch() {
    return Product(1, "바나나", 1000);
  }

  ProductListRepository()
      : super([
          Product(1, "바나나", 1000),
          Product(2, "딸기", 2000),
          Product(3, "참외", 3000)
        ]);
}

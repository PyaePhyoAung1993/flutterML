class Product {
  Category category;
  String name;
  int price;

  Product({this.category, this.name, this.price});
}

enum Category { Foods, Drinks, Snacks }

extension CategoryExtension on Category {
  get title => toString().substring(0, 1).toUpperCase();
  get name => toString().split(".").last;
}

class ProductModel {
  Set<Product> _repo = {};

  add(Product p) {
    _repo.add(p);
  }

  remove(Product p) {
    _repo.remove(p);
  }

  List<Product> get products => _repo.toList();
}
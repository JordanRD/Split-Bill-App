const String columnId = 'id';
const String columnName = 'name';
const String columnCategory = 'category';

class Product {
  String id;
  DateTime createDate;
  String name;
  String category;
  num price = 0;

  Product(
    this.id,
    this.name,
    this.category,
    this.price,
    this.createDate,
  );
  // num get price => price.first;
}

class ProductReceipt extends Product {
  num priceDiscount = 0;
  num percentageDiscount = 0;
  ProductReceipt(
    super.id,
    super.name,
    super.category,
    super.price,
    super.createDate,
    this.percentageDiscount,
    this.priceDiscount,
  );

  factory ProductReceipt.fromProduct(Product product) {
    return ProductReceipt(product.id, product.name, product.category,
        product.price, product.createDate, 0, 0);
  }

  num get percentageDiscountPrice => (price * (1 - (percentageDiscount / 100)));
  num get priceAfterDiscount =>
      (price - percentageDiscountPrice) - priceDiscount;
}

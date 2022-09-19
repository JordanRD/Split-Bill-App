import 'package:split_bill/app/model/additional_cots.dart';
import 'package:split_bill/app/model/product.dart';

class User {
  String id;
  DateTime createDate;
  String name;
  User(
    this.id,
    this.name,
    this.createDate,
  );
}

class UserReceipt extends User {
  List<ProductReceipt> products = [];
  List<AdditionalCost> additionalCosts = [];
  late num _priceDiscount;
  late num _percentageDiscount;
  UserReceipt(
    super.id,
    super.name,
    super.createDate,
    this.products,
  );

  set precentageDiscount(num discount) {
    for (var element in products) {
      element.percentageDiscount = discount;
    }
    _percentageDiscount = discount;
  }

  set priceDiscount(num price) {
    num discount = totalPrice / price;
    for (var element in products) {
      element.priceDiscount = element.price / discount;
    }
    _priceDiscount = price;
  }

  num get precentageDiscount => _percentageDiscount;
  num get priceDiscount => _priceDiscount;

  factory UserReceipt.fromUser(User user) {
    return UserReceipt(user.id, user.name, user.createDate, []);
  }

  addProduct(ProductReceipt product) {
    products.add(product);
  }

  removeProduct(String id) {
    products.removeWhere((product) => product.id == id);
  }

  addAdditionalCost(AdditionalCost additionalCost) {
    additionalCosts.add(additionalCost);
  }

  removeAdditionalCost(String id) {
    additionalCosts.removeWhere((cost) => cost.id == id);
  }

  num get totalProductPrice {
    num productPriceTotal = products.fold(
        0, (previousValue, element) => previousValue + element.price);
    return productPriceTotal;
  }

  num get totalAdditionalCost {
    num additionalCostsTotal = products.fold(
        0, (previousValue, element) => previousValue + element.price);

    return additionalCostsTotal;
  }

  num get totalPrice {
    return totalProductPrice + totalAdditionalCost;
  }

  num get totalDiscountPrice => products.fold(0,
      (previousValue, element) => previousValue + element.priceAfterDiscount);
}

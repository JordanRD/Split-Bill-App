import 'package:split_bill/app/model/user.dart';

class SplitBill {
  String id;
  String title;
  late num _priceDiscount;
  late num _percentageDiscount;
  DateTime createDate;
  List<UserReceipt> users = [];

  SplitBill(
    this.id,
    this.title,
    this.users,
    num priceDiscount,
    num percentageDiscount,
    this.createDate,
  ) {
    this.priceDiscount = percentageDiscount;
    this.percentageDiscount = percentageDiscount;
  }

  num get priceDiscount => _priceDiscount;
  num get percentageDiscount => _percentageDiscount;

  set priceDiscount(num price) {
    for (var e in users) {
      e.priceDiscount = price;
    }
    _priceDiscount = price;
  }

  set percentageDiscount(num percentage) {
    for (var e in users) {
      e.precentageDiscount = percentage;
    }
    _percentageDiscount = percentage;
  }

  num get totalPrice => users
      .fold(0, (previousValue, element) => previousValue + element.totalPrice);

  num get totalDiscountPrice => users.fold(0,
      (previousValue, element) => previousValue + element.totalDiscountPrice);

  addUser(UserReceipt user) {
    users.add(user);
  }

  removeUser(int idx) {
    users.removeAt(idx);
  }
}

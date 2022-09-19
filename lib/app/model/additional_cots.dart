const String columnId = 'id';
const String columnName = 'name';
const String columnPrice = 'price';

class AdditionalCost {
  int price = 0;
  String name;
  String id;
  AdditionalCost(this.id, this.name, this.price);

  factory AdditionalCost.fromMap(Map map) {
    return AdditionalCost(
      map[columnId] as String,
      map[columnName] as String,
      map[columnPrice] as int,
    );
  }
}

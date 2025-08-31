class Medicine {
  final String? id;
  final String? name;
  final int quantity;
  final int price;
  final String? companyId;
  final String? companyName;

  Medicine({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    this.companyId,
    this.companyName,
  });
}

class Products {
  final String productName;
  final int price;
  final String productDesc;
  final List<String> images;
  final bool isUsed;
  final String category;
  int views;
  bool isNegotiable;
  bool condition;
  bool ownerShipDocument;

  Products(
      {
      this.productName,
      this.price,
      this.productDesc,
      this.images,
      this.isUsed,
      this.category,
      this.views,
      });

  String getCategory() {
    return category;
  }
}

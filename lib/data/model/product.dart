class Product {
  String category;
  String id;
  String collectionId;
  String description;
  int discountPrice;
  String name;
  String popularity;
  String thumbnail;
  int price;
  int quantity;

  Product(
    this.category,
    this.id,
    this.collectionId,
    this.description,
    this.discountPrice,
    this.name,
    this.popularity,
    this.thumbnail,
    this.price,
    this.quantity,
  );

  //http://127.0.0.1:8090/api/files/COLLECTION_ID_OR_NAME/RECORD_ID/FILENAME
  factory Product.fromJson(Map<String, dynamic> jsonObject) {
    return Product(
      jsonObject["category"],
      jsonObject["id"],
      jsonObject["collectionId"],
      jsonObject["description"],
      jsonObject["discount_price"],
      jsonObject["name"],
      jsonObject["popularity"],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
      jsonObject["price"],
      jsonObject["quantity"],
    );
  }
}

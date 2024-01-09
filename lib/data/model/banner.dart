class Banners {
  String categoryId;
  String collectionId;
  String id;
  String thumbnail;

  Banners(
    this.categoryId,
    this.collectionId,
    this.id,
    this.thumbnail,
  );
  //http://127.0.0.1:8090/api/files/COLLECTION_ID_OR_NAME/RECORD_ID/FILENAME
  //https://startflutter.ir/api/
  factory Banners.fromJson(Map<String, dynamic> jsonObject) {
    return Banners(
      jsonObject['categoryId'],
      jsonObject['collectionId'],
      jsonObject['id'],
      'https://startflutter.ir/api/files/${jsonObject['collectionId']}/${jsonObject['id']}/${jsonObject['thumbnail']}',
    );
  }
}

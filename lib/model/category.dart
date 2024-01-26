import 'dart:convert';

List<Category> popularCategoryListFromJson(String val) =>
    List<Category>.from(json
        .decode(val)['data']
        .map((categorie) => Category.popularCategoryFromJson(categorie)));

class Category {
  final int id;
  final String name;
  final String image;
  Category({
    required this.id,
    required this.name,
    required this.image,
  });
  factory Category.popularCategoryFromJson(Map<String, dynamic> data) =>
      Category(
        id: data['id'],
        name: data['attributes']['categorie']['data']['attributes']['name'],
        image: data['attributes']['categorie']['data']['attributes']['image']
            ['data']['attributes']['url'],
      );
}
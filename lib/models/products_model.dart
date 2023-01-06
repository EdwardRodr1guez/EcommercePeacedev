// To parse this JSON data, do
//
//     final productService = productServiceFromMap(jsonString);

import 'dart:convert';

List<ProductService> productServiceFromMap(String str) => List<ProductService>.from(json.decode(str).map((x) => ProductService.fromMap(x)));

String productServiceToMap(List<ProductService> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ProductService {
    ProductService({
        this.id,
        this.title,
        this.price,
        this.description,
        this.category,
        this.image,
        this.rating,
    });

    int? id;
    String? title;
    double? price;
    String? description;
    String? category;
    String? image;
    Rating? rating;

    factory ProductService.fromMap(Map<String, dynamic> json) => ProductService(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromMap(json["rating"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
        "rating": rating!.toMap(),
    };
}

class Rating {
    Rating({
        this.rate,
        this.count,
    });

    double? rate;
    int? count;

    factory Rating.fromMap(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toMap() => {
        "rate": rate,
        "count": count,
    };
}

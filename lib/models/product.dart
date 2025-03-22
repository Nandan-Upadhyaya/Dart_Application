import 'package:fluttersecond/models/review.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String thumbnail;
  final List tags;
  final List<Review> reviews;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
    this.tags = const [],
    this.reviews = const [],
  });

  static Product fromJson(dynamic json) {
    final List<Review> reviews =
        json['reviews'].map<Review>(Review.fromJson).toList();
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      thumbnail: json['thumbnail'],
      tags: json['tags'],
      reviews: reviews,
    );
  }

  @override
  String toString() {
    return '{title: $title}';
  }
}

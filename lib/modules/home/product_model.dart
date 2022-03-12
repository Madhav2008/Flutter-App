import 'dart:convert';

class ProductModel {
  late String title;
  late int price;
  late double rating;
  late int totalRating;
  late String description;
  late List<String> images;
  late bool isSponsered;
  late bool isFav;
  late bool isTrusted;
  late bool isFreeDelivery;

  ProductModel({
    required this.title,
    required this.price,
    required this.rating,
    required this.totalRating,
    required this.description,
    required this.images,
    required this.isSponsered,
    required this.isFav,
    required this.isTrusted,
    required this.isFreeDelivery,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'];
    rating = json['rating'];
    totalRating = json['totalRating'];
    description = json['description'];
    images = jsonDecode(json['images']);
    isSponsered = json['isSponsered'] ?? false;
    isFav = json['isFav'] ?? false;
    isTrusted = json['isTrusted'] ?? false;
    isFreeDelivery = json['isFreeDelivery'] ?? false;
  }

  static List<ProductModel> mocks() {
    return [
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: true,
        isFav: false,
        isTrusted: true,
        isFreeDelivery: false,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: false,
        isFav: true,
        isTrusted: false,
        isFreeDelivery: true,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: false,
        isFav: false,
        isTrusted: true,
        isFreeDelivery: true,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: false,
        isFav: false,
        isTrusted: true,
        isFreeDelivery: true,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: true,
        isFav: false,
        isTrusted: true,
        isFreeDelivery: true,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: true,
        isFav: true,
        isTrusted: false,
        isFreeDelivery: true,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: true,
        isFav: false,
        isTrusted: false,
        isFreeDelivery: true,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: false,
        isFav: true,
        isTrusted: true,
        isFreeDelivery: false,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: true,
        isFav: false,
        isTrusted: true,
        isFreeDelivery: false,
      ),
      ProductModel(
        title: 'Trendy Suits & Dress MAterial',
        price: 453,
        rating: 4.2,
        totalRating: 2213,
        description: 'Heavy weight suit material with dupttaa and salwar',
        images: [
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg',
          'assets/images/slide.jpg'
        ],
        isSponsered: true,
        isFav: true,
        isTrusted: true,
        isFreeDelivery: false,
      ),
    ];
  }
}

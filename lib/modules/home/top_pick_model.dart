class TopPickModel {
  late String image;
  late String title;

  TopPickModel({required this.image, required this.title});

  TopPickModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
  }

  static List<TopPickModel> mocks() {
    return [
      TopPickModel(image: 'assets/icon.png', title: 'Under149'),
      TopPickModel(image: 'assets/icon.png', title: 'Most Wishlisted'),
      TopPickModel(image: 'assets/icon.png', title: 'Next Day Dispatch'),
      TopPickModel(image: 'assets/icon.png', title: 'Daily Essantials'),
      TopPickModel(image: 'assets/icon.png', title: 'Meesho Trusted'),
      TopPickModel(image: 'assets/icon.png', title: 'Hishest Quality'),
      TopPickModel(image: 'assets/icon.png', title: 'Most Searched'),
      TopPickModel(image: 'assets/icon.png', title: 'Most Shared'),
    ];
  }
}

class CategoryModel {
  late String image;
  late String title;
  late String icon;

  CategoryModel({
    required this.image,
    required this.title,
    required this.icon,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    icon = json['icon'];
  }

  static List<CategoryModel> mocks() {
    return [
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Saree',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Kurti Sets',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Jewellery',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Men',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Suits',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Beauty',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Kids',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Furnishing',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Kitchen',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Decor',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Lehengas',
        icon: '',
      ),
      CategoryModel(
        image: 'assets/icon.png',
        title: 'Accessories',
        icon: '',
      ),
    ];
  }
}

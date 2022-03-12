class SlideModel {
  late String image;
  late String title;
  String? url;
  String? page;

  SlideModel({required this.image, required this.title, this.url, this.page});

  SlideModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    url = json['url'] ?? null;
    page = json['page'] ?? null;
  }

  static List<SlideModel> mocks() {
    return [
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'First Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Second Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Third Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Forth Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Fifth Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Sixth Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Seventh Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Eighth Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Ninth Slide',
        url: null,
        page: null,
      ),
      SlideModel(
        image: 'assets/images/slide.jpg',
        title: 'Tenth Slide',
        url: null,
        page: null,
      ),
    ];
  }
}

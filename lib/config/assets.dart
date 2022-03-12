class Assets {
  static String icon = 'assets/icon.png';

  static bool isLocal(String asset) {
    return !asset.startsWith('http|https|www');
  }

  static bool isSvg(String asset) {
    return asset.split('.').last == 'svg';
  }
}

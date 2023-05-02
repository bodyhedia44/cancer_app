class PageInfo {
  late String imageUrl;
  late String title;
  late String message;
  PageInfo(
      {required this.message, required this.imageUrl, required this.title});
}

class PageInfoData {
  final List<PageInfo> data = [
    PageInfo(
      title: 'Breast Cancer Detection',
      message: 'Using the best techniques to help doctors detect tumors.',
      imageUrl: 'assets/image/logo.png',
    ),
    PageInfo(
      title: 'Brest self-exam',
      message: 'Can be an important way to detect cancer early',
      imageUrl: 'assets/image/logo.png',
    ),
    PageInfo(
      title: 'WELCOME TO HOPE SYSTEM',
      message: "",
      imageUrl: 'assets/image/logo.png',
    ),
  ];
}

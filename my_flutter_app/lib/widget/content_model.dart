class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: '   Vô vàng lựa chọn\n Thỏa mãn cơn thèm ',
      image: "images/welcome.jpg",
      title: '  Lựa chọn các món ăn\nTuyệt vời của chúng tôi'),
  UnboardingContent(
      description:
          'Bạn có thể thanh toán bằng tiền mặt khi giao hàng \n hoặc thanh toán bằng thẻ',
      image: "images/purchase.png",
      title: 'Dễ dàng khi thanh toán trực tuyến'),
  UnboardingContent(
      description: 'Giao hàng \n tận giường',
      image: "images/pic_delivery.png",
      title: 'Giao hàng nhanh hơn cách NYC bạn trở mặt')
];

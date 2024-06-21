class OnBoardingModel {
  final String image;
  final String title;
  final String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });

  static List<OnBoardingModel> onboardingList = [
    OnBoardingModel(
        image: 'assets/images/onbording_1.png',
        title: 'Confidence in your words',
        body: 'With conversation-based learning you\'ll be talking from lesson one',
    ),
    OnBoardingModel(
        image: 'assets/images/onbording_2.png',
        title: 'Take your time to learn',
        body: 'Develop a habit of learning and make it a part  of your daily routine',
    ),
    OnBoardingModel(
        image: 'assets/images/onbording_3.png',
        title: 'The lessons you need to learn',
        body: 'Using a variety of learning styles learn and retain learn and retain',
    ),
  ];
}

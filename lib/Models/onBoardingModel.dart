class onBoardingModel {
  String image;
  String title;
  String desc;

  onBoardingModel(this.image, this.title, this.desc);
}

List<onBoardingModel> onBoardingList = [
  onBoardingModel("assets/images/reading.png", "First See Learning",
      "Forget about a for of paper all knowledge in one learning!"),
  onBoardingModel("assets/images/man.png", "Connect With Everyone",
      "Always keep in touch with your tutor & friend. Let's get connected!"),
  onBoardingModel("assets/images/boy.png", "Always Fascinated Learning",
      "Anywhere, Anytime. the time is at your discretion so study whenever you want."),
];

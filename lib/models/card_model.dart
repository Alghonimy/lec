class CardModel {
  String cardNumber;
  String cardContant;
  int cardBackground;
  String cardElementTop;
  String cardElementBottom;

  CardModel(
    this.cardNumber,
    this.cardContant,
    this.cardBackground,
    this.cardElementTop,
    this.cardElementBottom,
  );
}

var cardData = [
  {
    "cardNumber": "card1",
    "cardContant": "Flutter is an open-source UI\nframework developed by\nGoogle that allows developers\nto build applications for\nAndroid, iOS, web, and desktop\nusing a single codebase.\nIt has gained massive\npopularity due to its flexibility,\nhigh performance, and ease of\nuse.",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "assets/svg/ellipse_top_pink.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_pink.svg"
  },
  {
    "cardNumber": "card2",
    "cardContant": "One of Flutter’s key advantages\nis its use of Dart,a programming\nlanguage designed for fast\nexecution and smooth\ndevelopment.Unlike traditional\ncross-platform solutions, Flutter\ndoesn’t rely on web views;\ninstead, it uses Skia, a powerful\ngraphics engine, to render UI\ncomponents efficiently.",
    "cardBackground": 0xFFFF70A3,
    "cardElementTop": "assets/svg/ellipse_top_blue.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_blue.svg"
  },
  {
    "cardNumber": "card3",
    "cardContant": "A major highlight of Flutter\nis its Hot Reload feature, which\nenables developers to instantly\nsee changes without restarting\nthe entire app. This significantly\nspeeds up the development\nprocess and enhances productivity.\nAdditionally, Flutter provides\na rich set of customizable widgets,\nmaking it easy to create visually\nappealing and highly responsive\ninterfaces.",
    "cardBackground": 0xFF1E1E99,
    "cardElementTop": "assets/svg/ellipse_top_pink.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_pink.svg"
  },
  {
    "cardNumber": "card4",
    "cardContant": "Flutter supports both Material\nDesign (for Android) and\nCupertino (for iOS), ensuring\na native-like experience on\ndifferent platforms. It seamlessly\nintegrates with APIs, third-party\nlibraries, and backend\nservices like Firebase, making it\na versatile choice for modern app\ndevelopment.",
    "cardBackground": 0xFFFF70A3,
    "cardElementTop": "assets/svg/ellipse_top_blue.svg",
    "cardElementBottom": "assets/svg/ellipse_bottom_blue.svg"
  }
];

List<CardModel> cards = cardData.map(
  (item) => CardModel(
    item['cardNumber'] as String,
    item['cardContant'] as String,
    item['cardBackground'] as int,
    item['cardElementTop'] as String,
    item["cardElementBottom"] as String,
  ),
).toList();

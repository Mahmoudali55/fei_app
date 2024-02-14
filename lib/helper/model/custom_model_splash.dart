// ignore_for_file: public_member_api_docs, sort_constructors_first
class SplashModel {
  String image;
  String title;
  String subtitle;
  String titlebutton;
  Function onPress;
  SplashModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.titlebutton,
    required this.onPress,
  });
}

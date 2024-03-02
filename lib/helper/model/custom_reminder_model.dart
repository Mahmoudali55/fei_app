// ignore_for_file: public_member_api_docs, sort_constructors_first
class ReminderModel {
  String title;
  String subtitle;
  String image;
  Function()? onPress;
  ReminderModel({
    required this.title,
    required this.subtitle,
    required this.image,
    this.onPress,
  });
}

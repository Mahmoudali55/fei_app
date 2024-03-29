// ignore_for_file: public_member_api_docs, sort_constructors_first

class CustomCardModel {
  String image;
  String title;
  String subtitle;
  void Function()? onTap;
  double rate;
  CustomCardModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rate,
    this.onTap,
  });
}

class CustomCardModelpatient {
  String image;
  String title;
  String subtitle;
  String id;
  void Function()? onTap;
  void Function()? onTappatientprofile;

  CustomCardModelpatient({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.id,
    this.onTap,
    this.onTappatientprofile,
  });
}

class CustomCardModellab {
  String image;
  String title;
  String subtitle;
  String date;

  void Function()? onTap;

  CustomCardModellab({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.date,
    this.onTap,
  });
}

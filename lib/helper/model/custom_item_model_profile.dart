// ignore_for_file: public_member_api_docs, sort_constructors_first
class CustomItemProfileModel {
  String image;
  String name;
  String location;
  String price;
  String patientsNumbers;
  String experience;
  String rate;
  String about;

  CustomItemProfileModel({
    required this.image,
    required this.name,
    required this.location,
    required this.price,
    required this.patientsNumbers,
    required this.experience,
    required this.rate,
    required this.about,
  });

  get experienceNumber => null;
}

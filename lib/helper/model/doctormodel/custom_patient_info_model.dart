class CustomPatientInfoModel {
  String hospitalName;
  String patientName;
  String paymentStatus;
  String amount;
  List problem;

  CustomPatientInfoModel({
    required this.hospitalName,
    required this.patientName,
    required this.paymentStatus,
    required this.amount,
    required this.problem,
  });
}
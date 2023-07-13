// ignore_for_file: non_constant_identifier_names

class QuotationInstallmentModel {
  final String? MdrName;
  final String? MdrDueDate;
  final String? MdrPercentage;

  QuotationInstallmentModel({
    this.MdrName,
    this.MdrDueDate,
    this.MdrPercentage,
  });

  factory QuotationInstallmentModel.fromJson(Map<String, dynamic> json) {
    return QuotationInstallmentModel(
      MdrName: json['MdrName'] ?? "",
      MdrDueDate: json['MdrDueDate'] ?? "",
      MdrPercentage: json['MdrPercentage'] ?? "",
    );
  }
}
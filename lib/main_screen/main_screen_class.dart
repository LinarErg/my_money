// To parse this JSON data, do
//
//     final generalData = generalDataFromJson(jsonString);

import 'dart:convert';

GeneralData generalDataFromJson(String str) => GeneralData.fromJson(json.decode(str));

String generalDataToJson(GeneralData data) => json.encode(data.toJson());

class GeneralData {
  GeneralData({
    required this.amountOfIncome,
    required this.amountSpent,
    required this.basicIncome,
    required this.additionalIncome,
    required this.estimatedCosts,
    required this.amountOfInvestment,
    required this.differenceInIncomeExpenses,
  });

  double amountOfIncome;
  double amountSpent;
  double basicIncome;
  double additionalIncome;
  double estimatedCosts;
  double amountOfInvestment;
  double differenceInIncomeExpenses;

  factory GeneralData.fromJson(Map<String, dynamic> json) => GeneralData(
    amountOfIncome: json["AmountOfIncome"].toDouble(),
    amountSpent: json["AmountSpent"].toDouble(),
    basicIncome: json["BasicIncome"].toDouble(),
    additionalIncome: json["AdditionalIncome"].toDouble(),
    estimatedCosts: json["EstimatedCosts"].toDouble(),
    amountOfInvestment: json["AmountOfInvestment"].toDouble(),
    differenceInIncomeExpenses: json["DifferenceInIncomeExpenses"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "AmountOfIncome": amountOfIncome,
    "AmountSpent": amountSpent,
    "BasicIncome": basicIncome,
    "AdditionalIncome": additionalIncome,
    "EstimatedCosts": estimatedCosts,
    "AmountOfInvestment": amountOfInvestment,
    "DifferenceInIncomeExpenses": differenceInIncomeExpenses,
  };
}

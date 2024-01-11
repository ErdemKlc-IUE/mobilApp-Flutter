import 'package:flutter/foundation.dart';

import 'DatabaseHelper.dart';

class User{
  int? id;
  String? email;
  String? password;
  String? nameSurname;
  int? cardNumber;
  int? hourlySalary;
  String? dateOfWork;
  String? enterHour;
  String? exitHour;
  int? leaveDays;
  int? maxLeaveDays;
  int? workDays;

  User({
        this.id,
        this.email,
        this.password,
        this.nameSurname,
        this.cardNumber,
        this.hourlySalary,
        this.dateOfWork,
        this.enterHour,
        this.exitHour,
        this.leaveDays,
        this.maxLeaveDays,
        this.workDays
      });
  int? get getId => id;
  String? get getEmail => email;
  String? get getPassword => password;
  String? get getNameSurname => nameSurname;
  int? get getCardNumber => cardNumber;
  int? get getHourlySalary => hourlySalary;
  String? get getDateOfWork => dateOfWork;
  String? get getEnterHour => enterHour;
  String? get getExitHour => exitHour;
  int? get getLeaveDays => leaveDays;
  int? get getMaxLeaveDays => maxLeaveDays;
  int? get getWorkDays => workDays;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    email: json["email"],
    password: json["password"],
    nameSurname: json["name_surname"],
    cardNumber: json["card_number"],
    hourlySalary: json["hourly_salary"],
    dateOfWork: json["date_of_work"],
    enterHour: json["enter_hour"],
    exitHour: json["exit_hour"],
    leaveDays: json["leave_days"],
    maxLeaveDays: json["max_leave_days"],
    workDays: json["work_days"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "password": password,
    "name_surname": nameSurname,
    "card_number": cardNumber,
    "hourly_salary": hourlySalary,
    "date_of_work": dateOfWork,
    "enter_hour": enterHour,
    "exit_hour": exitHour,
    "leave_days": leaveDays,
    "max_leave_days": maxLeaveDays,
    "work_days": workDays,
  };
}
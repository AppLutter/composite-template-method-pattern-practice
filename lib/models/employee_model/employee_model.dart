import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/enum_absent_status.dart';
import '../../enums/enum_department.dart';
import '../../enums/enum_gender.dart';

part 'employee_model.freezed.dart';

part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const EmployeeModel._();

  const factory EmployeeModel({
    required String name,
    required int age,
    required EnumGender gender,
    required EnumDepartment department,
    required List<EmployeeModel> companies,
    required EnumAbsentStatus absentStatus,
  }) = _EmployeeModel;

  void printCompanyNames() {
    companies.forEach((e) => print(e.name));
  }

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);
}

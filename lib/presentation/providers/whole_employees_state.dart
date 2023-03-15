import 'package:composite_template_method_practice/enums/enum_gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/employee_model/employee_model.dart';

part 'whole_employees_state.freezed.dart';



@freezed
class WholeEmployeesState with _$WholeEmployeesState {
  const factory WholeEmployeesState({
    @Default([]) List<EmployeeModel> employees,
  }) = _WholeEmployeesState;

  factory WholeEmployeesState.initial() {
    return const WholeEmployeesState();
  }
}

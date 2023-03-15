import 'package:composite_template_method_practice/enums/enum_absent_status.dart';
import 'package:composite_template_method_practice/models/employee_model/employee_model.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class OrderingToEmployeeTemplate {
  final BuildContext context;
  final EmployeeModel employeeModel;
  final EnumAbsentStatus absentStatus;

  OrderingToEmployeeTemplate({
    required this.context,
    required this.employeeModel,
    required this.absentStatus,
  }) {
    orderToEmployee();
    refreshWholeEmployees();
    if (conditionHook()) {
      furtherAction();
    }
  }

  void orderToEmployee() {
    context.read<WholeEmployeesCubit>().giveAbsentStatus(
          employeeModel: employeeModel,
          absentStatus: absentStatus,
        );
  }

  void refreshWholeEmployees() {
    final cubit = context.read<WholeEmployeesCubit>();
    final companies = cubit.state.employees;

    cubit.setCompanies(companies);
  }

  bool conditionHook();

  void furtherAction();
}

import 'package:bloc/bloc.dart';
import 'package:composite_template_method_practice/datas/whole_employees.dart';
import 'package:composite_template_method_practice/enums/enum_absent_status.dart';
import 'package:composite_template_method_practice/models/employee_model/employee_model.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_state.dart';
import 'package:meta/meta.dart';

class WholeEmployeesCubit extends Cubit<WholeEmployeesState> {
  WholeEmployeesCubit() : super(WholeEmployeesState.initial());

  void setCompanies(List<EmployeeModel> employees) {
    List<EmployeeModel> wholeEmployeesFilledCompanies = [];
    for (final employee in employees) {
      final List<EmployeeModel> companies =
          employees.where((e) => e.department == employee.department && e.name != employee.name).toList();
      final employeesFilledCompanies = employee.copyWith(companies: companies);

      wholeEmployeesFilledCompanies.add(employeesFilledCompanies);
    }
    emit(state.copyWith(employees: wholeEmployeesFilledCompanies));
  }

  void giveAbsentStatus({
    required EmployeeModel employeeModel,
    required EnumAbsentStatus absentStatus,
  }) {
    final List<EmployeeModel> adjustedEmployees = state.employees.map((e) {
      if (e == employeeModel) {
        return e.copyWith(absentStatus: absentStatus);
      } else {
        return e;
      }
    }).toList();

    emit(state.copyWith(employees: adjustedEmployees));
  }

  void recallEmployeesInEducation(){
    final List<EmployeeModel> adjustedEmployees = state.employees.map((e) {
      if (e.absentStatus == EnumAbsentStatus.education) {
        return e.copyWith(absentStatus: EnumAbsentStatus.none);
      } else {
        return e;
      }
    }).toList();

    emit(state.copyWith(employees: adjustedEmployees));
  }
}

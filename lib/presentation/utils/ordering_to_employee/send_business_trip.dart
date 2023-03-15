import 'package:composite_template_method_practice/enums/enum_absent_status.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_cubit.dart';
import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/ordering_to_employee_template.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SendBusiness extends OrderingToEmployeeTemplate {
  SendBusiness({
    required super.context,
    required super.employeeModel,
     super.absentStatus = EnumAbsentStatus.businessTrip,
  });

  @override
  void furtherAction() {
    Fluttertoast.showToast(msg: '출장 인원이 많아 교육 인원들을 복귀 시킵니다.');
    final cubit = context.read<WholeEmployeesCubit>();
    cubit.recallEmployeesInEducation();
    cubit.setCompanies(cubit.state.employees);
  }

  @override
  bool conditionHook() {
    /// 출장 간 인원이 3명보다 많을 경우
    return context
            .read<WholeEmployeesCubit>()
            .state
            .employees
            .where((e) => e.absentStatus == EnumAbsentStatus.businessTrip)
            .length >
        3;
  }
}

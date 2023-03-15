import 'package:composite_template_method_practice/enums/enum_department.dart';
import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/ordering_to_employee_template.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../enums/enum_absent_status.dart';

class EndMission extends OrderingToEmployeeTemplate {
  EndMission({
    required super.context,
    required super.employeeModel,
    super.absentStatus = EnumAbsentStatus.none,
  });

  @override
  void furtherAction() {
    Fluttertoast.showToast(msg: '${employeeModel.department.ko} 부서 직원이 돌아왔습니다');
  }

  @override
  bool conditionHook() {
    return employeeModel.department == EnumDepartment.accounting;
  }
}

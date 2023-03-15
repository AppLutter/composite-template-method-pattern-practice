import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/ordering_to_employee_template.dart';

import '../../../enums/enum_absent_status.dart';

class SendEducation extends OrderingToEmployeeTemplate {
  SendEducation({
    required super.context,
    required super.employeeModel,
    super.absentStatus = EnumAbsentStatus.education,
  });

  @override
  void furtherAction() {}

  @override
  bool conditionHook() {
    return false;
  }
}

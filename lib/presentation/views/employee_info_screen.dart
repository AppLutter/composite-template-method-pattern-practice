import 'package:composite_template_method_practice/enums/enum_absent_status.dart';
import 'package:composite_template_method_practice/enums/enum_gender.dart';
import 'package:composite_template_method_practice/models/employee_model/employee_model.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_cubit.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_state.dart';
import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/end_mission.dart';
import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/ordering_to_employee_template.dart';
import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/send_business_trip.dart';
import 'package:composite_template_method_practice/presentation/utils/ordering_to_employee/send_education.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeInfoScreen extends StatelessWidget {
  const EmployeeInfoScreen({
    Key? key,
    required this.employeeModel,
  }) : super(key: key);
  final EmployeeModel employeeModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WholeEmployeesCubit, WholeEmployeesState>(
      builder: (context, state) {
        final employee = state.employees.firstWhere((e) => e.name == employeeModel.name);
        return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            foregroundColor: Colors.white,
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox.expand(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  employeeProfile(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        employee.department.ko,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      if (employee.absentStatus != EnumAbsentStatus.none)
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            '(${employee.absentStatus.ko})',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    employee.name,
                    style: const TextStyle(
                      fontSize: 50.0,
                    ),
                  ),
                  orderButton(
                    absentStatus: EnumAbsentStatus.businessTrip,
                    onPressed: () {
                      OrderingToEmployeeTemplate order = SendBusiness(
                        context: context,
                        employeeModel: employeeModel,
                      );
                    },
                  ),
                  orderButton(
                    absentStatus: EnumAbsentStatus.education,
                    onPressed: () {
                      OrderingToEmployeeTemplate order = SendEducation(
                        context: context,
                        employeeModel: employeeModel,
                      );
                    },
                  ),
                  orderButton(
                    absentStatus: EnumAbsentStatus.none,
                    onPressed: () {
                      OrderingToEmployeeTemplate order = EndMission(
                        context: context,
                        employeeModel: employeeModel,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget employeeProfile(BuildContext context) {
    final size = MediaQuery.of(context).size.width * 0.5;
    if (employeeModel.gender == EnumGender.male) {
      return Icon(Icons.person, size: size);
    } else {
      return Icon(Icons.person_3, size: size);
    }
  }

  Widget orderButton({
    required EnumAbsentStatus absentStatus,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextButton(
        onPressed: onPressed,
        child: Text('${absentStatus.ko} 조치하기'),
      ),
    );
  }
}

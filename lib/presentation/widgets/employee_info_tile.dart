import 'package:composite_template_method_practice/enums/enum_department.dart';
import 'package:composite_template_method_practice/models/employee_model/employee_model.dart';
import 'package:composite_template_method_practice/presentation/utils/naivagtor_utils.dart';
import 'package:flutter/material.dart';

import '../../enums/enum_absent_status.dart';

class EmployeeInfoTile extends StatelessWidget {
  const EmployeeInfoTile({
    Key? key,
    required this.employeeModel,
  }) : super(key: key);
  final EmployeeModel employeeModel;

  @override
  Widget build(BuildContext context) {
    final index = EnumDepartment.values.indexWhere((e) => e == employeeModel.department);
    return GestureDetector(
      onTap: () {
        NavigatorUtils.navigateInfoScreen(
          context: context,
          employeeModel: employeeModel,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 25.0,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.primaries[index + 6].withOpacity(0.3),
        ),
        child: Row(
          children: [
            if (employeeModel.absentStatus != EnumAbsentStatus.none)
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  '(${employeeModel.absentStatus.ko})',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  employeeModel.department.ko,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: employeeModel.name,
                        style: const TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ' (${employeeModel.gender.ko})',
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            ...List.generate(
              employeeModel.companies.length,
              (index) => companyNameWidget(
                context: context,
                company: employeeModel.companies[index],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget companyNameWidget({
    required BuildContext context,
    required EmployeeModel company,
  }) {
    return GestureDetector(
      onTap: () {
        NavigatorUtils.navigateInfoScreen(
          context: context,
          employeeModel: company,
        );
      },
      child: Row(
        children: [
          if (company.absentStatus != EnumAbsentStatus.none)
            Text(
              '(${company.absentStatus.ko})',
              style: const TextStyle(
                fontSize: 13.0,
                color: Colors.redAccent,
              ),
            ),
          Text('${company.name} '),
        ],
      ),
    );
  }
}

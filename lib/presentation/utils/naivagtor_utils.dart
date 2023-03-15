import 'dart:io';

import 'package:composite_template_method_practice/models/employee_model/employee_model.dart';
import 'package:composite_template_method_practice/presentation/views/employee_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorUtils {
  static void navigateInfoScreen({
    required BuildContext context,
    required EmployeeModel employeeModel,
  }) {
    late Route route;
    if (Platform.isIOS) {
      route = CupertinoPageRoute(
        builder: (_) => EmployeeInfoScreen(employeeModel: employeeModel),
      );
    } else {
      route = MaterialPageRoute(
        builder: (_) => EmployeeInfoScreen(employeeModel: employeeModel),
      );
    }

    Navigator.push(context, route);
  }
}

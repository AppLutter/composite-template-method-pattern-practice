import 'package:composite_template_method_practice/datas/whole_employees.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_cubit.dart';
import 'package:composite_template_method_practice/presentation/providers/whole_employees_state.dart';
import 'package:composite_template_method_practice/presentation/widgets/employee_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WholeEmployeeScreen extends StatefulWidget {
  const WholeEmployeeScreen({super.key});

  @override
  State<WholeEmployeeScreen> createState() => _WholeEmployeeScreenState();
}

class _WholeEmployeeScreenState extends State<WholeEmployeeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WholeEmployeesCubit>().setCompanies(wholeEmployees);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WholeEmployeesCubit, WholeEmployeesState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text('직원 명단'),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: state.employees.length,
                    (context, index) {
                      return EmployeeInfoTile(employeeModel: state.employees[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

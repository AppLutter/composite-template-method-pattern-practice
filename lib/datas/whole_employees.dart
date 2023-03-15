import 'package:composite_template_method_practice/enums/enum_absent_status.dart';
import 'package:composite_template_method_practice/enums/enum_department.dart';
import 'package:composite_template_method_practice/enums/enum_gender.dart';

import '../models/employee_model/employee_model.dart';

List<EmployeeModel> wholeEmployees = [
  const EmployeeModel(
    name: '홍길동',
    age: 34,
    gender: EnumGender.male,
    department: EnumDepartment.accounting,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '김민준',
    age: 24,
    gender: EnumGender.male,
    department: EnumDepartment.development,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '이예준',
    age: 41,
    gender: EnumGender.female,
    department: EnumDepartment.management,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '박시우',
    age: 44,
    gender: EnumGender.male,
    department: EnumDepartment.sales,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '손하윤',
    age: 27,
    gender: EnumGender.female,
    department: EnumDepartment.accounting,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '이희은',
    age: 28,
    gender: EnumGender.female,
    department: EnumDepartment.sales,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '박윤미',
    age: 29,
    gender: EnumGender.female,
    department: EnumDepartment.development,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '정일찬',
    age: 30,
    gender: EnumGender.male,
    department: EnumDepartment.accounting,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '서원민',
    age: 35,
    gender: EnumGender.female,
    department: EnumDepartment.development,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '이찬혁',
    age: 29,
    gender: EnumGender.male,
    department: EnumDepartment.development,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '박진우',
    age: 28,
    gender: EnumGender.female,
    department: EnumDepartment.sales,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
  const EmployeeModel(
    name: '가유준',
    age: 27,
    gender: EnumGender.male,
    department: EnumDepartment.accounting,
    absentStatus: EnumAbsentStatus.none,
    companies: [],
  ),
];

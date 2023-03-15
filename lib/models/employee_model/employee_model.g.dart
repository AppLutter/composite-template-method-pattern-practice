// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeModel _$$_EmployeeModelFromJson(Map<String, dynamic> json) =>
    _$_EmployeeModel(
      name: json['name'] as String,
      age: json['age'] as int,
      gender: $enumDecode(_$EnumGenderEnumMap, json['gender']),
      department: $enumDecode(_$EnumDepartmentEnumMap, json['department']),
      companies: (json['companies'] as List<dynamic>)
          .map((e) => EmployeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      absentStatus:
          $enumDecode(_$EnumAbsentStatusEnumMap, json['absentStatus']),
    );

Map<String, dynamic> _$$_EmployeeModelToJson(_$_EmployeeModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'gender': _$EnumGenderEnumMap[instance.gender]!,
      'department': _$EnumDepartmentEnumMap[instance.department]!,
      'companies': instance.companies,
      'absentStatus': _$EnumAbsentStatusEnumMap[instance.absentStatus]!,
    };

const _$EnumGenderEnumMap = {
  EnumGender.male: 'male',
  EnumGender.female: 'female',
};

const _$EnumDepartmentEnumMap = {
  EnumDepartment.sales: 'sales',
  EnumDepartment.accounting: 'accounting',
  EnumDepartment.management: 'management',
  EnumDepartment.development: 'development',
};

const _$EnumAbsentStatusEnumMap = {
  EnumAbsentStatus.none: 'none',
  EnumAbsentStatus.businessTrip: 'businessTrip',
  EnumAbsentStatus.education: 'education',
};

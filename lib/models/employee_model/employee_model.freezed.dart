// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  EnumGender get gender => throw _privateConstructorUsedError;
  EnumDepartment get department => throw _privateConstructorUsedError;
  List<EmployeeModel> get companies => throw _privateConstructorUsedError;
  EnumAbsentStatus get absentStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call(
      {String name,
      int age,
      EnumGender gender,
      EnumDepartment department,
      List<EmployeeModel> companies,
      EnumAbsentStatus absentStatus});
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? gender = null,
    Object? department = null,
    Object? companies = null,
    Object? absentStatus = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as EnumGender,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as EnumDepartment,
      companies: null == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      absentStatus: null == absentStatus
          ? _value.absentStatus
          : absentStatus // ignore: cast_nullable_to_non_nullable
              as EnumAbsentStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeModelCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$_EmployeeModelCopyWith(
          _$_EmployeeModel value, $Res Function(_$_EmployeeModel) then) =
      __$$_EmployeeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int age,
      EnumGender gender,
      EnumDepartment department,
      List<EmployeeModel> companies,
      EnumAbsentStatus absentStatus});
}

/// @nodoc
class __$$_EmployeeModelCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$_EmployeeModel>
    implements _$$_EmployeeModelCopyWith<$Res> {
  __$$_EmployeeModelCopyWithImpl(
      _$_EmployeeModel _value, $Res Function(_$_EmployeeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? gender = null,
    Object? department = null,
    Object? companies = null,
    Object? absentStatus = null,
  }) {
    return _then(_$_EmployeeModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as EnumGender,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as EnumDepartment,
      companies: null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      absentStatus: null == absentStatus
          ? _value.absentStatus
          : absentStatus // ignore: cast_nullable_to_non_nullable
              as EnumAbsentStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeModel extends _EmployeeModel {
  const _$_EmployeeModel(
      {required this.name,
      required this.age,
      required this.gender,
      required this.department,
      required final List<EmployeeModel> companies,
      required this.absentStatus})
      : _companies = companies,
        super._();

  factory _$_EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeModelFromJson(json);

  @override
  final String name;
  @override
  final int age;
  @override
  final EnumGender gender;
  @override
  final EnumDepartment department;
  final List<EmployeeModel> _companies;
  @override
  List<EmployeeModel> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  final EnumAbsentStatus absentStatus;

  @override
  String toString() {
    return 'EmployeeModel(name: $name, age: $age, gender: $gender, department: $department, companies: $companies, absentStatus: $absentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.department, department) ||
                other.department == department) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.absentStatus, absentStatus) ||
                other.absentStatus == absentStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age, gender, department,
      const DeepCollectionEquality().hash(_companies), absentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeModelCopyWith<_$_EmployeeModel> get copyWith =>
      __$$_EmployeeModelCopyWithImpl<_$_EmployeeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeModelToJson(
      this,
    );
  }
}

abstract class _EmployeeModel extends EmployeeModel {
  const factory _EmployeeModel(
      {required final String name,
      required final int age,
      required final EnumGender gender,
      required final EnumDepartment department,
      required final List<EmployeeModel> companies,
      required final EnumAbsentStatus absentStatus}) = _$_EmployeeModel;
  const _EmployeeModel._() : super._();

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeeModel.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  EnumGender get gender;
  @override
  EnumDepartment get department;
  @override
  List<EmployeeModel> get companies;
  @override
  EnumAbsentStatus get absentStatus;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeModelCopyWith<_$_EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

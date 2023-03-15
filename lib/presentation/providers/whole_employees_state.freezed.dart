// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'whole_employees_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WholeEmployeesState {
  List<EmployeeModel> get employees => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WholeEmployeesStateCopyWith<WholeEmployeesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WholeEmployeesStateCopyWith<$Res> {
  factory $WholeEmployeesStateCopyWith(
          WholeEmployeesState value, $Res Function(WholeEmployeesState) then) =
      _$WholeEmployeesStateCopyWithImpl<$Res, WholeEmployeesState>;
  @useResult
  $Res call({List<EmployeeModel> employees});
}

/// @nodoc
class _$WholeEmployeesStateCopyWithImpl<$Res, $Val extends WholeEmployeesState>
    implements $WholeEmployeesStateCopyWith<$Res> {
  _$WholeEmployeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WholeEmployeesStateCopyWith<$Res>
    implements $WholeEmployeesStateCopyWith<$Res> {
  factory _$$_WholeEmployeesStateCopyWith(_$_WholeEmployeesState value,
          $Res Function(_$_WholeEmployeesState) then) =
      __$$_WholeEmployeesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EmployeeModel> employees});
}

/// @nodoc
class __$$_WholeEmployeesStateCopyWithImpl<$Res>
    extends _$WholeEmployeesStateCopyWithImpl<$Res, _$_WholeEmployeesState>
    implements _$$_WholeEmployeesStateCopyWith<$Res> {
  __$$_WholeEmployeesStateCopyWithImpl(_$_WholeEmployeesState _value,
      $Res Function(_$_WholeEmployeesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$_WholeEmployeesState(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
    ));
  }
}

/// @nodoc

class _$_WholeEmployeesState implements _WholeEmployeesState {
  const _$_WholeEmployeesState({final List<EmployeeModel> employees = const []})
      : _employees = employees;

  final List<EmployeeModel> _employees;
  @override
  @JsonKey()
  List<EmployeeModel> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'WholeEmployeesState(employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WholeEmployeesState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WholeEmployeesStateCopyWith<_$_WholeEmployeesState> get copyWith =>
      __$$_WholeEmployeesStateCopyWithImpl<_$_WholeEmployeesState>(
          this, _$identity);
}

abstract class _WholeEmployeesState implements WholeEmployeesState {
  const factory _WholeEmployeesState({final List<EmployeeModel> employees}) =
      _$_WholeEmployeesState;

  @override
  List<EmployeeModel> get employees;
  @override
  @JsonKey(ignore: true)
  _$$_WholeEmployeesStateCopyWith<_$_WholeEmployeesState> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';

part 'person_model.g.dart';

abstract class PersonComponent {
  String get name;

  int get age;

  String selfIntroduction() {
    return 'My name is $name. I am $age years old.';
  }
}

@freezed
class PersonModel with _$PersonModel implements PersonComponent {
  const PersonModel._();
  const factory PersonModel({
    required String name,
    required int age,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) => _$PersonModelFromJson(json);

  @override
  String selfIntroduction() {
    return 'My name is $name. I am $age years old.';
  }
}

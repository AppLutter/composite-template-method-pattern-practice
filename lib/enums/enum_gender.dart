enum EnumGender {
  male(initial: 'M', ko: '남자'),
  female(initial: 'F', ko: '여자');

  final String initial;
  final String ko;

  const EnumGender({
    required this.initial,
    required this.ko,
  });
}

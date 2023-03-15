enum EnumDepartment {
  sales(ko: '영업'),
  accounting(ko: '영업'),
  management(ko: '영업'),
  development(ko: '개발');

  final String ko;

  const EnumDepartment({required this.ko});
}

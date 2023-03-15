enum EnumAbsentStatus {
  none(ko: '복귀'),
  businessTrip(ko: '출장'),
  education(ko: "교육");

  final String ko;

  const EnumAbsentStatus({required this.ko});
}

abstract class MerchantProcessState {}

final class MerchantProcessInitial extends MerchantProcessState {}

final class DaySelectionState extends MerchantProcessState {}

final class TimeSelectionState extends MerchantProcessState {}

final class TimeSelectionShowState extends MerchantProcessState {}

final class ResetTimeState extends MerchantProcessState {}

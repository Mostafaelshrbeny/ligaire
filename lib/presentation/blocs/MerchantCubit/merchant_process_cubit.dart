import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_state.dart';

class MerchantProcessCubit extends Cubit<MerchantProcessState> {
  MerchantProcessCubit() : super(MerchantProcessInitial());
  static MerchantProcessCubit get(context) => BlocProvider.of(context);
  DateTime today = DateTime.now();
  String timeGValue = "GValue";
  bool showTimeSelection = false;
  selectMeetingDay(DateTime selectedDay) {
    today = selectedDay;
    timeSelection(true);
    emit(DaySelectionState());
  }

  selectTimeForMeeting(String newValue) {
    timeGValue = newValue;
    emit(TimeSelectionState());
  }

  timeSelection(bool show) {
    showTimeSelection = show;
    emit(TimeSelectionShowState());
  }

  resetTime() {
    timeGValue = "GValue";
    emit(ResetTimeState());
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/IntroCubit/intro_state.dart';

class IntroCubit extends Cubit<IntroState> {
  IntroCubit() : super(IntroInitial());
  static IntroCubit get(context) => BlocProvider.of(context);
  int widgetIndex = 0;
  bool buttonShow = false;
}

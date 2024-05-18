import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/SetPasswordCubit/set_password_state.dart';

class SetPasswordCubit extends Cubit<SetPasswordState> {
  SetPasswordCubit() : super(SetPasswordInitial());
  static SetPasswordCubit get(context) => BlocProvider.of(context);
  bool hidden = true;
  IconData hideIcon = Icons.visibility;
  showPassword() {
    hidden = !hidden;
    hideIcon = hidden ? Icons.visibility : Icons.visibility_off;
    emit(ShowPasswordState());
  }
}

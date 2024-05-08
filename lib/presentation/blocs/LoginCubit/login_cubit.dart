import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/domain/use_cases/LocalAuth.dart';
import 'package:ligare/presentation/blocs/LoginCubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  applock<bool>() async {
    emit(FaceIDState());
    return await LocalAuth.authenticate();
  }
}

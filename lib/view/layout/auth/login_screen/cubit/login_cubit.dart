import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  bool isActive = false;
  bool isActivedSwitch = false;

  void changeActive() {
    isActive = !isActive;

    emit(LoginInitial());
  }

  void changeActivedSwitch() {
    isActivedSwitch = !isActivedSwitch;

    emit(LoginInitial());
  }
}

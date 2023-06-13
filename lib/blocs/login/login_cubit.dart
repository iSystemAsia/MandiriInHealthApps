import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/app_bloc.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/repository/repository.dart';
import 'package:mandiri_in_health/utils/utils.dart';

enum LoginState {
  init,
  loading,
  success,
  fail,
}

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.init);

  void onLogin({
    required String username,
    required String password,
  }) async {
    ///Notify
    emit(LoginState.loading);

    ///Set Device Token
    var token = await Utils.getDeviceToken();
    Application.device?.token = token;

    print("onLogin > token: $token");

    ///login via repository
    final result = await UserRepository.login(
      username: username,
      password: password,
    );

    print("onLogin > UserRepository.login > result: $result");

    if (result != null) {
      ///Begin start Auth flow
      await AppBloc.authenticateCubit.onSave(result);

      ///Notify
      emit(LoginState.success);
    } else {
      ///Notify
      emit(LoginState.fail);
    }
  }

  void onLogout() async {
    ///Begin start auth flow
    emit(LoginState.init);
    AppBloc.authenticateCubit.onClear();
  }

  void onDeactivate() async {
    final result = await UserRepository.deactivate();
    if (result) {
      AppBloc.authenticateCubit.onClear();
    }
  }
}

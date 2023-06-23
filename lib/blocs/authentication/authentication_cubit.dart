import 'package:bloc/bloc.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/user_model.dart';
import 'package:mandiri_in_health/repository/user_repository.dart';
import 'package:mandiri_in_health/utils/utils.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState.loading);

  Future<void> onCheck() async {
    print("AuthenticationCubit > onCheck");
    emit(AuthenticationState.loading);

    UserModel_? user = await AppBloc.userCubit.onLoadUser();
    print("AuthenticationCubit > onCheck > user: $user");
    if (user == null) {
      print("AuthenticationCubit > onCheck > user is null");
      return onClear();
    }

    print("AuthenticationCubit > onCheck > user expire: $user.expiresAt");
    if(user.expiresAt.isBefore(DateTime.now().toUtc())) {
      print("AuthenticationCubit > onCheck > user is expire");
      return onClear();
    }

    final result = await UserRepository.validateToken();
    print("AuthenticationCubit > onCheck > validateToken: $result");
    if(!result) {
      print("AuthenticationCubit > onCheck > token is invalid");
      return onClear();
    }

    Application.device?.token = await Utils.getDeviceToken();
    await AppBloc.userCubit.onSaveUser(user);
    emit(AuthenticationState.success);
  }

  Future<void> onSave(UserModel_ user) async {
    emit(AuthenticationState.loading);
    await AppBloc.userCubit.onSaveUser(user);
    emit(AuthenticationState.success);
  }

  void onClear() {
    emit(AuthenticationState.fail);
    AppBloc.userCubit.onDeleteUser();
  }
}

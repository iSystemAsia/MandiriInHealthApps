import 'dart:convert';

import 'package:mandiri_in_health/api/api.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/models/user_model.dart';

class UserRepository {
  ///Fetch api login
  static Future<UserModel_?> login({
    required String username,
    required String password,
  }) async {
    final Map<String, dynamic> params = {
      "username": username,
      "password": password,
    };
    final response = await Api.requestLogin(params);
    print("UserRepository > login > response: $response");

    if (response.success) {
      // return UserModel.fromJson(response.data);
      return response.user;
    }
    AppBloc.messageCubit.onShow(response.message);
    return null;
  }

  ///Fetch api validToken
  static Future<bool> validateToken() async {
    final response = await Api.requestValidateToken();
    if (response.success) {
      return true;
    }
    AppBloc.messageCubit.onShow(response.message);
    return false;
  }

  ///Fetch api deactivate
  static Future<bool> deactivate() async {
    final response = await Api.requestDeactivate();
    if (response.success) {
      return true;
    }
    return false;
  }

  ///Fetch api change Password
  static Future<bool> changePassword({
    required String password,
  }) async {
    final Map<String, dynamic> params = {"password": password};
    final response = await Api.requestChangePassword(params);
    AppBloc.messageCubit.onShow(response.message);
    if (response.success) {
      return true;
    }
    return false;
  }

  ///Fetch api forgot Password
  static Future<bool> forgotPassword({required String email}) async {
    final Map<String, dynamic> params = {"email": email};
    final response = await Api.requestForgotPassword(params);
    AppBloc.messageCubit.onShow(response.message);
    if (response.success) {
      return true;
    }
    return false;
  }

  ///Fetch api register account
  static Future<bool> register({
    required String username,
    required String password,
    required String email,
  }) async {
    final Map<String, dynamic> params = {
      "username": username,
      "password": password,
      "email": email,
    };
    final response = await Api.requestRegister(params);
    AppBloc.messageCubit.onShow(response.message);
    if (response.success) {
      return true;
    }
    return false;
  }

  ///Fetch api forgot Password
  static Future<bool> changeProfile({
    required String name,
    required String email,
    required String url,
    required String description,
    int? imageID,
  }) async {
    Map<String, dynamic> params = {
      "name": name,
      "email": email,
      "url": url,
      "description": description,
    };
    if (imageID != null) {
      params['listar_user_photo'] = imageID;
    }
    final response = await Api.requestChangeProfile(params);
    AppBloc.messageCubit.onShow(response.message);

    ///Case success
    if (response.success) {
      return true;
    }
    return false;
  }

  ///Save User
  static Future<bool> saveUser({required UserModel user}) async {
    return await Preferences.setString(
      Preferences.user,
      jsonEncode(user.toJson()),
    );
  }

  static Future<bool> saveUser_({required UserModel_ user}) async {
    return await Preferences.setString(
      Preferences.user,
      jsonEncode(user.toJson()),
    );
  }

  ///Load User
  static Future<UserModel_?> loadUser() async {
    final result = Preferences.getString(Preferences.user);
    if (result != null) {
      return UserModel_.fromJson(jsonDecode(result));
    }
    return null;
  }

  ///Fetch User
  static Future<UserModel_?> fetchUser() async {
    final response = await Api.requestUser();
    if (response.success) {
      return UserModel_.fromJson(response.data);
    }
    AppBloc.messageCubit.onShow(response.message);
    return null;
  }

  ///Delete User
  static Future<bool> deleteUser() async {
    return await Preferences.remove(Preferences.user);
  }
}

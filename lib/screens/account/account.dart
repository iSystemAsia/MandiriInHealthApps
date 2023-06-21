import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/user_model.dart';
import 'package:mandiri_in_health/screens/screen.dart';
import 'package:mandiri_in_health/utils/utils.dart';
import 'package:mandiri_in_health/widgets/widget.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() {
    return _AccountState();
  }
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  ///On logout
  void _onLogout() async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Apakah anda yakin?"),
          actions: <Widget>[
            AppButton(
              "Tidak",
              onPressed: () {
                Navigator.pop(context, false);
              },
              type: ButtonType.text,
            ),
            AppButton(
              "Ya",
              onPressed: () {
                Navigator.pop(context, true);
                // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const SignIn()), (Route<dynamic> route) => false);
                // Navigator.pushNamed(context, Routes.signIn);
              },
            ),
          ],
        );
      },
    );
    if (result == true) {
      print("Logout Yes...");
      AppBloc.loginCubit.onLogout();
    }
  }

  ///On navigation
  void _onNavigate(String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          Translate.of(context).translate('account'),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<UserCubit, UserModel_?>(
          builder: (context, user) {
            if (user == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).cardColor,
                    child: Column(
                      children: <Widget>[
                        AppListTitle(
                          title: Translate.of(context).translate(
                            'edit_profile',
                          ),
                          trailing: RotatedBox(
                            quarterTurns: AppLanguage.isRTL() ? 2 : 0,
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          onPressed: () {
                            _onNavigate(Routes.editProfile);
                          },
                        ),
                        AppListTitle(
                          title: "Logout",
                          trailing: RotatedBox(
                            quarterTurns: AppLanguage.isRTL() ? 2 : 0,
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          onPressed: () {
                            _onLogout();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

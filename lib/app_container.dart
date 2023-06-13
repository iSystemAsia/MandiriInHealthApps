import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mandiri_in_health/blocs/bloc.dart';
import 'package:mandiri_in_health/configs/config.dart';
import 'package:mandiri_in_health/models/model.dart';
import 'package:mandiri_in_health/screens/dashboard/discovery.dart';
import 'package:mandiri_in_health/screens/screen.dart';
import 'package:mandiri_in_health/utils/utils.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({Key? key}) : super(key: key);

  @override
  State<AppContainer> createState() {
    return _AppContainerState();
  }
}

class _AppContainerState extends State<AppContainer> {
  String _selected = Routes.home;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((message) {
      _notificationHandle(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _notificationHandle(message);
    });
  }

  ///Export index stack
  int _exportIndexed(String route) {
    switch (route) {
      case Routes.home:
        return 0;
      case Routes.dashboard:
        return 1;
      case Routes.account:
        return 2;
      default:
        return 0;
    }
  }

  ///Handle When Press Notification
  void _notificationHandle(RemoteMessage message) {
    final notification = NotificationModel.fromJson(message);
    if (notification.target != null) {
      Navigator.pushNamed(
        context,
        notification.target!,
        arguments: notification.item,
      );
    }
  }

  ///Force switch home when authentication state change
  void _listenAuthenticateChange(AuthenticationState authentication) async {
    if (authentication == AuthenticationState.fail) {
      final result = await Navigator.pushNamed(
        context,
        Routes.signIn,
        arguments: _selected,
      );
      if (result != null) {
        setState(() {
          _selected = result as String;
        });
      } else {
        setState(() {
          _selected = Routes.home;
        });
      }
    }
  }

  ///On change tab bottom menu and handle when not yet authenticate
  void _onItemTapped(String route) async {
    if (AppBloc.userCubit.state == null) {
      final result = await Navigator.pushNamed(
        context,
        Routes.signIn,
        arguments: route,
      );
      if (result == null) return;
    }
    setState(() {
      _selected = route;
    });
  }

  ///On handle submit post
  void _onSubmit() async {
    final getUser = Preferences.getString(Preferences.user);
    print("_onSubmit > AppBloc.userCubit.state: ${AppBloc.userCubit.state}");
    print("_onSubmit > getUser: $getUser");

    // if (AppBloc.userCubit.state == null) {
    if (getUser == null) {
      final result = await Navigator.pushNamed(
        context,
        Routes.signIn,
        arguments: Routes.submit,
      );
      if (result == null) return;
    }
    if (!mounted) return;
    Navigator.pushNamed(context, Routes.submit);
  }

  ///Build Item Menu
  Widget _buildMenuItem(String route) {
    Color? color;
    String title = 'home';
    IconData iconData = Icons.help_outline;
    switch (route) {
      case Routes.home:
        iconData = Icons.home_outlined;
        title = 'home';
        break;
      case Routes.dashboard:
        iconData = Icons.dashboard_customize_outlined;
        title = 'dashboard';
        break;
      case Routes.account:
        iconData = Icons.account_circle_outlined;
        title = 'account';
        break;
      default:
        iconData = Icons.home_outlined;
        title = 'home';
        break;
    }
    if (route == _selected) {
      color = Theme.of(context).colorScheme.primary;
    }
    return IconButton(
      onPressed: () {
        _onItemTapped(route);
      },
      padding: EdgeInsets.zero,
      icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: color,
          ),
          const SizedBox(height: 2),
          Text(
            Translate.of(context).translate(title),
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 10,
                  color: color,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }

  ///Build submit button
  Widget? _buildSubmit() {
    if (Application.setting.enableSubmit) {
      return FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: _onSubmit,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      );
    }
    return null;
  }

  ///Build bottom menu
  Widget _buildBottomMenu() {
    if (Application.setting.enableSubmit) {
      double heightAppBar = 56 + MediaQuery.of(context).padding.bottom;

      return BottomAppBar(
        height: heightAppBar,
        padding: const EdgeInsets.only(top: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildMenuItem(Routes.home),
            _buildMenuItem(Routes.dashboard),
            _buildMenuItem(Routes.account),
          ],
        ),
      );
    }
    return BottomAppBar(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildMenuItem(Routes.home),
          _buildMenuItem(Routes.dashboard),
          _buildMenuItem(Routes.account),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const submitPosition = FloatingActionButtonLocation.centerDocked;
    return Scaffold(
      body: BlocListener<AuthenticationCubit, AuthenticationState>(
        listener: (context, authentication) async {
          _listenAuthenticateChange(authentication);
        },
        child: IndexedStack(
          index: _exportIndexed(_selected),
          children: const <Widget>[Home(), Dashboard(), Account()],
        ),
      ),
      bottomNavigationBar: _buildBottomMenu(),
      floatingActionButton: _buildSubmit(),
      floatingActionButtonLocation: submitPosition,
    );
  }
}

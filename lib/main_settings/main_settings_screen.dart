import 'package:flutter/material.dart';

import '../bottom_navigation_bar.dart';

class MainSettingWidget extends StatefulWidget {
  const MainSettingWidget({Key? key}) : super(key: key);

  @override
  State<MainSettingWidget> createState() => _MainSettingWidgetState();
}

class _MainSettingWidgetState extends State<MainSettingWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Настройки'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: const [
              AuthorizationSettingWidget(),
              SaveSettingButtonWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarWidget(
          currentIndex: 1,
        ),
      ),
    );
  }
}

class SaveSettingButtonWidget extends StatelessWidget {
  const SaveSettingButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}

class AuthorizationSettingWidget extends StatefulWidget {
  const AuthorizationSettingWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthorizationSettingWidget> createState() =>
      _AuthorizationSettingWidgetState();
}

class _AuthorizationSettingWidgetState
    extends State<AuthorizationSettingWidget> {
  TextEditingController textEditControllerLogin = TextEditingController();
  TextEditingController textEditControllerPassword = TextEditingController();
  TextEditingController textEditControllerPath = TextEditingController();
  final textFieldDecoration = const InputDecoration(
    border: OutlineInputBorder(),
    contentPadding: EdgeInsets.symmetric(horizontal: 5),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Login',
        ),
        TextField(
          style: const TextStyle(fontWeight: FontWeight.w600),
          controller: textEditControllerLogin,
          decoration: textFieldDecoration,
          textAlign: TextAlign.center,
          readOnly: false,
        ),
        const Text(
          'Password',
        ),
        TextField(
          style: const TextStyle(fontWeight: FontWeight.w600),
          controller: textEditControllerPassword,
          decoration: textFieldDecoration,
          textAlign: TextAlign.center,
          readOnly: false,
        ),
        const Text(
          'Path ',
        ),
        TextField(
          style: const TextStyle(fontWeight: FontWeight.w600),
          controller: textEditControllerPath,
          decoration: textFieldDecoration,
          textAlign: TextAlign.center,
          readOnly: false,
        ),
      ],
    );
  }
}

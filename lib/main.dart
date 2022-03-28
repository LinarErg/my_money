import 'package:flutter/material.dart';
import 'package:my_money/main_settings/main_settings_screen.dart';

import 'main_screen/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/mainScreen',
      routes: {
        '/mainScreen': (context) => const MainScreenWidget(),
        '/mainSettings': (context) => const MainSettingWidget(),
      },

    );
  }
}

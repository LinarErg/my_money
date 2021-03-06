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
        body: Container(),
        bottomNavigationBar: BottomNavigationBarWidget(currentIndex: 1,),
      ),
    );
  }
}

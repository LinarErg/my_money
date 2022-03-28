
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          label: 'Главный',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Настройки',
          icon: Icon(Icons.settings_accessibility),
        ),
      ],
      onTap: (int index) {
        if (index == 0) {
          Navigator.pushNamed(context, '/');
        } else if (index == 1) {
          Navigator.pushNamed(context, '/mainSettings');
         }
      },
    );
  }
}
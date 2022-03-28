
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex
  }) : super(key: key);

  int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          label: 'Главный',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Настройки',
          icon: Icon(Icons.settings),
        ),
      ],
      onTap: (int index) {
        if (index == 0) {
          Navigator.pushReplacementNamed(context, '/mainScreen');
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, '/mainSettings');
         }
      },
    );
  }
}
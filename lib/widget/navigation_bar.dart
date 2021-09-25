import 'package:flutter/material.dart';
import 'package:lawan_covid19/styles/color.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: greyColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: blueColor,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          label: '.',
          icon: ImageIcon(AssetImage('assets/icons/covid19.png')),
        ),
        BottomNavigationBarItem(
          label: '.',
          icon: ImageIcon(AssetImage('assets/icons/cs.png')),
        ),
        BottomNavigationBarItem(
          label: '.',
          icon: ImageIcon(
            AssetImage('assets/icons/pusat_bantuan.png'),
          ),
        ),
      ],
    );
  }
}

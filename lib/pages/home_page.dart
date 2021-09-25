import 'package:flutter/material.dart';
import 'package:lawan_covid19/pages/glosari_page.dart';
import 'package:lawan_covid19/pages/kasus_page.dart';
import 'package:lawan_covid19/pages/pusatbantuan_page.dart';
import 'package:lawan_covid19/styles/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _listMenu = [
    const KasusPage(),
    const PusatBantuanPage(),
    const GlosariPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: greyColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: blueColor,
        iconSize: 30,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
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
              AssetImage('assets/icons/kenaliCovid.png'),
            ),
          ),
        ],
      ),
      body: _listMenu[_selectedIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:live_srm/pages/home_page.dart';
import 'package:live_srm/pages/menu_page.dart';
import 'package:live_srm/pages/register_page.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';



class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Home",
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
        ),
        const HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Mess Menu",
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          // Change the background color behind the title here
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
        ),
        const MenuPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Register",
          baseStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
          // Change the background color behind the title here
          selectedStyle: const TextStyle(color: Color.fromARGB(255, 190, 196, 230)),
        ),
        const RegisterPage(),
      ), // Add other screens if needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: const Color.fromARGB(255, 106, 119, 159),
      screens: _screens,
      initPositionSelected: 0,
    );
  }
}

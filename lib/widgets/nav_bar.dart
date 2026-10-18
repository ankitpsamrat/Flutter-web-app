import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_dashboard/utils/colors.dart';
import 'package:web_dashboard/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileNavBar(),
      desktop: (BuildContext context) => deskTopNavBar(),
    );
  }
}

Widget mobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [const Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget deskTopNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 40),
    height: 70,
    child: Row(
      children: [
        navLogo(),
        const Spacer(),
        navButton('Home'),
        navButton('Menu'),
        navButton('Track Your Orders'),
        navButton('About Us'),
        ElevatedButton(
          style: borderedButtonStyle,
          onPressed: () {},
          child: Text(
            'Login/Sign Up',
            style: TextStyle(color: AppColors.primary),
          ),
        ),
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(color: Colors.black, fontSize: 18),
      ),
    ),
  );
}

Widget navLogo() {
  return const Text(
    'Gopal Electronics',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
  );
}

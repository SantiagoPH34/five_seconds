import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottonNavigation extends StatelessWidget {
  const CustomBottonNavigation({super.key});

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).fullPath ?? '/';

    switch (location) {
      case "/home-apps":
        return 0;
      case "/tracking-list":
        return 1;
      default:
        return 0;
    }
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.push("/home-apps");
        break;
      case 1:
        context.push("/tracking-list");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      animationDuration: const Duration(seconds: 10),
      elevation: 0,
      selectedIndex: getCurrentIndex(context),
      onDestinationSelected: (index) => onItemTapped(context, index),
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.apps),
          label: 'Seguimiento',
        ),
      ],
    );
  }
}

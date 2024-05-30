import 'package:five_seconds/shared/widgets/widgets_barriel.dart';
import 'package:flutter/material.dart';

class HomeApps extends StatelessWidget {
  final Widget childView;
  const HomeApps({super.key, required this.childView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('App Tracker'),
          automaticallyImplyLeading: false,
        ),
        bottomNavigationBar: const CustomBottonNavigation(),
        body: childView);
  }
}

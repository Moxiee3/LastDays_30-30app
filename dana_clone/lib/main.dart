import 'package:dana_clone/module/main_navigation/view/main_navigation_view.dart';
import 'package:dana_clone/state_util.dart';
import 'package:dana_clone/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: getDefaultTheme(),
      debugShowCheckedModeBanner: false,
      home: const MainNavigationView(),
    );
  }
}

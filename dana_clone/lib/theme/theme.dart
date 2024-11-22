import 'package:dana_clone/const/theme_constants.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      onBackground: primaryColor,
      onPrimary: primaryColor,
      onPrimaryContainer: primaryColor,
      background: primaryColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white.withOpacity(0.7),
    ),
  );
}

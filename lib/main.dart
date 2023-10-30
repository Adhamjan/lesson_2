import 'package:flutter/material.dart';
import 'package:lesson_2/home/home_page/home_page.dart';
import 'package:lesson_2/home/peper_page/peper_page.dart';
import 'package:lesson_2/home/profile_page/profile_page.dart';
import 'package:lesson_2/home/setting_page/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        ),
        title: "Hello MyApp",
        initialRoute: HomePage.route,
        routes: {
          HomePage.route: (context) => const HomePage(),
          SettingsPage.route: (context) => const SettingsPage(),
          ProfilePage.route: (context) => const ProfilePage(),
          PeperPage.route: (context) => const PeperPage(),
        });
  }
}

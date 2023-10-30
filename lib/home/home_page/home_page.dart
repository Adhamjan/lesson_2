import 'package:flutter/material.dart';
import 'package:lesson_2/home/profile_page/profile_page.dart';
import 'package:lesson_2/home/setting_page/setting_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const route = "/home";
  final text = "Adhamjan_4377";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shadowColor: Colors.yellow,
        title: const Text("PHOTO"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "asset/atham.jpg",
            width: 500,
            height: 600,
          ),
        ],
      )),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end , children: [
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, SettingsPage.route , arguments: text);
          },
          child: const Column(
            children: [Icon(Icons.filter_none_sharp), Text("Albums")],
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, ProfilePage.route);
          },
          child: const Column(
            children: [
              Icon(Icons.filter),
              Text("Library"),
            ],
          ),
        )
      ]),
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text("New Album"),
            SizedBox(height: 10),
            Text("New Shared Folder"),
            SizedBox(height: 10),
            Text("New Shared Albums"),
          ],
        ),
      ),
    );
  }
}

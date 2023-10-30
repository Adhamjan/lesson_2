import 'package:flutter/material.dart';
import 'package:lesson_2/home/peper_page/peper_page.dart';

class ProfilePage extends StatelessWidget {
  static const route = "profile";
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shadowColor: Colors.yellow,
        title: const Text("Hello ProfilePage"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.folder, size: 200),
            Icon(
              Icons.folder,
              size: 200,
            ),
            Icon(Icons.folder, size: 200),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, PeperPage.route);
        },
        child: const Column(
          children: [
            Icon(Icons.search),
            Text("Search"),
          ],
        ),
      ),
    );
  }
}

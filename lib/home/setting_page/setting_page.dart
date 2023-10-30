import 'package:flutter/material.dart';
import 'package:lesson_2/home/profile_page/profile_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  static const route = "/Settings";
  @override
  Widget build(BuildContext context) {
    var argument = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shadowColor: Colors.yellow,
        title: Text("$argument"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/atham2.jpg",
              width: 250,
              height: 250,
            ),
            const Text("Favorites"),
            Image.asset(
              "asset/Atham3.jpg",
              width: 250,
              height: 250,
            ),
            const Text("Recents"),
            const Icon(
              Icons.hide_image_rounded,
              size: 100,
            ),
            const Text("Hidden")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, ProfilePage.route);
        },
        child: const Column(
          children: [
            Icon(Icons.filter),
            Text("Library"),
          ],
        ),
      ),
    );
  }
}

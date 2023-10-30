import 'package:flutter/material.dart';

class PeperPage extends StatelessWidget {
  static const route = "Peper";
  const PeperPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shadowColor: Colors.yellow,
        title: const Text("Search"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 50,
                )),
            const Text(
              "Photo , People...",
            ),
          ],
        ),
      ),
    );
  }
}

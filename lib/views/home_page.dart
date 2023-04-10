import 'package:auth/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Get.toNamed('/login');
              },
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: white,
        ),
        backgroundColor: Colors.transparent,
        titleTextStyle: const TextStyle(
          color: white,
          fontSize: 23,
        ),
        centerTitle: true,
        title: const Text(
          'Home Page',
        ),
      ),
    );
  }
}

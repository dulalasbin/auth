import 'package:auth/utils/colors.dart';
import 'package:auth/views/home_page.dart';
import 'package:auth/views/login_page.dart';
import 'package:auth/views/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth UI',
      initialRoute: '/login',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        useMaterial3: true,
        scaffoldBackgroundColor: scaffoldBackground,
      ),
      getPages: [
        GetPage(
          name: '/homepage',
          page: () => const HomePage(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: '/login',
          page: () => const UserLogin(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: '/register',
          page: () => const UserRegister(),
          transition: Transition.cupertino,
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ],
    );
  }
}

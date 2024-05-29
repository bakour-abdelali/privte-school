import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/screen/view/HomeTeacher/classpage.dart';
import 'package:managmentsh/screen/view/HomeTeacher/teacherHome.dart';
import 'package:managmentsh/screen/view/Login.dart';
import 'package:managmentsh/screen/view/Onboarding.dart';
import 'package:managmentsh/screen/view/homeStudent/Home.dart';
import 'package:managmentsh/screen/view/homeStudent/coursepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primarycolor),
        useMaterial3: true,
      ),
      home: const Onboarding(),
      routes: {
        "/onboarding": (context) => const Onboarding(),
        "/login": (context) => const Login(),
        "/homepage": (context) => const Homepage(),
        "/coursepage": (context) => const Coursepage(),
        // tcher acount
        "/teacherHome": (context) => const TeacherHome(),
        "/classpage": (context) => const Classepage(),
      },
    );
  }
}

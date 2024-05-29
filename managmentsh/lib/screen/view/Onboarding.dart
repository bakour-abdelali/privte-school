import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:managmentsh/Component/ScreenSize.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          return Column(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Image.asset(
                      "assets/images/school.png",
                      width: 300,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                height: 70,
                width: screenWidth < sm ? double.infinity : sm,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Appcolors.whithe),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("/login", (route) => false);
                  },
                  child: const Center(
                    child: Text(
                      "متابعة",
                      style: TextStyle(fontSize: 20, color: Appcolors.whithe),
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              )
            ],
          );
        },
      ),
    );
  }
}

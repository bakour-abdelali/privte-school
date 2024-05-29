import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';

class Teacherpage extends StatefulWidget {
  const Teacherpage({super.key});

  @override
  State<Teacherpage> createState() => _TeacherpageState();
}

class _TeacherpageState extends State<Teacherpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              margin: const EdgeInsets.only(right: 25),
              child: const Row(
                children: [
                  Text(
                    "اهلا !",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ايمن",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Appcolors.bluelight,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Image.asset(
                    "assets/images/school.png",
                    width: 100,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Text(
                    "اسم لمدرسة",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الاقسام",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/classpage");
              },
              child: Card(
                color: Colors.white70,
                margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'اولى ثانوي',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

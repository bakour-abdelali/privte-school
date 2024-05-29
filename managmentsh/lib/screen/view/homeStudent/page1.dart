import 'package:flutter/material.dart';
import 'package:managmentsh/Component/AppColors.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
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
              margin: EdgeInsets.only(right: 25),
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
                    "الدروس ",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("/coursepage");
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
                      'رياضيات',
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

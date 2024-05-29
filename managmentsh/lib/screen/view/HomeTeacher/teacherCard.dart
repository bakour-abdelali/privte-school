import 'package:flutter/material.dart';
import 'package:managmentsh/Component/ScreenSize.dart';
import 'package:managmentsh/screen/screensize/desktop/home/desktopcart.dart';
import 'package:managmentsh/screen/screensize/phone/home/phoneCard.dart';

class CardTeacher extends StatefulWidget {
  const CardTeacher({super.key});
  @override
  State<CardTeacher> createState() => _CardTeacherState();
}

class _CardTeacherState extends State<CardTeacher> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          final Widthscreen = constraints.maxWidth;
          final hightScreen = constraints.maxHeight;
          if (Widthscreen < sm) {
            return PhoneCArd();
          } else {
            return DesktpCard(
              Widthscreen: Widthscreen,
              hightScreen: hightScreen,
            );
          }
        }),
      ),
    );
  }
}

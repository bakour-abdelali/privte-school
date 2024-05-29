import 'package:flutter/material.dart';

class Classepage extends StatefulWidget {
  const Classepage({super.key});

  @override
  State<Classepage> createState() => _ClassepageState();
}

class _ClassepageState extends State<Classepage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسم القسم"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: Container(
          child: Column(
            children: [
              Card(
                color: Colors.white70,
                margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  title: Text(
                    'عنوان الدرس',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("cours&.pdp"),
                  trailing: Icon(
                    Icons.picture_as_pdf,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

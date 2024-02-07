import 'package:flutter/material.dart';
import 'package:ui_5_4/iconmap.dart';

void main() {
  runApp(const Ico());
}

class Ico extends StatefulWidget {
  const Ico({super.key});

  @override
  State<Ico> createState() => _IcoState();
}

class _IcoState extends State<Ico> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffeeeeee),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu, color: Colors.white),
          title: Text(
            'Map',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          elevation: 10,
          shadowColor: Color(0xffeeeeee),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              children: List.generate(
                  box.length,
                  (index) => list(
                      icon: box[index]['icons'], name: box[index]['text']))),
        ),
      ),
    );
  }
}

Widget list({String? name, IconData? icon}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    alignment: Alignment.centerLeft,
    height: 90,
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name!,
              style: TextStyle(
                fontSize: 25,
              )),
          Icon(
            icon!,
          )
        ],
      ),
    ),
  );
}

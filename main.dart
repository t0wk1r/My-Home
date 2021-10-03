// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This Is My Home',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFF02BB9F),
      ),
      home: MyHomePage(title: 'This Is My Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "This Is My Home",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipPath(
                child: Container(
                  width: 600,
                  height: 200,
                  color: Colors.red,
                ),
                clipper: TriangleClipper(),
              ),
            ),
            Container(
              width: 550,
              height: 300,
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 80,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.yellow,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//triangle shape create class
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

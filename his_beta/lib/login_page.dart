import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double widthCard = ((width * (1 / 3)) * 0.1);

    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              padding: EdgeInsets.all(widthCard),
              child: Image.network(
                  "https://png.pngtree.com/png-vector/20220616/ourlarge/pngtree-hospital-building-for-healthcare-cartoon-background-vector-illustration-with-png-image_5087226.png"),
            ),
          ),
          Expanded(
            child: Container(
              // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              padding: EdgeInsets.all(widthCard),
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F7F7),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "ลงชื่อเข้าใช้บัญชีของคุณ",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

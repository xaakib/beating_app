import 'package:beating_app/style/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double mediaQueryWigttScreen = MediaQuery.of(context).size.height;
    double mediaQueryHightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Beating App", style: textStyleBlackDefult),
      ),
      body: Container(
        color: Colors.white,
        height: mediaQueryHightScreen,
        width: mediaQueryWigttScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'data',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

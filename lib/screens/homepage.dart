import 'package:beating_app/components/image_slideing.dart';
import 'package:beating_app/screens/auth_screen.dart';
import 'package:beating_app/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        backgroundColor: themeColorsMain,
        title: Text("Beating App", style: TextStyle(color: Colors.white)),
        leadingWidth: 60,
        toolbarHeight: 40,
        elevation: 0,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 5),
          child: Container(
            height: 40,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(
                        "https://seeklogo.com/images/C/Cover-logo-23DD492C7C-seeklogo.com.gif")),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_balance_wallet_outlined)),
          IconButton(
              onPressed: () {
                Get.to(AuthScreen());
              },
              icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Container(
        color: themeColorsMain,
        height: mediaQueryHightScreen,
        width: mediaQueryWigttScreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlidingHome(),
          ],
        ),
      ),
    );
  }
}

import 'package:beating_app/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQuesryHeightScreen = MediaQuery.of(context).size.height;

    double mediaQuesryWidthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColorsMain,
        elevation: 0,
        title: Text("Login Screen"),
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: mediaQuesryHeightScreen,
          width: mediaQuesryWidthScreen,
          color: themeColorsMain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Text("Hey,\nLogin Now.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white)),
                sizeboxxx(140),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  width: mediaQuesryWidthScreen,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Mobile"),
                  ),
                ),
                sizeboxxx(20),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  width: mediaQuesryWidthScreen,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Password"),
                  ),
                ),
                sizeboxxx(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    sizeboxxx(1),
                    InkWell(
                      onTap: () {
                        Get.snackbar(
                          "Authentication",
                          "Your are now login",
                          colorText: Colors.white,
                          icon: Icon(Icons.person, color: Colors.white),
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("Login", style: textStyleBlackDefult),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

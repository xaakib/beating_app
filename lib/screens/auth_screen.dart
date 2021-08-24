import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:beating_app/components/image_slideing.dart';
import 'package:beating_app/screens/login_screen.dart';
import 'package:beating_app/screens/singup_screen.dart';
import 'package:beating_app/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQueryWigttScreen = MediaQuery.of(context).size.height;
    double mediaQueryHightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: mediaQueryHightScreen,
        width: mediaQueryWigttScreen,
        color: themeColorsMain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              Container(
                height: 80,
                width: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://seeklogo.com/images/C/Cover-logo-23DD492C7C-seeklogo.com.gif")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
              ),
              SizedBox(height: 80),
              Container(
                height: 150,
                width: mediaQueryWigttScreen,
                color: themeColorsMain,
                child: ImageSliding(),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                width: mediaQueryWigttScreen,
                decoration: BoxDecoration(color: Colors.transparent),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                  child: Center(
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        WavyAnimatedText('Welcome To',
                            textStyle: textStyleForSliding),
                        WavyAnimatedText('3psports',
                            textStyle: textStyleForSliding),
                      ],
                      isRepeatingAnimation: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(LoginScreen());
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
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    child: Text(
                      "OR",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SingUpScreen());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Sign Up", style: textStyleBlackDefult),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Text(
                "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
                style: textStyleWhiteDefult,
              )
            ],
          ),
        ),
      ),
    );
  }
}

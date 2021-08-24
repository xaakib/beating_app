import 'package:beating_app/components/image_slideing.dart';
import 'package:flutter/material.dart';

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
        color: Color(0xff2767ba),
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
                color: Color(0xff2767ba),
                child: ImageSliding(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:moviesapp/features/auth/widget/logincontanre.dart';


class nloginpage extends StatelessWidget {
  const nloginpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                SizedBox(
                  height: size.height,
                  child: Image.asset(
                    'assets/images/binary_magician_in_his_hand_laptop_and_have_black_hate_with_binary_background (1).png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
               const logincontaner(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}

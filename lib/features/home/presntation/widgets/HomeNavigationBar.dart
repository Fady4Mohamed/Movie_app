
import 'package:flutter/material.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28,left: 40,right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Image.asset('assets/images/m home icon.png'),
          GestureDetector(
            onTap: () {
              
            },
            child: Image.asset('assets/images/Play.png')),
          GestureDetector(
            onTap: () {
              
            },
            child: Image.asset('assets/images/m m icon.png')),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchNavigationBar extends StatelessWidget {
  const SearchNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset('assets/images/Home nonactive.png')),
          Image.asset('assets/images/play evctiv.png'),
          GestureDetector(
              onTap: () {}, child: Image.asset('assets/images/m m icon.png')),
        ],
      ),
    );
  }
}

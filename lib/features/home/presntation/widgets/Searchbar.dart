import 'package:flutter/material.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
            decoration: InputDecoration(
              hintText: '🔎  search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ),
        Spacer()
      ],
    );
  }
}

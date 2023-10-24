import 'package:flutter/material.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({super.key, this.onChanged});
final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: TextField(
            onChanged:onChanged ,
            decoration: InputDecoration(
              hintText: '🔎  search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}

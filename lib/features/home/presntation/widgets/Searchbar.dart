import 'package:flutter/material.dart';

class CustomeSearchBar extends StatelessWidget {
  const CustomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
      ),
    );
  }
}
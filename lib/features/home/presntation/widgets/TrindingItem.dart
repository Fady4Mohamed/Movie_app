
import 'package:flutter/material.dart';

class TrindingItem extends StatelessWidget {
  const TrindingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height:MediaQuery.of(context).size.height*.39 ,
    child: AspectRatio(
      aspectRatio:258/336,
      child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      image: DecorationImage(
        image: AssetImage('assets/images/movie 1.jpg'),
        fit: BoxFit.fill,
      )
    ),
      ),
    ),
      );
  }
}
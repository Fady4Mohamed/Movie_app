import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/style.dart';

class Kindecontainer
 extends StatelessWidget {
  const Kindecontainer
  ({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color:const Color.fromARGB(255, 169, 169, 169) ,width: 1),
        borderRadius: BorderRadius.circular(60),
        color:const Color.fromARGB(255, 34, 33, 33)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,style: Styles.textStyle16,),
      ),
    );
  }
}
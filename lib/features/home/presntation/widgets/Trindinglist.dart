
import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/TrindingItem.dart';

class TrindingList extends StatelessWidget {
  const TrindingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*.39 ,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TrindingItem(),
        ) ;
      },),
    );
  }
}
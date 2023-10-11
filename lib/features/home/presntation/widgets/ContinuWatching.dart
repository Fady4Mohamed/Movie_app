import 'package:flutter/material.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: SizedBox(
        width:MediaQuery.of(context).size.width*.9 ,
        child: AspectRatio(
          aspectRatio:327/191,
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
      ),
    );
  }
}

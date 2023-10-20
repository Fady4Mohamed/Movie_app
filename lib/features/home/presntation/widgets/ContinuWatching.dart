import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/app_routers.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({
    super.key, required this.contained,
  });
final Widget contained;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: SizedBox(
        width:MediaQuery.of(context).size.width*.9 ,
        child: AspectRatio(
          aspectRatio:327/191,
          
            child: contained
         
        ),
      ),
    );
  }
}

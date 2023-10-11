
import 'package:flutter/material.dart';
import 'package:moviesapp/features/home/presntation/widgets/ContinuWatching.dart';
import 'package:moviesapp/features/home/presntation/widgets/Trinding.dart';

class HomeViewBoody extends StatelessWidget {
  const HomeViewBoody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContinueWatching(),
        Trinding(),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:moviesapp/core/utils/style.dart';

class SearchTitel extends StatelessWidget {
  const SearchTitel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 24,
        bottom: 24,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .7,
        child: Text(
          'Find Movies, Tv series, and more..',
          style: Styles.textStyle28,
        ),
      ),
    );
  }
}

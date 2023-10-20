import 'package:flutter/material.dart';

import '../../../../core/utils/style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 24),
      child: Row(
        children: [
          Text(
            'Stream ',
            style: Styles.textStyle28.copyWith(color: const Color(0xffFF8F71)),
          ),
          const Text(
            'Everywhere',
            style: Styles.textStyle28,
          )
        ],
      ),
    );
  }
}

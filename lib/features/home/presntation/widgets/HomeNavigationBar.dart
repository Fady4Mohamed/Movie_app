
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moviesapp/core/utils/app_routers.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*.05,),
        Padding(
          padding: const EdgeInsets.only(top: 0,left: 40,right: 40),
          child: SizedBox(
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Image.asset('assets/images/m home icon.png'),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kSearchView);
                  },
                  child: Image.asset('assets/images/Play.png')),
                GestureDetector(
                  onTap: () {
                   
                  },
                  child: Image.asset('assets/images/m m icon.png')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

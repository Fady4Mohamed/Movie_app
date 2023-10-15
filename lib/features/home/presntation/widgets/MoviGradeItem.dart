import 'package:flutter/material.dart';

class MovieGradeItem extends StatelessWidget {
  const MovieGradeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: Container(
               width: MediaQuery.of(context).size.width * .39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage('assets/images/movie 1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('name'),
                Text(
                  '(2022)',
                  style: TextStyle(
                    color: Color.fromARGB(221, 79, 78, 78),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  const MovieImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height*.4,
          width:  MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset('assets/images/movie 1.jpg',
          height: MediaQuery.of(context).size.height*.4,
          width:  MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
          
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 40),
              child: Image.asset('assets/images/Path.png'),
            ),
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 251, 249, 249).withOpacity(.4),
              radius: 30,
            ),
          )
          ,
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 7),
              child: Image.asset('assets/images/playbutton.png'),
            ),),

            
        ],
      ),
    );
  }
}
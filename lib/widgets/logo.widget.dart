import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60,),
        Image.asset('assets/images/aog-white.png', height: 80,),
        SizedBox(height: 10),
        Text(
          'Alcool ou Gasolina',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Big Shouders Display",
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

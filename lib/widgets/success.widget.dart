import 'package:aog/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = '';
  Function() reset;
  Success({Key? key, required this.result, required this.reset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text(result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: 'Big Shouders Display',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          LoadingButton(
            text: 'CALCULAR NOVAMENTE',
            invert: true,
            busy: false,
            func: reset,
          ),
        ],
      ),
    );
  }
}

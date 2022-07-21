import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

   Input({Key? key, required this.label, required this.ctrl,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.center,
          child:
          Text(label, style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: 'Big Shouders Display',
          ),),
        ),
        SizedBox(width: 10,),
        Expanded(child:
        TextFormField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.white,
            fontSize: 45,
            fontFamily: 'Big Shouders Display',
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),),
      ],
    );
  }
}

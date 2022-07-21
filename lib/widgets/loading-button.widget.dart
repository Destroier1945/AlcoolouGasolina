import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function() func;
  var text = '';


  LoadingButton({Key? key,
    required this.text,
    required this.invert,
    required this.busy,
    required this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      busy ? Container(
        alignment: Alignment.center,
        height: 50,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
        ),
      )
      : Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.all(60),
      decoration: BoxDecoration(
        color: invert
            ? Theme.of(context).primaryColor
            : Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(60),
      ),
      child:
      TextButton(
        onPressed: func,
        child: Text(text,
          style: TextStyle(
            color: invert
                ? Colors.white
                :Theme.of(context).primaryColor,
            fontSize: 25,
            fontFamily: 'Big Shouders Display',
          ),),
      ),
    );
  }
}

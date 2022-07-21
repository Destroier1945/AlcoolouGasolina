import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function() sumitFunc;
  SubmitForm({Key? key,
    required this.alcCtrl,
    required this.gasCtrl,
    required this.busy,
    required this.sumitFunc,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            ctrl: gasCtrl,
            label: 'Gasolina',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            ctrl: alcCtrl,
            label: 'Alcool',
          ),
        ),
        LoadingButton(
          text: 'Calcular',
          busy: busy,
          func: sumitFunc,
          invert: false,
        ),

      ],
    );
  }
}

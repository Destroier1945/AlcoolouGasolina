import 'package:aog/widgets/input.widget.dart';
import 'package:aog/widgets/loading-button.widget.dart';
import 'package:aog/widgets/logo.widget.dart';
import 'package:aog/widgets/submit-form.widget.dart';
import 'package:aog/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alcool ou Gasolina',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomePage(title: 'Alcool ou Gasolina'),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title, }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          SubmitForm(
              alcCtrl: _alcCtrl,
              gasCtrl: _gasCtrl,
              busy: false,
              sumitFunc: (){}),
        ],
      ),
    );
  }
}

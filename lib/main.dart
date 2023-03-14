import 'package:denemeler/pages/hidden_darawer.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HiddenDrawer(
      ),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

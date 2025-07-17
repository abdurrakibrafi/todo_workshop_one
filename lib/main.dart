import 'package:flutter/material.dart';
import 'package:todo_workshop_one/view/auth_view/sign_up_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: SignUpView());
  }
}

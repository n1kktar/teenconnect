import 'package:flutter/material.dart';

import 'pages/register/register_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.light()
            .copyWith(primary: const Color.fromRGBO(2, 128, 144, 1)),
      ),
      home: RegisterPage(),
    );
  }
}

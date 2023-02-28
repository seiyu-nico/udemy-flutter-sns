// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:udemy_flutter_sns/view/time_line/time_line_page.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const TimeLinePage(),
    );
  }
}

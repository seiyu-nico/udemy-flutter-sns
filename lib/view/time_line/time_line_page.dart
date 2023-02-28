// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:udemy_flutter_sns/model/account.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({super.key});

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  Account myAccount = Account(
    id: '1',
    name: 'Flutterラボ',
    selfIntroduction: 'こんばんは',
    userId: 'flutter_labo',
    imagePath: 'https://img.seiyu-nico.jp/icon/icon_circle.png',
    createdTime: DateTime.now(),
    updatedTime: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('タイムライン'),
      ),
    );
  }
}

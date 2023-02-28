// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:udemy_flutter_sns/model/account.dart';
import 'package:udemy_flutter_sns/model/post.dart';
import 'package:udemy_flutter_sns/view/time_line/post_page.dart';

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

  List<Post> postList = [
    Post(
      id: '1',
      content: 'はじめまして',
      postAccountId: '1',
      createdTime: DateTime.now(),
    ),
    Post(
      id: '2',
      content: 'はじめまして2',
      postAccountId: '1',
      createdTime: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'タイムライン',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: index == 0
                  ? const Border(
                      top: BorderSide(
                        color: Colors.grey,
                        width: 0,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0,
                      ),
                    )
                  : const Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0,
                      ),
                    ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  foregroundImage: NetworkImage(myAccount.imagePath),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                myAccount.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '@${myAccount.userId}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Text(DateFormat('M/d/yy')
                              .format(postList[index].createdTime!)),
                        ],
                      ),
                      Text(
                        postList[index].content,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        itemCount: postList.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PostPage(),
            ),
          );
        },
        child: const Icon(Icons.chat_bubble_outline),
      ),
    );
  }
}

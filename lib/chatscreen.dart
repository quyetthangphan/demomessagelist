import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Text(
            'DEMO CHAT FIREBASE',
          )),
          body: Column(
            children: [
              Expanded(
                child: DemoMessageList(),
              ),
              _ActionBar(),
            ],
          )),
    );
  }
}

// Phần gửi tin nhắn trong body
class DemoMessageList extends StatelessWidget {
  const DemoMessageList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(14),
                    ),
// Bá gán dùm lại cái size nhá hehe ^^
                    height: 70,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
// Sau khi gõ tin nhắn và gửi thì được phần này
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('0382292563', style: TextStyle(fontSize: 12)),
                          Text('Hello World'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.people)
                ],
              ),
            )
          ],
        );
      },
    );
  }
}

/// Phần viết tin nhắn
class _ActionBar extends StatelessWidget {
  const _ActionBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 1)),
        child: Row(
// Phần điền thông tin muốn gửi tin nhắn đi
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Type something....',
                  border: InputBorder.none,
                )),
              ),
            ),
// Icon để send tin nhắn
            Padding(
              padding: EdgeInsets.only(right: 14),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.send_rounded),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

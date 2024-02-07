// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class Messages extends StatefulWidget {
  const Messages({
    super.key,
  });

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    List<types.Message> messages = [];
    const user = types.User(
      id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
    );
    void addMessage(types.Message message) {
      setState(() {
        messages.insert(0, message);
      });
    }

    void handleSendPressed(types.PartialText message) {
      final textMessage = types.TextMessage(
        author: user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: 'id',
        text: message.text,
      );

      addMessage(textMessage);
    }

    return Scaffold(
      body: Chat(
          messages: messages, onSendPressed: handleSendPressed, user: user),
    );
  }
}

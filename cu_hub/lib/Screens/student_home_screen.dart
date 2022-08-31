import 'dart:ui';

import 'package:cu_hub/Models/message_model.dart';
import 'package:cu_hub/Widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentHomeScreen extends StatefulWidget {
  const StudentHomeScreen({Key? key}) : super(key: key);

  @override
  State<StudentHomeScreen> createState() => _StudentHomeScreenState();
}

class _StudentHomeScreenState extends State<StudentHomeScreen> {
  List<MessageModel> messages = [
    sampleMessage1,
    sampleMessage2,
    sampleMessage1,
    sampleMessage3,
    sampleMessage1,
    sampleMessage2,
    sampleMessage3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Color.fromARGB(255, 42, 41, 53),
      ),
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dark_bg2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          // BackdropFilter(
          //   filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          /*child:*/ ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: messages.length,
            itemBuilder: (BuildContext buildContext, int index) {
              return MessageWidget(
                message: messages[index],
              );
            },
          ),
          // )
        ],
      ),
    );
  }
}

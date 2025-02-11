import 'package:flutter/material.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';

class EightPage extends StatefulWidget {
  const EightPage({super.key});

  @override
  State<EightPage> createState() => _EightPageState();
}

class _EightPageState extends State<EightPage> {
  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
      questionNo: 8,
      question: "How would you rate your seep quality?",
      onPressed: () {},
      customWidget: Row(
        children: [
          Column(
            children: [Text("Excecllent")],
          ),
          Slider(
              value: 0,
              onChanged: (val) {
                setState(() {});
              }),
          Column(
            children: [Icon(Icons.emoji_emotions_outlined)],
          )
        ],
      ),
    );
  }
}

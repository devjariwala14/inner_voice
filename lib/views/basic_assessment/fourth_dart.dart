import 'package:flutter/material.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';

class FourthDart extends StatefulWidget {
  const FourthDart({super.key});

  @override
  State<FourthDart> createState() => _FourthDartState();
}

class _FourthDartState extends State<FourthDart> {
  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
      customWidget: SizedBox(),
      question: "What's Your Weight?",
      questionNo: 4,
    );
  }
}

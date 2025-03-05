import 'package:flutter/material.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';

class TwelvePage extends StatefulWidget {
  const TwelvePage({super.key});

  @override
  State<TwelvePage> createState() => _TwelvePageState();
}

class _TwelvePageState extends State<TwelvePage> {
  int stressLevel = 1;

  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
        question: "How would you rate your stress level?",
        questionNo: 12,
        onPressed: () {
          print("$stressLevel");
        },
        customWidget: Column(children: [
          Text("$stressLevel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 180)),
          Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(5, (index) {
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            stressLevel = index + 1;
                          });
                        },
                        child: CircleAvatar(
                            backgroundColor: stressLevel == index + 1
                                ? AppColors.mainColor
                                : Colors.transparent,
                            radius: 30,
                            child: Text("${index + 1}",
                                style: TextStyle(
                                    color: stressLevel == index + 1
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 24))));
                  }))),
          SizedBox(height: 20)
        ]));
  }
}

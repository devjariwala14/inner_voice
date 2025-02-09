/*import 'package:flutter/material.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';
import 'package:inner_voice/views/basic_assessment/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  String selectedOption = "I want to overcome Depression";

  */ /*final List<Map<String, dynamic>> options = [
    {"icon": Icons.favorite, "text": "I want to reduce Stress"},
    {"icon": Icons.emoji_objects, "text": "I want to overcome Depression"},
    {"icon": Icons.flag, "text": "I want to cope with Trauma"},
    {"icon": Icons.emoji_emotions, "text": "I want to be a better person"},
    {"icon": Icons.nightlight_round, "text": "I want to reduce Anxiety"},
  ];*/ /*
  final List<Map<String, dynamic>> options = [
    {"icon": Icons.self_improvement, "text": "I want to reduce Stress"},
    {"icon": Icons.mood_bad, "text": "I want to overcome Depression"},
    {"icon": Icons.healing, "text": "I want to cope with Trauma"},
    {"icon": Icons.emoji_people, "text": "I want to be a better person"},
    {"icon": Icons.psychology, "text": "I want to reduce Anxiety"},
  ];

  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
      question: 'What’s your health goal?',
      questionNo: 1,
      submitOnBottom: true,
      onPressed: () {
        //   SecondPage
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SecondPage()));
      },
      customWidget: StatefulBuilder(
          builder: (context, setState) => ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: options.map((option) {
                  bool isSelected = selectedOption == option["text"];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedOption = option["text"];
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.mainColor
                              : AppColors.textLightColor,
                          borderRadius: BorderRadius.circular(25),
                          */ /*border: Border.all(
                            color: isSelected
                                ? Color(0xffdee0cc)
                                : Colors.transparent,
                            width: 2,
                          ),*/ /*
                          boxShadow: [
                            BoxShadow(
                              color: isSelected
                                  ? Color(0xffdee0cc)
                                  : AppColors.mainColor,
                              blurRadius: 5,
                              offset: Offset(2, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(option["icon"],
                                color: isSelected
                                    ? AppColors.textLightColor
                                    : AppColors.mainColor),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                option["text"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected
                                      ? AppColors.textLightColor
                                      : AppColors.mainColor,
                                ),
                              ),
                            ),
                            Icon(
                              isSelected
                                  ? Icons.radio_button_checked
                                  : Icons.radio_button_unchecked,
                              color: isSelected
                                  ? AppColors.textLightColor
                                  : AppColors.mainColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';
import 'package:inner_voice/views/basic_assessment/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  FirstPageState createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  String healthGoal = "I want to reduce Stress";

  final List<Map<String, dynamic>> options = [
    {"icon": Icons.self_improvement, "text": "I want to reduce Stress"},
    {"icon": Icons.mood_bad, "text": "I want to overcome Depression"},
    {"icon": Icons.healing, "text": "I want to cope with Trauma"},
    {"icon": Icons.emoji_people, "text": "I want to be a better person"},
    {"icon": Icons.psychology, "text": "I want to reduce Anxiety"},
  ];

  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
      question: 'What’s your health goal?',
      questionNo: 1,
      onPressed: () {
        print(healthGoal);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SecondPage()));
      },
      customWidget: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: options.map((option) {
          bool isSelected = healthGoal == option["text"];
          return Card(
            color: isSelected ? AppColors.mainColor : AppColors.textLightColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            elevation: isSelected ? 6 : 2,
            shadowColor: isSelected ? Colors.black26 : Colors.grey[200],
            child: RadioListTile<String>(
              value: option["text"],
              groupValue: healthGoal,
              onChanged: (value) {
                setState(() {
                  healthGoal = value!;
                });
              },
              title: Row(
                children: [
                  Icon(
                    option["icon"],
                    color: isSelected
                        ? AppColors.textLightColor
                        : AppColors.mainColor,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      option["text"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: isSelected
                            ? AppColors.textLightColor
                            : AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              // Moves radio button to the right
              activeColor: AppColors.textLightColor,
            ),
          );
        }).toList(),
      ),
    );
  }
}

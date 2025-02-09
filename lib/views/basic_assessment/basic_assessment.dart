/*
  final List<Map<String, dynamic>> goals = [
    {"icon": Icons.self_improvement, "text": "I want to reduce Stress"},
    {"icon": Icons.mood_bad, "text": "I want to overcome Depression"},
    {"icon": Icons.healing, "text": "I want to cope with Trauma"},
    {"icon": Icons.emoji_people, "text": "I want to be a better person"},
    {"icon": Icons.psychology, "text": "I want to reduce Anxiety"},
  ];
*/
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/constants/app_images.dart';
import 'package:inner_voice/widgets/common_submit_button.dart';

class BasicAssessment extends StatelessWidget {
  final Widget customWidget;
  final String question;
  final int questionNo;
  final void Function()? onPressed;
  final bool submitOnBottom;

  const BasicAssessment(
      {super.key,
      required this.customWidget,
      required this.question,
      required this.questionNo,
      this.onPressed,
      required this.submitOnBottom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    _appBar(context),
                    SizedBox(height: 20),
                    Text(
                      question,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    customWidget,
                    (submitOnBottom)
                        ? SizedBox()
                        : CommonSubmitButton(
                            buttonText: "Next",
                            suffixIcon: SvgPicture.asset(
                              AppImages.rightArrow,
                              height: 24,
                              width: 24,
                            ),
                            onPressed: onPressed ?? () {},
                          ),
                  ]),
            )),
        bottomNavigationBar: (submitOnBottom)
            ? CommonSubmitButton(
                buttonText: "Next",
                suffixIcon: SvgPicture.asset(
                  AppImages.rightArrow,
                  height: 24,
                  width: 24,
                ),
                onPressed: onPressed ?? () {},
              )
            : SizedBox());
  }

  Row _appBar(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 29,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                AppImages.backArrow,
                height: 24,
                width: 24,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Basic Assessment",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(32)),
          child: Text(
            "$questionNo of 14",
            style: TextStyle(color: AppColors.textLightColor),
          ),
        )
      ],
    );
  }
}

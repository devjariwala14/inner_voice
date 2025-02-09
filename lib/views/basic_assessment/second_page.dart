import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/constants/app_images.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BasicAssessment(
      customWidget: Column(
        children: [
          Card(
            color: AppColors.background,
            child: Container(
              height: size.height / 4,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Column(
                    children: [Text("I am Male"), Icon(Icons.male)],
                  ),
                  SvgPicture.asset(AppImages.male),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Card(
            child: Container(
              height: 100,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I am female"),
                      Spacer(),
                      Icon(Icons.female)
                    ],
                  ),
                  FlutterLogo(size: 100)
                ],
              ),
            ),
          ),
        ],
      ),
      question: "What's your Gender?",
      questionNo: 2,
      submitOnBottom: true,
    );
  }
}

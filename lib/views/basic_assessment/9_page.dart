import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/constants/app_images.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';

class NinePage extends StatefulWidget {
  const NinePage({super.key});

  @override
  State<NinePage> createState() => _NinePageState();
}

class _NinePageState extends State<NinePage> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BasicAssessment(
      question: "Are you taking any medications?",
      questionNo: 9,
      onPressed: () {
        // Navigator.of(context)
        //     .push(MaterialPageRoute(builder: (context) => EightPage()));
      },
      customWidget: Wrap(
        children: [
          commonContainer(
              size: size,
              icon: AppImages.prescribed,
              text: "Prescribed medicines",
              value: "prescribed"),
          commonContainer(
              size: size,
              icon: AppImages.overTheCounter,
              text: "Over the Counter Supplements",
              value: "limited Period"),
          commonContainer(
              size: size,
              icon: AppImages.pill,
              text: "I'm not taking any",
              value: "No"),
        ],
      ),
    );
  }

  GestureDetector commonContainer(
      {required Size size,
      required icon,
      required String text,
      required value}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(
          height: size.width / 2.5,
          width: size.width / 2.5,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : AppColors.mainColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                icon,
                color: isSelected ? AppColors.mainColor : Colors.white,
              ),
              Text(
                text,
                style: TextStyle(
                    color: isSelected ? AppColors.mainColor : Colors.white),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}

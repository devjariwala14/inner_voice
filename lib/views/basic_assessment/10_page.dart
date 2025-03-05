import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inner_voice/constants/app_images.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';

class TenPage extends StatefulWidget {
  const TenPage({super.key});

  @override
  State<TenPage> createState() => _TenPageState();
}

class _TenPageState extends State<TenPage> {
  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
      question: "How would you describe yourself?",
      questionNo: 9,
      onPressed: () {},
      customWidget: Column(
        children: [
          SvgPicture.asset(AppImages.heartWithHands)],
      ),
    );
  }
}

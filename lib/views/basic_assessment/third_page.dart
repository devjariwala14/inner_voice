import 'package:flutter/material.dart';
import 'package:inner_voice/constants/app_colors.dart';
import 'package:inner_voice/views/basic_assessment/basic_assessment.dart';
import 'package:inner_voice/views/basic_assessment/fourth_dart.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  int selectedAge = 18; // Default age selection

  @override
  Widget build(BuildContext context) {
    return BasicAssessment(
      question: "What's Your Age?",
      questionNo: 3,
      isSubmit: true,
      onPressed: () {
        print(selectedAge);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FourthDart()));
      },
      customWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Selected Age: $selectedAge",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 400,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 60,
              // squeeze: 1,
              overAndUnderCenterOpacity: 0.75,
              physics: const FixedExtentScrollPhysics(),
              useMagnifier: true,
              magnification: 1.5,
              onSelectedItemChanged: (value) {
                setState(() {
                  selectedAge = value;
                });
              },
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 100,
                builder: (context, index) {
                  bool isSelected = index == selectedAge;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:
                          isSelected ? AppColors.mainColor : Colors.transparent,
                    ),
                    child: Text(
                      "$index",
                      style: TextStyle(
                        // fontSize: isSelected ? 30 : 24,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

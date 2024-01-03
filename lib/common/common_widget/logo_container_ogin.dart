
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';

class LoginWidgetContainer extends StatelessWidget {
  final String imgpath;
  final String loginString;
  const LoginWidgetContainer({
    super.key,
    required this.imgpath,
    required this.loginString,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: TColor.offwhite, // Set the border color
            width: 1.0, // Set the border width
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        height: 57,
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(imgpath),
          ),
          Expanded(
              child: Center(
            child: Text(
              loginString,
              style: safeGoogleFont(
                'Poppins',
                height: 1.5,
                fontSize: 14,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w700,
                color: TColor.textsemiappear,
              ),
            ),
          )),
          const Gap(20)
        ]),
      ),
    );
  }
}

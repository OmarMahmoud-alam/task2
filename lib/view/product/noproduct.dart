import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset('assets/images/notfound.png'),
          const Gap(20),
          Text(
            'No Result Found ',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 16,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
              color: TColor.black,
            ),
          ),
          const Gap(40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 57,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: TColor.secondarybutton,
              ),
              child: Text("Send Review",
                  style: TextStyle(
                    fontSize: 18,
                    color: TColor.white,
                    fontWeight: FontWeight.w700,
                  )),
              onPressed: () {
                //Get.to(() => const ());
              },
            ),
          ),
        ],
      )),
    );
  }
}

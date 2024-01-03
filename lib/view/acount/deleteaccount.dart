import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/AlertIcon.png'),
            const Gap(10),
            Text(
              'Confirmation',
              style: safeGoogleFont(
                'Poppins',
                fontSize: 24,
                color: TColor.textTittle,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Gap(10),
            SizedBox(
              width: 220,
              child: Text(
                'Are you sure wanna delete your account ',
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  color: TColor.secondarytext,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Gap(40),
            InkWell(
              onTap: () {
                // Get.to(() => const HomeView());
              },
              child: Container(
                // margin: const EdgeInsets.all(10),
                height: 57,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  /*border: Border.all(
                    color: TColor.offwhite, // Specify the color of the border
                    width: 2.0, // Specify the width of the border
                  ),*/
                ),
                child: Center(
                    child: Text(
                  'Delete ',
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
            ),
            const Gap(10),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                // margin: const EdgeInsets.all(10),
                height: 57,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: TColor.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: TColor.offwhite, // Specify the color of the border
                    width: 1.5, // Specify the width of the border
                  ),
                ),
                child: Center(
                    child: Text(
                  'cancel ',
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    color: TColor.textsemiappear,
                    fontWeight: FontWeight.w700,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

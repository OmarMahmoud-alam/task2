import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/Registercustomtextfield.dart';

import 'package:task2/common/utils/tt.dart';
import 'package:gap/gap.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/register_and_login/checkemail.dart';

class ForegetPasswordview extends StatelessWidget {
  const ForegetPasswordview({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          const Gap(10),
          Image.asset('assets/images/logo2.png'),
          const Gap(28),
          Text(
            'Forget Password',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              // height: 1.625 * ffem / fem,
              letterSpacing: 0.5,
              color: TColor.textTittle,
            ),
          ),
          const Gap(15),
          Text(
            'Add your email  to send code ',
            style: safeGoogleFont(
              'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              // height: 2.1666666667*ffem/fem,
              letterSpacing: 0.5,
              color: TColor.secondarytext,
            ),
          ),
          const Gap(24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomRegisterInputField(
              prefixicon: Icons.email_outlined,
              hintText: 'Your Email',
            ),
          ),
          const Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 57,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: TColor.primary,
                  foregroundColor: TColor.white),
              child: Text("Send",
                  style: TextStyle(
                    fontSize: 18,
                    color: TColor.white,
                    fontWeight: FontWeight.w700,
                  )),
              onPressed: () {
                  Get.to(()=>const CodeSendView());
                
              },
            ),
          ),
        ],
      ))),
    );
  }
}

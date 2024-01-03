import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/Registercustomtextfield.dart';

import 'package:task2/common/utils/tt.dart';
import 'package:gap/gap.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/register_and_login/login.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
            'Let’s Get Started',
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
            'Create an new account',
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
              prefixicon: Icons.person_outlined,
              hintText: 'Full Name',
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomRegisterInputField(
              prefixicon: Icons.email_outlined,
              hintText: 'Your Email',
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomRegisterInputField(
              prefixicon: Icons.phone,
              hintText: 'Your Phone',
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomRegisterInputField(
              prefixicon: Icons.lock_outline_sharp,
              hintText: 'password',
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomRegisterInputField(
              prefixicon: Icons.lock_outline_sharp,
              hintText: 'Confirm password',
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
                  backgroundColor: TColor.primary,
                  foregroundColor: TColor.white),
              child: Text("Sign Up",
                  style: TextStyle(
                    fontSize: 18,
                    color: TColor.white,
                    fontWeight: FontWeight.w700,
                  )),
              onPressed: () {},
            ),
          ),
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("have a account? ",
                  style: TextStyle(
                    color: TColor.textsemiappear,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  )),
              TextButton(
                onPressed: () {
                  Get.to(() => const Login());
                },
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    //minimumSize: Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: Text(" Sign In",
                    style: TextStyle(
                      color: TColor.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
          ),
        ],
      ))),
    );
  }
}

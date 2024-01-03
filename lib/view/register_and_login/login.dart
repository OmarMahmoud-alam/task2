import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/customtextfield.dart';
import 'package:task2/common/common_widget/logo_container_ogin.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:gap/gap.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/home/home.dart';
import 'package:task2/view/register_and_login/Register.dart';
import 'package:task2/view/register_and_login/foregetpasswordview%20copy.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            'Welcome  to MEGA Store',
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
            'Sign in to continue',
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
            child: Custominputfield(
              prefixicon: Icons.email_outlined,
              hintText: 'Your Email',
            ),
          ),
          const Gap(10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Custominputfield(
              prefixicon: Icons.lock_outline_sharp,
              hintText: 'password',
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
              child: Text("Sign In",
                  style: TextStyle(
                    fontSize: 18,
                    color: TColor.white,
                    fontWeight: FontWeight.w700,
                  )),
              onPressed: () {
                  Get.to(()=>const HomeView());

              },
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 1,
                color: TColor.offwhite,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'OR',
                  style: safeGoogleFont(
                    'Poppins',
                    height: 1.5,
                    fontSize: 14,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w700,
                    color: TColor.textsemiappear,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                height: 1,
                color: TColor.offwhite,
              )),
            ],
          ),
          const Gap(10),
          //"assets/images/googlelogo.png"
          // 'Login with Google',
          const LoginWidgetContainer(
              imgpath: 'assets/images/googlelogo.png',
              loginString: 'Login with Google'),
          const Gap(7),
          const LoginWidgetContainer(
              imgpath: 'assets/images/facebooklogo.png',
              loginString: 'Login with Facebbok'),

          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                //minimumSize: Size(50, 30),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.centerLeft),
            onPressed: () {
                  Get.to(()=>const ForegetPasswordview());

            },
            child: Text(" Forgot Password? ",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 0.5,
                  color: TColor.primary,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an account? ",
                  style: TextStyle(
                    color: TColor.textsemiappear,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  )),
              TextButton(
                onPressed: () {
                  Get.to(()=>const RegisterView());
                },
                style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    //minimumSize: Size(50, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft),
                child: Text(" Register",
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


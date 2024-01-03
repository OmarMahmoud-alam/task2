import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/acount/deleteaccount.dart';
import 'package:task2/view/acount/profile.dart';
import 'package:task2/view/addresse/addresseview.dart';
import 'package:task2/view/home/category.dart';
import 'package:task2/view/orders/orderview.dart';
import 'package:task2/view/register_and_login/login.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(
          'Account',
          style: safeGoogleFont(
            'Poppins',
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: TColor.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          const Divider(
            height: 1.5,
          ),
          TitleWidgetitem(
            ontap: () {
              Get.to(() => const ProfileView());
            },
            imagepath: 'assets/images/d0.png',
            text: 'Profile',
          ),
          TitleWidgetitem(
            ontap: () {
              Get.to(() => const OrderView());
            },
            imagepath: 'assets/images/d1.png',
            text: 'My Orders ',
          ),
          TitleWidgetitem(
            ontap: () => Get.to(() => const AddresseView()),
            imagepath: 'assets/images/d2.png',
            text: 'Address',
          ),
          TitleWidgetitem(
            ontap: () => Get.to(() => const Login()),
            imagepath: 'assets/images/d3.png',
            text: 'Log out ',
          ),
          TitleWidgetitem(
            ontap: () => Get.to(() => const DeleteAccount()),
            imagepath: 'assets/images/d4.png',
            text: 'Delete Account',
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigate(),
    );
  }
}

class TitleWidgetitem extends StatelessWidget {
  final String imagepath;
  final String text;
  final void Function()? ontap;
  const TitleWidgetitem({
    super.key,
    required this.imagepath,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          leading: Image.asset(imagepath),
          title: Text(
            text,
            style: safeGoogleFont(
              'Poppins',
              fontSize: 12,
              letterSpacing: 0.5,
              fontWeight: FontWeight.bold,
              color: TColor.textTittle,
            ),
          ),
        ),
      ),
    );
  }
}

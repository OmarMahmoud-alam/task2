import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Profile',
          style: safeGoogleFont(
            'Poppins',
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: TColor.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            const Divider(
              height: 1.5,
            ),
            const Gap(10),
            SizedBox(
              width: double.infinity,
              height: 74,
              child: Row(
                children: [
                  const CircleAvatar(
                      radius: 36,
                      backgroundImage:
                          AssetImage('assets/images/person/a1.png')),
                  const Gap(8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dominic Ovo',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.textTittle,
                        ),
                      ),
                      const Gap(10),
                      Text(
                        '   @dominic_ovo',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 12,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.normal,
                          color: TColor.secondarytext,
                        ),
                      ),
                      const Gap(20),
                    ],
                  )
                ],
              ),
            ),
            const Gap(20),
            Onerowprofile(
              keytext: 'Email',
              value: 'rex4dom@gmail.com',
              imgpath: 'assets/images/E1.png',
              ontap: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  height: 361,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Text(
                        'Firstname',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: 'Dominic',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Text(
                        'Last Name',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: 'ovo',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 25),
                        width: double.infinity,
                        height: 57,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: TColor.secondarybutton,
                          ),
                          child: Text("Save",
                              style: TextStyle(
                                fontSize: 18,
                                color: TColor.white,
                                fontWeight: FontWeight.w700,
                              )),
                          onPressed: () {
                            // Get.to(() => const b());
                          },
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
            Onerowprofile(
              keytext: 'Phone Number',
              value: '(307) 555-0133',
              imgpath: 'assets/images/E2.png',
              ontap: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  height: 325,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Text(
                        'Phone number',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.phone_android, color: Colors.grey),
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: '(307) 555-0133',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Gap(89),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 25),
                        width: double.infinity,
                        height: 57,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: TColor.secondarybutton,
                          ),
                          child: Text("Save",
                              style: TextStyle(
                                fontSize: 18,
                                color: TColor.white,
                                fontWeight: FontWeight.w700,
                              )),
                          onPressed: () {
                            // Get.to(() => const b());
                          },
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
            Onerowprofile(
              keytext: 'Change Password',
              value: '•••••••••••••••••',
              imgpath: 'assets/images/E3.png',
              ontap: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  height: 470,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Text(
                        'Old Password',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.lock_outline, color: Colors.grey),
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: '•••••••••••••••••',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Text(
                        'New Password',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.lock_outline, color: Colors.grey),
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: '•••••••••••••••••',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Text(
                        'New Password Again',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.lock_outline, color: Colors.grey),
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: '•••••••••••••••••',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 25),
                        width: double.infinity,
                        height: 57,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: TColor.secondarybutton,
                          ),
                          child: Text("Save",
                              style: TextStyle(
                                fontSize: 18,
                                color: TColor.white,
                                fontWeight: FontWeight.w700,
                              )),
                          onPressed: () {
                            // Get.to(() => const b());
                          },
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
            Onerowprofile(
              keytext: 'Change  Lang',
              value: '',
              imgpath: 'assets/images/E4.png',
              ontap: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  height: 325,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(10),
                      Text(
                        'choose lannguage ',
                        style: safeGoogleFont(
                          'Poppins',
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.bold,
                          color: TColor.black,
                        ),
                      ),
                      const Gap(10),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.arrow_drop_down),
                          hintStyle: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: TColor.primaryblue, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: 'ENGLISH',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: TColor.offwhite, width: 1.0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const Gap(89),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 25),
                        width: double.infinity,
                        height: 57,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: TColor.secondarybutton,
                          ),
                          child: Text("Save",
                              style: TextStyle(
                                fontSize: 18,
                                color: TColor.white,
                                fontWeight: FontWeight.w700,
                              )),
                          onPressed: () {
                            // Get.to(() => const b());
                          },
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ]),
        ),
      ),
    );
  }
}

class Onerowprofile extends StatelessWidget {
  final String keytext;
  final String value;
  final String imgpath;
  final void Function()? ontap;

  const Onerowprofile({
    super.key,
    required this.keytext,
    required this.value,
    required this.imgpath,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: SizedBox(
        height: 54,
        child: Row(
          children: [
            Image.asset(imgpath),
            const Gap(10),
            Text(
              keytext,
              style: safeGoogleFont(
                'Poppins',
                fontSize: 12,
                letterSpacing: 0.5,
                fontWeight: FontWeight.bold,
                color: TColor.textTittle,
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: safeGoogleFont(
                'Poppins',
                fontSize: 12,
                letterSpacing: 0.5,
                fontWeight: FontWeight.normal,
                color: TColor.secondarytext,
              ),
            ),
            const Gap(10),
            IconButton(
              padding: EdgeInsets.zero,
              constraints:
                  const BoxConstraints(), // override default min size of 48px
              style: const ButtonStyle(
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // the '2023' part
              ),
              onPressed: ontap,
              icon: Image.asset('assets/images/right.png'),
            )
          ],
        ),
      ),
    );
  }
}

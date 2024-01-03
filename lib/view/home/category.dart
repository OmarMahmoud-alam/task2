import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/imagescommon.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/acount/acountview.dart';
import 'package:task2/view/home/categoryproduct.dart';
import 'package:task2/view/home/favourite.dart';
import 'package:task2/view/home/home%20copy%202.dart';
import 'package:task2/view/home/home%20copy%203.dart';
import 'package:task2/view/home/home%20copy.dart';
import 'package:task2/view/home/home.dart';

class Categoryview extends StatelessWidget {
  const Categoryview({super.key});

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
          'All Categories ',
          style: safeGoogleFont(
            'Poppins',
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: TColor.black,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => const CategoryProductview());
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage(categoryimage[index % categoryimage.length]),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: 65,
                  child: Text(
                    'Category Name ',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: safeGoogleFont(
                      'Poppins',
                      fontSize: 12,
                      letterSpacing: 0.5,
                      color: TColor.title3,
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: categoryimage.length * 5,
      ),
      bottomNavigationBar: const CustomBottomNavigate(),
    );
  }
}

class CustomBottomNavigate extends StatelessWidget {
  const CustomBottomNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.black,
        onTap: (value) {
          switch (value) {
            case 0:
              Get.offAll(
                () => const HomeView22(),
                transition: Transition.noTransition,
              );
            case 1:
              Get.offAll(
                () => const HomeView33(),
                transition: Transition.noTransition,
              );

            case 2:
              Get.offAll(
                () => const HomeView44(),
                transition: Transition.noTransition,
              );
            case 3:
              Get.to(
                () => const Favouriteview(),
                transition: Transition.noTransition,
              );
          }
        },
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: safeGoogleFont(
          'Poppins',
          fontSize: 12,
          letterSpacing: 0.5,
          color: TColor.black,
        ),
        unselectedLabelStyle: safeGoogleFont(
          'Poppins',
          fontSize: 12,
          letterSpacing: 0.5,
          color: TColor.black,
        ),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/person.png"), label: "account"),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/offer.png"), label: "offer"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: TColor.iconcolor,
              ),
              label: "favourite"),
        ]);
  }
}

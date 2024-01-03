import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/imagescommon.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/home/category.dart';

class Favouriteview extends StatelessWidget {
  const Favouriteview({super.key});

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
            'Favourite ',
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
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.7),
          itemBuilder: (context, index) {
            return GridTile(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    width: 141,
                    child: Stack(
                      children: [
                        Image.asset(
                          productimages[index % productimages.length],
                          width: 141,
                          height: 141,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: 8,
                            left: 9,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    const BoxConstraints(), // override default min size of 48px
                                style: const ButtonStyle(
                                  tapTargetSize: MaterialTapTargetSize
                                      .shrinkWrap, // the '2023' part
                                ),
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                )))
                      ],
                    ),
                  ),
                  const Gap(7),
                  SizedBox(
                    width: 140,
                    child: Text(
                      'FS - Nike Air Max 270 React',
                      //textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        color: TColor.textTittle,
                      ),
                    ),
                  ),
                  const Gap(7),
                  SizedBox(
                    width: 140,
                    child: Text(
                      "\$299,43",
                      //textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        color: TColor.title3,
                      ),
                    ),
                  ),
                  const Gap(7),
                  index % 3 == 0
                      ? SizedBox(
                          width: 141,
                          height: 50,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\$534,33",
                                //textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: safeGoogleFont(
                                  'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.lineThrough,
                                  letterSpacing: 0.5,
                                  color: TColor.secondarytext,
                                ),
                              ),
                              const Gap(7),
                              Text(
                                "24% Off",
                                //textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: safeGoogleFont('Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5,
                                    color: TColor.bink,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(
                          height: 50,
                        )
                ],
              ),
            ));
          },
          itemCount: 2,
        ),
        bottomNavigationBar: const CustomBottomNavigate());
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/cursol.dart';
import 'package:task2/common/common_widget/imagescommon.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/cart/cartview.dart';
import 'package:task2/view/home/category.dart';
import 'package:task2/view/home/categoryproduct.dart';
import 'package:task2/view/product/productdatail.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

//imagecursl
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              title: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    filled: true,
                    fillColor: TColor.lightbrown,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search Product',
                    hintStyle: safeGoogleFont(
                      'Poppins',
                      fontSize: 12,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.normal,
                      color: TColor.textsemiappear,
                    ),
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () => Get.to(() => const Cartview()),
                  child: SizedBox(
                    width: 34,
                    height: 34,
                    child: Stack(
                      children: [
                        Positioned(
                            bottom: 5,
                            left: 0,
                            child: Image.asset('assets/images/Group.png')),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 11,
                            backgroundColor: TColor.white,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: TColor.bink,
                            child: Text(
                              '2',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                // height: 1.625 * ffem / fem,
                                letterSpacing: 0.5,
                                color: TColor.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SliverToBoxAdapter(
              child: CarouslImages(
                imagesList: imagecursl,
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Category',
                style: safeGoogleFont(
                  'Poppins',
                  height: 1.5,
                  fontSize: 14,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w700,
                  color: TColor.primary,
                ),
              ),
            )),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                      children: categoryimage.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => const CategoryProductview());
                            },
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(e),
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
                  }).toList())),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  //  width: double.infinity,
                  child: Image.asset(
                    'assets/images/comm/b1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20),
                child: Text(
                  'Flash Sale',
                  style: safeGoogleFont(
                    'Poppins',
                    height: 1.5,
                    fontSize: 14,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    color: TColor.primary,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                      children: productimages.map((e) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 141,
                            child: InkWell(
                              onTap: () {
                                Get.to(() => const ProductdetialsView());
                              },
                              child: Stack(
                                children: [
                                  Image.asset(
                                    e,
                                    width: 141,
                                    height: 141,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                      top: 2,
                                      left: 3,
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
                          SizedBox(
                            width: 141,
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
                        ],
                      ),
                    );
                  }).toList())),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20),
                child: Text(
                  'You May Like ',
                  style: safeGoogleFont(
                    'Poppins',
                    height: 1.5,
                    fontSize: 14,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    color: TColor.title3,
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 0.0,
                childAspectRatio: 0.82,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return SizedBox(
                    //height: 246,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 141,
                            // height: 240,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const ProductdetialsView());
                                  },
                                  child: Image.asset(
                                    productimages[index % productimages.length],
                                    width: 141,
                                    height: 141,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    top: 2,
                                    left: 3,
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
                            //  height: 50,
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
                                  //height: 10,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          decoration:
                                              TextDecoration.lineThrough,
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
                                  height: 10,
                                )
                        ],
                      ),
                    ),
                  );
                },
                childCount: productimages.length * 3,
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigate());
  }
}
/* Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset(categoryimage[i]),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Category Name ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: safeGoogleFont(
                      'Poppins',
                      fontSize: 12,
                      letterSpacing: 0.5,
                      color: TColor.title3,
                    ),
                  )
                ],
              );
          */


import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/common_widget/cursol.dart';
import 'package:task2/common/common_widget/imagescommon.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/cart/cartview.dart';
import 'package:task2/view/product/reviewView.dart';

class ProductdetialsView extends StatelessWidget {
  const ProductdetialsView({super.key});

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
          'Product Name ....  ',
          style: safeGoogleFont(
            'Poppins',
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
            color: TColor.black,
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
              child: CarouslImages(
            imagesList: productdetailsimages,
            circlecolor: TColor.primary,
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Product Name will dispaly here ',
                        style: safeGoogleFont('Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: TColor.black),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_outline))
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SizedBox(
                width: 96,
                child: RatingBar.builder(
                  ignoreGestures: true,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 16,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.9),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    // print(rating);
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
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
                  const Spacer(),
                  Text(
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
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Details',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: TColor.detailscolor,
                  ),
                ),
                const Gap(10),
                Text(
                  'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: safeGoogleFont(
                    'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    color: TColor.secondarytext,
                  ),
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Review Product',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        color: TColor.black,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        onPressed: () {
                          Get.to(() => const ReviewView());
                        },
                        child: Text(
                          'See More',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                            color: TColor.text3,
                          ),
                        ))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 96,
                      child: RatingBar.builder(
                        ignoreGestures: true,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1.5),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // print(rating);
                        },
                      ),
                    ),
                    const Gap(5),
                    Text(
                      '4.5',
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        color: TColor.text3,
                      ),
                    ),
                    const Gap(2),
                    Text(
                      '(5 Review)',
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        color: TColor.text3,
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/person/a1.png')),
                      const Gap(12),
                      Column(
                        children: [
                          Text('James Lawson',
                              style: safeGoogleFont(
                                'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                                color: TColor.black,
                              )),
                          RatingBar.builder(
                            ignoreGestures: true,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 1.5),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              // print(rating);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, left: 5),
                    child: Text(
                      'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        color: TColor.text3,
                      ),
                    ),
                  ),
                  const Gap(21),
                  Container(
                    padding: const EdgeInsets.only(left: 5),
                    width: double.infinity,
                    child: Text(
                      'December 10, 2016',
                      textAlign: TextAlign.start,
                      style: safeGoogleFont(
                        'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0.5,
                        color: TColor.text3,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 10),
              child: Text(
                'You Might Also Like ',
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
          SliverToBoxAdapter(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                    children: productimages.map((e) {
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
                                Image.asset(
                                  e,
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
                                        onPressed: () {
                                          Get.to(() => const ProductdetialsView());
                                        },
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
                          SizedBox(
                            width: 141,
                            //height: 10,
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
                    ),
                  );
                }).toList())),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
              width: double.infinity,
              height: 57,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: TColor.secondarybutton,
                ),
                child: Text("Add To Cart",
                    style: TextStyle(
                      fontSize: 18,
                      color: TColor.white,
                      fontWeight: FontWeight.w700,
                    )),
                onPressed: () {
                  Get.to(() => const Cartview());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

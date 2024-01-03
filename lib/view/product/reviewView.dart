import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/product/Writereview.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

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
          '5 Review ',
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                height: 1.5,
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
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
              padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
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
              padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
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
              padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
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
              padding: const EdgeInsets.only(left: 20.0, bottom: 15, top: 10),
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
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: double.infinity,
              height: 57,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: TColor.secondarybutton,
                ),
                child: Text("Write Review",
                    style: TextStyle(
                      fontSize: 18,
                      color: TColor.white,
                      fontWeight: FontWeight.w700,
                    )),
                onPressed: () {
                  Get.to(() => const WriteReviewView());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

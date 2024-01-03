import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';

class WriteReviewView extends StatefulWidget {
  const WriteReviewView({super.key});

  @override
  State<WriteReviewView> createState() => _WriteReviewViewState();
}

class _WriteReviewViewState extends State<WriteReviewView> {
  double rate = 1;

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
          'Write Review ',
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
              padding: const EdgeInsets.only(left: 20.0, top: 25),
              child: Text(
                'Please write Overall level of satisfaction with your shipping / Delivery Service ',
                style: safeGoogleFont(
                  'Poppins',
                  fontSize: 14,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  color: TColor.black,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 7),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: rate,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 32,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        rate = rating;
                      });
                      // print(rating);
                    },
                  ),
                  const Gap(5),
                  Text(
                    '$rate/5 ',
                    style: safeGoogleFont(
                      'Poppins',
                      fontSize: 14,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      color: TColor.secondarytext,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Write Your Review ',
                    style: safeGoogleFont(
                      'Poppins',
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      color: TColor.black,
                    ),
                  ),
                  const Gap(15),
                  TextFormField(
                    minLines: 5,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: 'Write your review here',
                      hintStyle: safeGoogleFont(
                        'Poppins',
                        fontSize: 12,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.normal,
                        color: TColor.textsemiappear,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: TColor.primaryblue, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: TColor.offwhite, width: 1.0),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          /*    SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 57,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: TColor.secondarybutton,
                ),
                child: Text("Send Review",
                    style: TextStyle(
                      fontSize: 18,
                      color: TColor.white,
                      fontWeight: FontWeight.w700,
                    )),
                onPressed: () {
                  //Get.to(() => const ());
                },
              ),
            ),
          )*/
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: double.infinity,
        height: 57,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: TColor.secondarybutton,
          ),
          child: Text("Send Review",
              style: TextStyle(
                fontSize: 18,
                color: TColor.white,
                fontWeight: FontWeight.w700,
              )),
          onPressed: () {
            //Get.to(() => const ());
          },
        ),
      ),
    );
  }
}

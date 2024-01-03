import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task2/common/utils/tt.dart';
import 'package:task2/theme/main_colors.dart';
import 'package:task2/view/orders/orderdetails.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

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
          'My Orderes',
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
        child: Column(
          children: [
            const Divider(
              height: 1.5,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const OrderDetails());
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: TColor.offwhite, // Specify the color of the border
                      width: 1.5, // Specify the width of the border
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'LQNSU346JK',
                          style: safeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            color: TColor.textTittle,
                          ),
                        ),
                        const Gap(4),
                        Text(
                          'Order at E-comm : August 1, 2017',
                          style: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 1.5,
                          ),
                        ),
                        const RowOrder(
                          name: "Order Status",
                          price: "Shipping",
                        ),
                        const RowOrder(
                          name: "Items",
                          price: "2 Items purchased",
                        ),
                        const RowOrder(
                          name: "Price",
                          price: "\$299,43",
                          isbold: true,
                        ),
                      ])),
            ),
            InkWell(
              onTap: () {
                Get.to(() => const OrderDetails());
              },
              child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: TColor.offwhite, // Specify the color of the border
                      width: 1.5, // Specify the width of the border
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SDG1345KJD',
                          style: safeGoogleFont(
                            'Poppins',
                            fontSize: 14,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            color: TColor.textTittle,
                          ),
                        ),
                        const Gap(4),
                        Text(
                          'Order at E-comm : August 1, 2017',
                          style: safeGoogleFont(
                            'Poppins',
                            fontSize: 12,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            color: TColor.textsemiappear,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 1.5,
                          ),
                        ),
                        const RowOrder(
                          name: "Order Status",
                          price: "Shipping",
                        ),
                        const RowOrder(
                          name: "Items",
                          price: "1 Items purchased",
                        ),
                        const RowOrder(
                          name: "Price",
                          price: "\$299,43",
                          isbold: true,
                        ),
                      ])),
            ),
          ],
        ),
      ),
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

class RowOrder extends StatelessWidget {
  final String name;
  final String price;
  final bool isbold;

  const RowOrder({
    super.key,
    required this.name,
    required this.price,
    this.isbold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Text(
            name,
            style: safeGoogleFont(
              'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              letterSpacing: 0.5,
              color: TColor.textsemiappear,
            ),
          ),
          const Spacer(),
          Text(
            price,
            style: safeGoogleFont(
              'Poppins',
              fontSize: 12,
              fontWeight: isbold ? FontWeight.bold : FontWeight.normal,
              letterSpacing: 0.5,
              color: TColor.textTittle,
            ),
          ),
        ],
      ),
    );
  }
}

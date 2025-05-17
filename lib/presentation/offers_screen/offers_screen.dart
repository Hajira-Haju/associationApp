 import 'package:associations_app/presentation/bottom_nav_screen/controller/bottom_nav_controller.dart';
import 'package:associations_app/presentation/offers_screen/controller/offers_controller.dart';
import 'package:associations_app/presentation/offers_screen/controller/offers_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../notification_screen/notification_screen.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OffersController controller = Get.put(OffersController());
    return Scaffold(
      appBar: AppBar(title: Text('Exclusive Offers'),
        backgroundColor: Colors.white,),
      body: SafeArea(
        child: SingleChildScrollView(
          // padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(12),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(3, 3),
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/girl.png'),
                    fit: BoxFit.cover,
                  ),
                  // border: Border.all(color: Colors.black38),
                ),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    children: const [
                      TextSpan(text: 'Winter Season\n'),
                      TextSpan(
                        text: 'SALE',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(3, 3),
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/sale1.png'),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  // border: Border.all(color: Colors.black38),
                ),
                width: double.infinity,
                height: 200,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('OFFERS BY CATEGORIES',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  childAspectRatio: 4 / 3,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/sale.png'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(height: 3),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

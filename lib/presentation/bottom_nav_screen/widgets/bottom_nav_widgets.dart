import 'dart:convert';

import 'package:associations_app/presentation/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../generated/assets.dart';
import '../controller/bottom_nav_controller.dart';
import '../models/bottom_nav_datas.dart';

class BottomNavWidgets {
  static Widget drawer() {
    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5.r),
            bottomRight: Radius.circular(5.r),
          ),
        ),

        child: Column(
          children: [
            Image.asset(Assets.assetsTheAssociatesLogo, width: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(color: Colors.grey),
            ),
            SizedBox(width: double.infinity, height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(Assets.assetsImgPerson, width: 100),
            ),
            SizedBox(height: 10),
            Text(
              'Test User',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black
              ),
            ),
            Text(
              'test@skaktec.com',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 30),


            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    child: ListTile(
                      leading: Icon(Icons.person,color: Colors.black),
                      title: Text('Profile',style: TextStyle(color:Colors.black ),),
                      onTap: () {
                        Get.to(ProfileScreen());

                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings,color: Colors.black),
                    title: Text('Settings',style: TextStyle(color:Colors.black ),),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.group_add,color: Colors.black),
                    title: Text('Invite Friends',style: TextStyle(color:Colors.black ),),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help_outline,color: Colors.black,),
                    title: Text('Help & Support',style: TextStyle(color:Colors.black ),),
                    onTap: () {

                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.black),
                    title: Text('Logout', style: TextStyle(color: Colors.black )),
                    onTap: () {

                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget idCard() {
    final qrData = jsonEncode(BottomNavData.userData);
    return Dialog(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'DIGITAL ID',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange.shade900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(color: Colors.grey, height: 1),
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(Assets.assetsImgPerson, width: 100),
                ),
                SizedBox(height: 10),
                Text(
                  'Test User',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  'test@skaktec.com',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 20),
                  child: Row(
                    children: [
                      idCardDetailsWidget(
                        head: 'Birth Date',
                        data: '12/12/2000',
                      ),
                      idCardDetailsWidget(head: 'Nationality', data: 'INDIA'),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      idCardDetailsWidget(head: 'Role', data: 'Coordinator'),
                      idCardDetailsWidget(
                        head: 'Member since',
                        data: 'Jan 2023',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: QrImageView(
                    data: qrData,
                    version: QrVersions.auto,
                    size: 100.0,
                    gapless: false,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: CircleAvatar(
                radius: 15,
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                child: Icon(Icons.close, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static idCardDetailsWidget({required String head, required String data}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(head, style: TextStyle(color: Colors.grey.shade500)),
          Text(data, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

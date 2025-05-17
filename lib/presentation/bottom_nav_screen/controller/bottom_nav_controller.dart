import 'package:associations_app/presentation/bottom_nav_screen/widgets/bottom_nav_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt activeIndex = 0.obs;
  final key = GlobalKey<ScaffoldState>();

  void idCardDialog() {
    showGeneralDialog(
      context: Get.context!,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavWidgets.idCard(),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
          child: child,
        );
      },
    );
  }
}

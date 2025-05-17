import 'package:associations_app/presentation/sign_in_screen/controller/sign_in_controller.dart';
import 'package:associations_app/presentation/sign_in_screen/widgets/custom_field.dart';
import 'package:associations_app/presentation/sign_in_screen/widgets/login_widget.dart';
import 'package:associations_app/routes/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../core/constants/const_datas.dart';

class SignInScreen extends GetView<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstData.primaryClr,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/login_bg.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),

                SizedBox(height: 20.h),
                CustomField(label: 'E-mail', prefix: CupertinoIcons.mail),
                SizedBox(height: 40),
                Obx(
                  () => CustomField(
                    label: 'Password',
                    prefix: Icons.password,
                    suffix: GestureDetector(
                      onTap: () => controller.toggleObscure(),
                      child: Icon(
                        controller.isObscure.value
                            ? CupertinoIcons.eye_fill
                            : CupertinoIcons.eye_slash_fill,
                      ),
                    ),
                    isObscure: controller.isObscure.value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.brown.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: Alignment.center,
                  child: LoginWidgets.customButton(
                    onTap: () {
                      Get.offAllNamed(AppRoutes.bottomNavScreen);
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              top: 300.h,
              left: 30,
              child: Text(
                'LOG IN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

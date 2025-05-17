import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginWidgets {
  static Widget customButton({required VoidCallback? onTap}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        fixedSize: Size(240.w, 40.h),
        backgroundColor: Color(0xFFFF8383),
        foregroundColor: Colors.white,
      ),
      onPressed: onTap,
      child: Text('Log in'),
    );
  }
}

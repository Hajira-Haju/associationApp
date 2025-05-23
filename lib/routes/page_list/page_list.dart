import 'package:associations_app/presentation/bottom_nav_screen/binding/bottom_nav_binding.dart';
import 'package:associations_app/presentation/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:associations_app/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:associations_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:associations_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:associations_app/presentation/splash_screen/splash_screen.dart';
import 'package:associations_app/routes/app_routes/app_routes.dart';
import 'package:get/get.dart';

class PageList {
  static var pages = [
    GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen(),binding:SplashBinding(), ),
    GetPage(name: AppRoutes.signInScreen, page: () => SignInScreen(),binding:SignInBinding(), ),
    GetPage(name: AppRoutes.bottomNavScreen, page: () => BottomNavScreen(),binding:BottomNavBinding(), ),
  ];
}
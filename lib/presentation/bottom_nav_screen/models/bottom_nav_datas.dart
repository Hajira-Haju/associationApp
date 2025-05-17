import 'package:associations_app/presentation/new_events_screen/news_events_screen.dart';
import 'package:associations_app/presentation/profile_screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../offers_screen/offers_screen.dart';

class BottomNavData {
  static List<Widget> pages = [NewsEventsScreen(), OffersScreen()];
  static Map<String, dynamic> userData = {
    'name': 'Test User',
    'email': 'test@skaktec.com',
    'id': 12345,
  };
}

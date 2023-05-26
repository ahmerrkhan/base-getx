import 'package:flutter_getx/screens/home_page.dart';
import 'package:flutter_getx/screens/sub_screen_four.dart';
import 'package:flutter_getx/screens/sub_screen_one.dart';
import 'package:flutter_getx/screens/sub_screen_three.dart';
import 'package:flutter_getx/screens/sub_screen_two.dart';
import 'package:get/route_manager.dart';

class RouteClass {
  static String home = '/';
  static String subScreenOne = '/subScreenOne';
  static String subScreenTwo = '/subScreenTwo';
  static String subScreenThree = '/subScreenThree';
  static String subScreenFour = '/subScreenFour';

  static getHomeRoute() => home;
  static getSubScreenOne() => subScreenOne;
  static getSubScreenTwo() => subScreenTwo;
  static getSubScreenThree() => subScreenThree;
  static getSubScreenFour() => subScreenFour;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: subScreenOne, page: () => const SubScreenOne()),
    GetPage(name: subScreenTwo, page: () => const SubScreenTwo()),
    GetPage(name: subScreenThree, page: () => const SubScreenThree()),
    GetPage(name: subScreenFour, page: () => const SubScreenFour()),
  ];
}

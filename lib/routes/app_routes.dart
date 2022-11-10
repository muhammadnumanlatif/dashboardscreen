import 'package:flutter_community_s_application2/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:flutter_community_s_application2/presentation/dashboard_screen/binding/dashboard_binding.dart';
import 'package:flutter_community_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:flutter_community_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String dashboardScreen = '/dashboard_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    )
  ];
}

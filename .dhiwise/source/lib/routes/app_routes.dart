import 'package:survive_now/presentation/home_screen/home_screen.dart';
import 'package:survive_now/presentation/home_screen/binding/home_binding.dart';
import 'package:survive_now/presentation/victim_view_screen/victim_view_screen.dart';
import 'package:survive_now/presentation/victim_view_screen/binding/victim_view_binding.dart';
import 'package:survive_now/presentation/rescuer_view_wo_marker_screen/rescuer_view_wo_marker_screen.dart';
import 'package:survive_now/presentation/rescuer_view_wo_marker_screen/binding/rescuer_view_wo_marker_binding.dart';
import 'package:survive_now/presentation/rescuer_view_screen/rescuer_view_screen.dart';
import 'package:survive_now/presentation/rescuer_view_screen/binding/rescuer_view_binding.dart';
import 'package:survive_now/presentation/historical_event_covid_19_screen/historical_event_covid_19_screen.dart';
import 'package:survive_now/presentation/historical_event_covid_19_screen/binding/historical_event_covid_19_binding.dart';
import 'package:survive_now/presentation/victim_view_one_screen/victim_view_one_screen.dart';
import 'package:survive_now/presentation/victim_view_one_screen/binding/victim_view_one_binding.dart';
import 'package:survive_now/presentation/splash_screen/splash_screen.dart';
import 'package:survive_now/presentation/splash_screen/binding/splash_binding.dart';
import 'package:survive_now/presentation/contact_tracing_screen/contact_tracing_screen.dart';
import 'package:survive_now/presentation/contact_tracing_screen/binding/contact_tracing_binding.dart';
import 'package:survive_now/presentation/home_sos_screen/home_sos_screen.dart';
import 'package:survive_now/presentation/home_sos_screen/binding/home_sos_binding.dart';
import 'package:survive_now/presentation/specific_help_screen/specific_help_screen.dart';
import 'package:survive_now/presentation/specific_help_screen/binding/specific_help_binding.dart';
import 'package:survive_now/presentation/cpr_page_container_screen/cpr_page_container_screen.dart';
import 'package:survive_now/presentation/cpr_page_container_screen/binding/cpr_page_container_binding.dart';
import 'package:survive_now/presentation/contact_tracing_wo_marker_screen/contact_tracing_wo_marker_screen.dart';
import 'package:survive_now/presentation/contact_tracing_wo_marker_screen/binding/contact_tracing_wo_marker_binding.dart';
import 'package:survive_now/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:survive_now/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String victimViewScreen = '/victim_view_screen';

  static const String rescuerViewWoMarkerScreen =
      '/rescuer_view_wo_marker_screen';

  static const String rescuerViewScreen = '/rescuer_view_screen';

  static const String historicalEventCovid19Screen =
      '/historical_event_covid_19_screen';

  static const String victimViewOneScreen = '/victim_view_one_screen';

  static const String splashScreen = '/splash_screen';

  static const String contactTracingScreen = '/contact_tracing_screen';

  static const String homeSosScreen = '/home_sos_screen';

  static const String specificHelpScreen = '/specific_help_screen';

  static const String cprPage = '/cpr_page';

  static const String cprPageContainerScreen = '/cpr_page_container_screen';

  static const String contactTracingWoMarkerScreen =
      '/contact_tracing_wo_marker_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: victimViewScreen,
      page: () => VictimViewScreen(),
      bindings: [
        VictimViewBinding(),
      ],
    ),
    GetPage(
      name: rescuerViewWoMarkerScreen,
      page: () => RescuerViewWoMarkerScreen(),
      bindings: [
        RescuerViewWoMarkerBinding(),
      ],
    ),
    GetPage(
      name: rescuerViewScreen,
      page: () => RescuerViewScreen(),
      bindings: [
        RescuerViewBinding(),
      ],
    ),
    GetPage(
      name: historicalEventCovid19Screen,
      page: () => HistoricalEventCovid19Screen(),
      bindings: [
        HistoricalEventCovid19Binding(),
      ],
    ),
    GetPage(
      name: victimViewOneScreen,
      page: () => VictimViewOneScreen(),
      bindings: [
        VictimViewOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: contactTracingScreen,
      page: () => ContactTracingScreen(),
      bindings: [
        ContactTracingBinding(),
      ],
    ),
    GetPage(
      name: homeSosScreen,
      page: () => HomeSosScreen(),
      bindings: [
        HomeSosBinding(),
      ],
    ),
    GetPage(
      name: specificHelpScreen,
      page: () => SpecificHelpScreen(),
      bindings: [
        SpecificHelpBinding(),
      ],
    ),
    GetPage(
      name: cprPageContainerScreen,
      page: () => CprPageContainerScreen(),
      bindings: [
        CprPageContainerBinding(),
      ],
    ),
    GetPage(
      name: contactTracingWoMarkerScreen,
      page: () => ContactTracingWoMarkerScreen(),
      bindings: [
        ContactTracingWoMarkerBinding(),
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
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    )
  ];
}

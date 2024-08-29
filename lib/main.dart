import 'package:flutter/material.dart';
import 'package:gaon_app/gets/g_theme_controller.dart';
import 'package:gaon_app/pages/p_login.dart';
import 'package:gaon_app/responsive/r_desktop_scaffold.dart';
import 'package:gaon_app/responsive/r_layout.dart';
import 'package:gaon_app/responsive/r_mobile_scaffold.dart';
import 'package:gaon_app/responsive/r_tablet_scaffold.dart';
import 'package:gaon_app/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        initialBinding: BindingsBuilder(() {
          Get.put(ThemeController());
        }),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale("ko", "KR"),
        ],
        initialRoute: '/',
        getPages: [
          GetPage(
            name: '/',
            page: () => const BasePage(),
          ),
        ],
        theme: appThemeData[AppTheme.Light],
        darkTheme: appThemeData[AppTheme.Dark],
        themeMode: ThemeController().themeMode,
        home: const BasePage(),
        // debugShowCheckedModeBanner: false,
      );
    });
  }
}

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginPage();
    // return const ResponsiveLayout(
    //   mobileScaffold: MobileScaffold(),
    //   tabletScaffold: TabletScaffold(),
    //   desktopScaffold: DesktopScaffold(),
    // );
  }
}

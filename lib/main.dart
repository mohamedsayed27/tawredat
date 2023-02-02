import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/presentation/screens/auth_screens/screens/change_forget_password_screen.dart';
import 'package:tawredat/presentation/screens/auth_screens/screens/forget_password_screen.dart';
import 'package:tawredat/presentation/screens/auth_screens/screens/login_and_register_screen.dart';
import 'package:tawredat/presentation/screens/auth_screens/screens/otp_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/main_layout_screen.dart';
import 'core/app_colors/app_colors.dart';
import 'core/app_router/app_router.dart';
import 'core/app_router/screen_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(413, 892),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch:
                AppColors.createMaterialColor(AppColors.primaryColor),
          ),
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale("ar", "AE") // OR Locale('ar', 'AE') OR Other RTL locales
          ],
          // onGenerateRoute: AppRouter.generateRoute,
          // initialRoute: ScreenName.splashScreen,
          home: MainLayout(),
        );
      },
    );
  }
}

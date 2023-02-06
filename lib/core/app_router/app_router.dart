import 'package:flutter/material.dart';
import '../../presentation/screens/auth_screens/change_forget_password_screen.dart';
import '../../presentation/screens/auth_screens/forget_password_screen.dart';
import '../../presentation/screens/auth_screens/login_and_register_screen.dart';
import '../../presentation/screens/auth_screens/otp_screen.dart';
import '../../presentation/screens/intro_screens/onboarding_screen.dart';
import '../../presentation/screens/intro_screens/splash_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/best_sell_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/favorites_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/offers_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/reorder_screen.dart';
import '../../presentation/screens/main_layout/main_layout_screen.dart';
import 'screen_names.dart';

class AppRouter {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.splashScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const SplashScreen(); });
        case ScreenName.onboardingScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const OnboardingScreen(); });
        case ScreenName.loginAndRegisterScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const LoginAndRegisterScreen(); });
        case ScreenName.forgetPasswordScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const ForgetPasswordScreen(); });
        case ScreenName.mainLayout:
          return MaterialPageRoute(builder: (BuildContext context) { return const MainLayout(); });
        case ScreenName.changeForgetPasswordScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const ChangeForgetPasswordScreen(); });
        case ScreenName.otpScreen:
          return MaterialPageRoute(builder: (BuildContext context) { return const OtpScreen(); });
        case ScreenName.favoritesScreen:
          return _animateRouteBuilder(const FavouritesScreen());
        case ScreenName.bestSellScreen:
          return _animateRouteBuilder(const BestSellScreen());
        case ScreenName.offersScreen:
          return _animateRouteBuilder(const OffersScreen());
        case ScreenName.reorderScreen:
          return _animateRouteBuilder(const ReorderScreen());
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
  }

  static PageRouteBuilder _animateRouteBuilder(Widget to, {double x = 1, double y = 0}) {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => to,
      transitionDuration: const Duration(milliseconds: 190),
      reverseTransitionDuration: const Duration(milliseconds: 190),
      transitionsBuilder: (context, animation, animationTime, child) {
        final tween = Tween<Offset>(begin: Offset(x, y), end: Offset.zero);
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('خطأ'),
        ),
        body: const Center(
          child: Text('نعتذر حدث خطأ , الرجاء اعادة المحاولة'),
        ),
      );
    });
  }

}
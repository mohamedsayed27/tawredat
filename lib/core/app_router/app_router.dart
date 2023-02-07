import 'package:flutter/material.dart';
import 'package:tawredat/presentation/screens/main_layout/home_screen_screens/reorder_cart_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/payment_screen.dart';
import '../../presentation/screens/auth_screens/change_forget_password_screen.dart';
import '../../presentation/screens/auth_screens/forget_password_screen.dart';
import '../../presentation/screens/auth_screens/login_and_register_screen.dart';
import '../../presentation/screens/auth_screens/otp_screen.dart';
import '../../presentation/screens/intro_screens/onboarding_screen.dart';
import '../../presentation/screens/intro_screens/splash_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/best_sell_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/favorites_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/offers_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/register_as_a_vendor.dart';
import '../../presentation/screens/main_layout/home_screen_screens/reorder_screen.dart';
import '../../presentation/screens/main_layout/home_screen_screens/search_screen.dart';
import '../../presentation/screens/main_layout/main_layout_screen.dart';
import '../../presentation/screens/main_layout/markets_screen_screens/market_details_screen.dart';
import 'screen_names.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    try {
      switch (settings.name) {
        case ScreenName.splashScreen:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const SplashScreen();
          });
        case ScreenName.onboardingScreen:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const OnboardingScreen();
          });
        case ScreenName.loginAndRegisterScreen:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const LoginAndRegisterScreen();
          });
        case ScreenName.forgetPasswordScreen:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const ForgetPasswordScreen();
          });
        case ScreenName.mainLayout:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const MainLayout();
          });
        case ScreenName.changeForgetPasswordScreen:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const ChangeForgetPasswordScreen();
          });
        case ScreenName.otpScreen:
          return MaterialPageRoute(builder: (BuildContext context) {
            return const OtpScreen();
          });
        case ScreenName.favoritesScreen:
          return SlideRightRoute(page: const FavouritesScreen());
        case ScreenName.bestSellScreen:
          return SlideRightRoute(page:const BestSellScreen());
        case ScreenName.marketDetailsScreen:
          return SlideRightRoute(page:const MarketDetailsScreen());
        case ScreenName.reorderCartScreen:
          return SlideRightRoute(page:const ReorderCartScreen());
        case ScreenName.paymentScreen:
          return SlideRightRoute(page:PaymentScreen());
        case ScreenName.searchScreen:
          return SlideRightRoute(page:const SearchScreen());
        case ScreenName.registerAsAVendorScreen:
          return SlideRightRoute(page:const RegisterAsAVendorScreen());
        case ScreenName.offersScreen:
          return SlideRightRoute(page:const OffersScreen());
        case ScreenName.reorderScreen:
          return SlideRightRoute(page:const ReorderScreen());
        default:
          return _errorRoute();
      }
    } catch (e) {
      return _errorRoute();
    }
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

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return page;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 190),
          reverseTransitionDuration: const Duration(milliseconds: 190),
        );
}

import 'package:flutter/material.dart';
import 'package:tawredat/presentation/screens/main_layout/home_screen_screens/reorder_cart_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/payment_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/about_app_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/change_password_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/charge_wallet_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/complaints_and_suggetions_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/edit_profile_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/information_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/my_order_details_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/my_orders_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/my_wallet_screen.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/privacy_and_policy.dart';
import 'package:tawredat/presentation/screens/main_layout/profile_screens/terms_and_conditions.dart';
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
import '../../presentation/widgets/shared_widgets/product_details_screen.dart';
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
        case ScreenName.aboutApp:
          return SlideRightRoute(page:const AboutScreen());
        case ScreenName.changePassword:
          return SlideRightRoute(page:const ChangePasswordScreen());
        case ScreenName.chargeWallet:
          return SlideRightRoute(page:const ChargeWalletScreen());
        case ScreenName.complaintsAndSuggestions:
          return SlideRightRoute(page:const ComplaintsAndSuggestionsScreen());
        case ScreenName.editProfileScreen:
          return SlideRightRoute(page:const EditProfileScreen());
        case ScreenName.informationScreen:
          return SlideRightRoute(page:const InformationScreen());
        case ScreenName.myOrdersScreen:
          return SlideRightRoute(page:const MyOrderScreen());
        case ScreenName.myOrdersDetailsScreen:
          return SlideRightRoute(page:const MyOrderDetailsScreen());
        case ScreenName.myWalletScreen:
          return SlideRightRoute(page:const MyWalletScreen());
        case ScreenName.privacyScreen:
          return SlideRightRoute(page:const PrivacyAndPolicy());
        case ScreenName.productDetailsScreen:
          return SlideRightRoute(page:const ProductDetailsScreen());
        case ScreenName.termsAndConditionsScreen:
          return SlideRightRoute(page:const TermsAndConditions());
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

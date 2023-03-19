import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tawredat/business_logic/auth_cubit/auth_cubit.dart';
import 'package:tawredat/presentation/widgets/shared_widgets/product_details_screen.dart';
import 'bloc_observer.dart';
import 'core/app_colors/app_colors.dart';
import 'core/app_router/app_router.dart';
import 'core/app_router/screen_names.dart';
import 'core/cache_manager/shared_preferences.dart';
import 'core/network/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(413, 892),
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(providers: [
          BlocProvider(create: (context)=>AuthCubit())
        ], child: MaterialApp(
          title: 'Tawredat',
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
          onGenerateRoute: AppRouter.generateRoute,
          initialRoute: ScreenName.splashScreen,
          // home: ProductDetailsScreen(),
        ));
      },
    );
  }
}

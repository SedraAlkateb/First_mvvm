import 'package:first2/presentation/forgot_password/forgot_password_view.dart';
import 'package:first2/presentation/login/login_view.dart';
import 'package:first2/presentation/main/main_view.dart';
import 'package:first2/presentation/register/register_view.dart';
import 'package:first2/presentation/resources/strings_manager.dart';
import 'package:first2/presentation/splash/splash_view.dart';
import 'package:first2/presentation/store_details/store_details_view.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String splashRoute="/";
  static const String loginRoute="/login";
  static const String registerRoute="/register";
  static const String forgotPasswordRoute="/forgotPassword";
  static const String mainRoute="/main";
  static const String storeDetailRoute="/storeDetail";


}
class RouteGenerator{
  static Route<dynamic>getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>const SplashView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_)=>const ForgotPasswordView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_)=>const LoginView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_)=>const MainView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_)=>const RegisterView());
      case Routes.storeDetailRoute:
        return MaterialPageRoute(builder: (_)=>const StoreDetailView());
      default :
        return unDefinedRoute();

    }
  }

 static Route<dynamic>unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
appBar:  AppBar(
    title:const Text(StringsManager.noRouteFound),// string to strings manager
),
      body:const Center(child:  Text(StringsManager.noRouteFound)
      ),//string to strings manager

    ));

  }
}

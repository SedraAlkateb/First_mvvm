import 'package:first2/presentation/resources/color_manager.dart';
import 'package:first2/presentation/resources/font_manager.dart';
import 'package:first2/presentation/resources/style_manage.dart';
import 'package:first2/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
//presentation
ThemeData getApplicationTheme(){
  return ThemeData(
    //main colors

    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.lightPrimary,
    disabledColor: ColorManager.grey1,
    splashColor:  ColorManager.lightPrimary,//ripple effect color
    //card view theme

    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor:ColorManager.grey,
      elevation: AppSize.s4,
    ),

    //app bar them

appBarTheme: AppBarTheme(
  centerTitle: true,
  color: ColorManager.primary,
  elevation:AppSize.s4 ,
    shadowColor: ColorManager.lightPrimary,
  titleTextStyle: getRegularStyle(fontSize: FontSize.s16 , color:ColorManager.white ),

),

    

    //button them

    buttonTheme: ButtonThemeData(
      shape:const StadiumBorder(),//button ns da2ra
        disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ) ,

    ///elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorManager.white,fontSize: FontSize.s17
        ),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),

      ),
    ),

    //text theme


textTheme: TextTheme(
  displayLarge:
  getLightStyle(color: ColorManager.white,fontSize: FontSize.s22),
    headline1: getSemiBoldStyle(
        color: ColorManager.darkGray,fontSize: FontSize.s16),
  subtitle1: getMediumStyle(color: ColorManager.lightGrey,fontSize: FontSize.s14),
  caption: getRegularStyle(color: ColorManager.grey1),
  bodyText1: getRegularStyle(color: ColorManager.grey),

),

    //input decoration theme

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s14),
        labelStyle: getMediumStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorManager.error),

      /////enabled Border style

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8),),

      ),

      ///focused Border style
      focusedBorder:  OutlineInputBorder(
  borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
  borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),

      //error border style

      errorBorder:  OutlineInputBorder(
      borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
  borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      focusedErrorBorder:  OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary ,width: AppSize.s1_5),
        borderRadius:const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
  ),

  );
}
import 'package:flutter/material.dart';
import 'package:shopy/presentation/resources/colors_manager.dart';
import 'package:shopy/presentation/resources/fonts_manager.dart';
import 'package:shopy/presentation/resources/styles_manager.dart';
import 'package:shopy/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  final theme = ThemeData(
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.grey1,

      //card theme

      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s4,
      ),

      //app bar theme

      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: ColorManager.primary,
        elevation: AppSize.s4,
        shadowColor: ColorManager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      ),

      //button theme

      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70,
      ),

      //elevated button theme

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white),
          foregroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
        ),
      ),

      //  Input decoration theme

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),

        // hint style
        hintStyle: getRegularStyle(color: ColorManager.grey1),

        // lable style
        labelStyle: getMediumStyle(color: ColorManager.darkGrey),

        // enabled style
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        // focused style
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        // error style
        errorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),

        // focused error style
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s8),
          ),
        ),
      ));

  return theme.copyWith(
    colorScheme: theme.colorScheme.copyWith(secondary: ColorManager.grey),
  );
}

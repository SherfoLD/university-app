import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_ui/app_ui.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void setThemeMode(String mode) {
    emit(state.copyWith(themeMode: mode));
  }

  void setPrimaryColor(int color) {
    emit(state.copyWith(primaryColor: color));
  }

  ThemeData getLightTheme() {
    return AppTheme.lightTheme;
  }

  ThemeData getDarkTheme() {
    return AppTheme.darkTheme;
  }
}

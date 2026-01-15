part of 'theme_cubit.dart';

class ThemeState extends Equatable {
  const ThemeState({
    this.themeMode = 'system',
    this.primaryColor = 0xFF2196F3,
  });

  final String themeMode;
  final int primaryColor;

  ThemeState copyWith({
    String? themeMode,
    int? primaryColor,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
      primaryColor: primaryColor ?? this.primaryColor,
    );
  }

  @override
  List<Object?> get props => [themeMode, primaryColor];
}

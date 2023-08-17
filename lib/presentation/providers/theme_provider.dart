import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final lightModeProvider = StateProvider((ref) => true);

// listado de colores inmmutable
final colorListProvider = Provider((ref) => colorList);

final selectedIndexColorProvider = StateProvider((ref) => 0);

// Creamos un objeto de tipo AppTheme
// este se usa cuando el estado es un poquito mas elaborado
final themeNotifierProvider = 
  StateNotifierProvider<ThemeNotifier, AppTheme>(
    (ref) =>  ThemeNotifier(),
  );

/// maneja el estado de el themeNotifier
/// controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  /// STATE = Estado = new AppTheme();
  ThemeNotifier(): super( AppTheme() );

  void toggeDarkMode() {
    state = state.copyWith( isLightMode: !state.isLightMode );
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith( selectedColor: colorIndex );
  }
}
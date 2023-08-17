import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final lightModeProvider = StateProvider((ref) => true);

// listado de colores inmmutable
final colorListProvider = Provider((ref) => colorList);

final selectedIndexColorProvider = StateProvider((ref) => 0);

// Creamos un objeto de tipo AppTheme

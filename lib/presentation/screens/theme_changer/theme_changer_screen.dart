import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bool isThemeLight = ref.watch(lightModeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Cambiar tema'),
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(lightModeProvider.notifier).state = !isThemeLight;
                },
                icon: Icon(isThemeLight
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined))
          ],
        ),
        body: _ThemeChangerView());
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.read(colorListProvider);
    final int selectedColor = ref.watch(selectedIndexColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {

        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color),),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selectedColor,
          onChanged: (value) {
            ref.read(selectedIndexColorProvider.notifier).state = value ?? 0;
          }
        );
      }
    );
  }
}

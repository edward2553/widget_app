import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String name;
  final String subTitle;
  final String link;
  final IconData icon;
  final Widget widget;

  const MenuItem({
    required this.title,
    required this.name,
    required this.subTitle,
    required this.link,
    required this.icon,
    required this.widget,
  });

}

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Botones',
    name: ButtonsScreen.name,
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
    widget: ButtonsScreen(),
  ),
  MenuItem(
    title: 'Tarjetas',
    name: CardsScreen.name,
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card_outlined,
    widget: CardsScreen(),
  ),
  MenuItem(
    title: 'Progress Indicators',
    name: ProgressScreen.name,
    subTitle: 'Barras de progreso',
    link: '/progress',
    icon: Icons.refresh_rounded,
    widget: ProgressScreen(),
  ),
  MenuItem(
    title: 'Snackbars y dialogos',
    name: SnackbarScreen.name,
    subTitle: 'Indicadores en pantalla ',
    link: '/snackbars',
    icon: Icons.info_outline,
    widget: SnackbarScreen(),
  ),
  MenuItem(
    title: 'Animated container',
    name: AnimatedScreen.name,
    subTitle: 'Indicadores en Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
    widget: AnimatedScreen(),
  ),
  MenuItem(
    title: 'UI controls + Tiles',
    name: UiControlsScreen.name,
    subTitle: 'Una serie de controles en flutters',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
    widget: UiControlsScreen(),
  ),
  MenuItem(
    title: 'Introduccion a la aplicación',
    name: AppTutorialScreen.name,
    subTitle: 'Pequeño tutoria introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
    widget: AppTutorialScreen(),
  ),
  MenuItem(
    title: 'Infinite Scroll',
    name: InfiniteScrollScreen.name,
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_outlined,
    widget: InfiniteScrollScreen(),
  ),
];
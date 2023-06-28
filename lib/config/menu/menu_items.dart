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
    name: 'buttons_screen',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
    widget: ButtonsScreen(),
  ),
  MenuItem(
    title: 'Tarjetas',
    name: 'cards_screen',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card_outlined,
    widget: CardsScreen(),
  ),
  MenuItem(
    title: 'Progress Indicators',
    name: 'Generales y controlados',
    subTitle: 'Barras de progreso',
    link: '/progress',
    icon: Icons.refresh_rounded,
    widget: ProgressScreen(),
  ),

];
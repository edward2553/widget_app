import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String name;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.name,
    required this.subTitle,
    required this.link,
    required this.icon,
  });

}

const appMenuItems = <MenuItem> [

  MenuItem(
    title: 'Botones',
    name: 'buttons_screen',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tarjetas',
    name: 'cards_screen',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card_outlined,
  ),

];
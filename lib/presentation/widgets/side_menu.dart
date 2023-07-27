import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';

class SidebarMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scafoldKey;


  const SidebarMenu({
    super.key,
    required this.scafoldKey
  });

  @override
  State<SidebarMenu> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {

  int navDrawerIndex = 1;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];
        context.push(menuItem.link);
        widget.scafoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('main')
        ),
        ...appMenuItems
        .sublist(0, 3)
        .map((item) =>
          NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title),
          )
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Divider(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('More options')
        ),
        ...appMenuItems
        .sublist(3)
        .map((item) =>
          NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title),
          )
        ),
      ],
    );
  }
}
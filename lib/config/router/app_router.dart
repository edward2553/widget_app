import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import '../../presentation/screens/screens.dart';

final apps = appMenuItems.map((menuItem) =>
      GoRoute(
        path: menuItem.link,
        name: menuItem.name,
        builder: (context, state) => menuItem.widget,
      )
    ).toList();
// GoRouter configuration
final appRouter = GoRouter(
  // routes: [

  //   GoRoute(
  //     path: '/',
  //     name: HomeScreen.name,
  //     builder: (context, state) => const HomeScreen(),
  //   ),

  //   GoRoute(
  //     path: '/buttons',
  //     name: ButtonsScreen.name,
  //     builder: (context, state) => const ButtonsScreen(),
  //   ),

  //   GoRoute(
  //     path: '/cards',
  //     name: CardsScreen.name,
  //     builder: (context, state) => const CardsScreen(),
  //   ),

  //   GoRoute(
  //     path: '/progress',
  //     name: CardsScreen.name,
  //     builder: (context, state) => const CardsScreen(),
  //   ),

  // ],
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    ...apps,
  ]
    
);
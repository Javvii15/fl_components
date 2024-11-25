import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/animated_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.house_rounded,
        name: 'HomeScreen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.house_rounded,
        name: 'ListView 1',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.house_rounded,
        name: 'ListView 2',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: 'Cards (Tarjetas)',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.person_2_rounded,
        name: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_fill_outlined,
        name: 'Animated Container',
        screen: const AnimatedScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for(final option in MenuOptions) {
      appRoutes.addAll({option.route : (BuildContext context ) => option.screen});
    }

    return appRoutes;

  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen() 
          );
      }


}
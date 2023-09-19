import 'package:flutter/material.dart';
import 'package:test_grid_images/domain/services/navigator/navigator_arguments.dart';
import 'package:test_grid_images/ui/screens/character/character_screen.dart';
import 'package:test_grid_images/ui/screens/main/main_screen.dart';

class NavigatorRouter {
  static const main = '/main/';
  static const character = '/character/';

  static MaterialPageRoute onGenerateRouters(RouteSettings settings) {
    final args = settings.arguments as NavigatorArgument?;

    final routes = <String, WidgetBuilder>{
      main: (BuildContext context) => const MainScreen(),
      character: (BuildContext context) => CharacterScreen(
            character: args!.character!,
          ),
    };

    WidgetBuilder? builder = routes[settings.name!];
    return MaterialPageRoute(builder: (ctx) => builder!(ctx));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:test_grid_images/data/models/character.dart';
import 'package:test_grid_images/domain/services/navigator/navigator_arguments.dart';
import 'package:test_grid_images/domain/services/navigator/navigator_route.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> _navigatorKey;

  NavigatorService({required GlobalKey<NavigatorState> navigatorKey})
      : _navigatorKey = navigatorKey;

  void onPop() => _navigatorKey.currentState!.pop();

  void onMain() {
    _navigatorKey.currentState!.pushNamedAndRemoveUntil(
      NavigatorRouter.main,
      (route) => false,
    );
  }

  void onCharacter({required Character character}) {
    _navigatorKey.currentState!.pushNamed(
      NavigatorRouter.character,
      arguments: NavigatorArgument(character: character),
    );
  }
}

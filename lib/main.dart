import 'package:flutter/material.dart';
import 'package:test_grid_images/domain/services/locator_service.dart';
import 'package:test_grid_images/domain/services/navigator/navigator_route.dart';
import 'package:test_grid_images/ui/resurses/theme.dart';
import 'package:test_grid_images/ui/screens/splash/splash_screen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:test_grid_images/ui/state_manager/store.dart';

void main() {
  final locator = LocatorService();
  runApp(TestApp(locator: locator));
}

class TestApp extends StatelessWidget {
  final LocatorService locator;

  const TestApp({
    Key? key,
    required this.locator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: locator.store,
      child:  MaterialApp(
        navigatorKey: locator.navigatorKey,
        title: 'Test App',
        theme: themeData,
        home: const SplashScreen(),
        onGenerateRoute: NavigatorRouter.onGenerateRouters,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_grid_images/domain/services/get_it_service.dart';
import 'package:test_grid_images/ui/resurses/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: constant_identifier_names
  static const TIMEOUT_SECONDS = 2;
  final navigatorService = GetItService.navigatorService;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: TIMEOUT_SECONDS),
      navigatorService.onMain,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Image.asset(
            AppImages.logo,
            width: MediaQuery.of(context).size.width * .5,
          ),
        ),
      ),
    );
  }
}

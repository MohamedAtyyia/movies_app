import 'package:app_movies/core/util/app_router.dart';
import 'package:flutter/material.dart';

import 'core/util/service_locator.dart';


void main() {
  setup();
  runApp( Moives_App(appRouter: AppRouter(),));
}

class Moives_App extends StatelessWidget {
  const Moives_App({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false ,
      onGenerateRoute: appRouter.generatraout,
      theme:ThemeData.dark(),
    );
  }
}
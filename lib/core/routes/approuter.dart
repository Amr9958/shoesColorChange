import 'package:flutter/material.dart';
import 'package:spotrs_manager/core/routes/routes.dart';

import '../../features/login/views/Homepage.dart';
import '../../features/login/views/ui.dart';

String curRoute = '';

class Approuter {
  // late Repository _repository;
  // late Allservicescubit _allservicescubit;
  Approuter() {
    // _repository = Repository(allservices: Allservices());
    // _allservicescubit = Allservicescubit(_repository);
  }
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.Homepage:
        curRoute = Routes.Homepage;
        return MaterialPageRoute(
          builder: (_) =>  ShoeCustomizerApp(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:spotrs_manager/core/routes/approuter.dart';
import 'package:spotrs_manager/core/routes/routes.dart';

void main() {
  runApp(MyApp(
    approuter: Approuter(),
  ));
}

class MyApp extends StatelessWidget {
  final Approuter approuter;
  const MyApp({super.key, required this.approuter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: approuter.generateRoute,
      initialRoute: Routes.Homepage,
      // locale: Locale('ar'),
      // supportedLocales: <Locale>[Locale('ar', 'en')],
    );
  }
}

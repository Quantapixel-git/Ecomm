import 'package:ecom/bottom_navigation/providers/bottom_nav_provider.dart';
import 'package:flutter/material.dart';
import 'package:ecom/route/router.dart' as router;
import 'package:ecom/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavProvider(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Ecommerce',
        theme: AppTheme.lightTheme(context),
        // Dark theme is inclided in the Full template
        themeMode: ThemeMode.light,
        routerConfig: router.Routes.router,
      ),
    );
  }
}

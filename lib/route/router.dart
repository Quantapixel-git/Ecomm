import 'package:ecom/features/notifications%20/views/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecom/bottom_navigation/view/bottom_nav.dart';
import 'package:go_router/go_router.dart';

import 'screen_export.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: FullRouteName.onbord,
    routes: [
      GoRoute(
        path: RouteName.onbordingScreenRoute,
        builder: (context, state) => OnBordingScreen(),
      ),
      GoRoute(
        path: "/auth",
        builder: (context, state) => Container(),
        routes: [
          GoRoute(
            path: RouteName.logInScreenRoute,
            builder: (context, state) => LoginScreen(),
          ),
          GoRoute(
            path: RouteName.signUpScreenRoute,
            builder: (context, state) => SignUpScreen(),
          ),
          GoRoute(
            path: RouteName.passwordRecoveryScreenRoute,
            builder: (context, state) => PasswordRecoveryScreen(),
          ),
        ],
      ),
      GoRoute(
        path: RouteName.homeScreenRoute,
        builder: (context, state) => const BottomNav(),
        routes: [
          GoRoute(
            path: RouteName.productDetailsScreenRoute,
            builder: (context, state) => const ProductDetailsScreen(),
          ),
          GoRoute(
            path: RouteName.discoverScreenRoute,
            builder: (context, state) => const DiscoverScreen(),
          ),
          GoRoute(
            path: RouteName.notificationsScreenRoute,
            builder: (context, state) => const NotificationScreen(),
          ),
        ],
      ),
    ],
  );
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.onbordingScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const OnBordingScreen(),
      );

    case RouteName.logInScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case RouteName.signUpScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      );

    case RouteName.passwordRecoveryScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const PasswordRecoveryScreen(),
      );

    case RouteName.productDetailsScreenRoute:
      return MaterialPageRoute(
        builder: (context) {
          bool isProductAvailable = settings.arguments as bool? ?? true;
          return ProductDetailsScreen(isProductAvailable: isProductAvailable);
        },
      );

    case RouteName.homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    case RouteName.discoverScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const DiscoverScreen(),
      );

    case RouteName.entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const BottomNav(),
      );
    case RouteName.profileScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      );

    case RouteName.preferencesScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const PreferencesScreen(),
      );

    case RouteName.cartScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const CartScreen(),
      );
    default:
      return MaterialPageRoute(
        // Make a screen for undefine
        builder: (context) => const OnBordingScreen(),
      );
  }
}

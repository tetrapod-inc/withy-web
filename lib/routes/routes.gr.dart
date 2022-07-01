// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routes.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<void>(routeData: routeData, child: const HomePage());
    },
    PrivacyRoute.name: (routeData) {
      return MaterialPageX<void>(
          routeData: routeData, child: const PrivacyPage());
    },
    PolicyRoute.name: (routeData) {
      return MaterialPageX<void>(
          routeData: routeData, child: const PolicyPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(PrivacyRoute.name, path: '/privacy'),
        RouteConfig(PolicyRoute.name, path: '/policy')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [PrivacyPage]
class PrivacyRoute extends PageRouteInfo<void> {
  const PrivacyRoute() : super(PrivacyRoute.name, path: '/privacy');

  static const String name = 'PrivacyRoute';
}

/// generated route for
/// [PolicyPage]
class PolicyRoute extends PageRouteInfo<void> {
  const PolicyRoute() : super(PolicyRoute.name, path: '/policy');

  static const String name = 'PolicyRoute';
}

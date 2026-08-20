import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/detail/presentation/screens/detail_screen.dart';
import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
import '../../features/tabs/presentation/screens/tabs_screen.dart';

part 'app_router.g.dart';

final appRouter = GoRouter(initialLocation: '/tabs', routes: $appRoutes);

@TypedGoRoute<OnboardingRoute>(path: '/')
class OnboardingRoute extends GoRouteData with $OnboardingRoute {
  const OnboardingRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnboardingScreen();
}

@TypedGoRoute<TabsRoute>(path: '/tabs')
class TabsRoute extends GoRouteData with $TabsRoute {
  const TabsRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const TabsScreen();
}

@TypedGoRoute<DetailRoute>(path: '/detail/:id')
class DetailRoute extends GoRouteData with $DetailRoute {
  final int id;

  const DetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      DetailScreen(id: id);
}

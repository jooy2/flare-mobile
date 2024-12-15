import 'package:flare/screens/explorer_screen.dart';
import 'package:flare/screens/info_screen.dart';
import 'package:flare/screens/player_screen.dart';
import 'package:flare/screens/settings_screen.dart';
import 'package:go_router/go_router.dart';

enum RouteNames { explorer, player, settings, info }

class AppRouter {
  static final router = GoRouter(initialLocation: '/${RouteNames.explorer.name}', observers: [], routes: [
    GoRoute(
      name: RouteNames.explorer.name,
      path: '/${RouteNames.explorer.name}',
      builder: (context, state) => const ExplorerScreen(),
    ),
    GoRoute(
      name: RouteNames.player.name,
      path: '/${RouteNames.player.name}',
      builder: (context, state) => PlayerScreen(swfFilePath: GoRouterState.of(context).uri.queryParameters['path']!),
    ),
    GoRoute(
      name: RouteNames.settings.name,
      path: '/${RouteNames.settings.name}',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      name: RouteNames.info.name,
      path: '/${RouteNames.info.name}',
      builder: (context, state) => const InfoScreen(),
    ),
  ]);
}

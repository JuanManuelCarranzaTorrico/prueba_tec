import 'package:go_router/go_router.dart';
import 'package:prueba_tec/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/new-post',
      builder: (context, state) => NewPost(),
    ),
    GoRoute(
      path: '/comments',
      builder: (context, state) => CommentsScreen(),
    ),
  ],
);
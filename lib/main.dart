import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tec/config/app_theme.dart';
import 'package:prueba_tec/config/router/app_router.dart';
import 'package:prueba_tec/presentation/providers/color_provider.dart';
import 'package:prueba_tec/presentation/providers/comment_provider.dart';
import 'package:prueba_tec/presentation/providers/post_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider()),
        ChangeNotifierProvider(create: (_) => CommentProvider()),
        ChangeNotifierProvider(create: (_) => ColorProvider()),
      ],
      child: _Material(),
    );
  }
}

class _Material extends StatelessWidget {
  const _Material();

  @override
  Widget build(BuildContext context) {
    final colorProvider = context.watch<ColorProvider>();
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: colorProvider.selectedColor).getTheme(),
    );
  }
}

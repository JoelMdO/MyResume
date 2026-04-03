import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/app/font_manager.dart';
import 'package:resume/config/responsive_routes.dart';
import 'package:resume/cubit/routes_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize a lightweight font availability check.
  await FontManager.init();

  // Enable runtime fetching only if the remote resources were reachable.
  GoogleFonts.config.allowRuntimeFetching = FontManager.remoteAvailable;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Base GoogleFonts Montserrat theme — may or may not fetch remotely
    TextTheme base = GoogleFonts.montserratTextTheme();

    // Ensure local fallback family is used if remote fetching is disabled/unavailable.
    if (!FontManager.remoteAvailable) {
      base = base.copyWith(
        displayLarge: base.displayLarge?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        displayMedium: base.displayMedium?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        displaySmall: base.displaySmall?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        headlineLarge: base.headlineLarge?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        headlineMedium: base.headlineMedium?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        headlineSmall: base.headlineSmall?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        titleLarge: base.titleLarge?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        titleMedium: base.titleMedium?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        titleSmall: base.titleSmall?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        bodyLarge: base.bodyLarge?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        bodyMedium: base.bodyMedium?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        bodySmall: base.bodySmall?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        labelLarge: base.labelLarge?.copyWith(fontFamilyFallback: ['MontserratLocal']),
        labelSmall: base.labelSmall?.copyWith(fontFamilyFallback: ['MontserratLocal']),
      );
    }

    return MaterialApp(
      title: 'Joel Montes de Oca Lopez - Resume',
      theme: ThemeData(
        textTheme: base,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: BlocProvider<NavigationCubit>(
        create: (context) => NavigationCubit(),
        child: const ResponsiveHomePage(
          nameRoute: '/',
        ),
      ),
    );
  }
}

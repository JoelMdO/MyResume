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
        displayLarge: base.displayLarge?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        displayMedium: base.displayMedium?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        displaySmall: base.displaySmall?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        headlineLarge: base.headlineLarge?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        headlineMedium: base.headlineMedium?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        headlineSmall: base.headlineSmall?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        titleLarge: base.titleLarge?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        titleMedium: base.titleMedium?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        titleSmall: base.titleSmall?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        bodyLarge: base.bodyLarge?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        bodyMedium: base.bodyMedium?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        bodySmall: base.bodySmall?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        labelLarge: base.labelLarge?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
        labelSmall: base.labelSmall?.copyWith(fontFamilyFallback: [
          'MontserratLocal',
          'McLarenLocal',
          'InterLocal',
          'NotoSansKhojkiLocal'
        ]),
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

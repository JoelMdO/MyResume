import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/config/responsive_routes.dart';
import 'package:resume/cubit/routes_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joel Montes de Oca Lopez - Resume',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
        useMaterial3: true,
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

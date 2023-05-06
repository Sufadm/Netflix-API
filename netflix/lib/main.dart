import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/bloc/downloads_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presentation/mainpage/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DownloadsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white)),
            scaffoldBackgroundColor: backgroundcolor,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(background: Colors.black)),
        home: ScreenMainPage(),
      ),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

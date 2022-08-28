import 'package:flutter/material.dart';
import 'package:tmdb_app/widgets/auth/auth_widget.dart';
import 'package:tmdb_app/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TMDB',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
      ),
      routes: {
        '/auth': (context) => const AuthWidget(),
        '/auth/main_screen': (context) => const MainScreenWidget(),
      },
      initialRoute: '/auth',
    );
  }
}

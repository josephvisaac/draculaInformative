import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/menu_screen.dart';
import './screens/plot_screen.dart';
import './screens/author.dart';
import './screens/characters_screen.dart';
import './screens/history_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(AppCore());
}

class AppCore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dracula',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: Theme.of(context).textTheme.copyWith(
            bodyText2: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyText2.fontSize * 1.8,
                fontFamily: 'Romanesco')),
        appBarTheme: AppBarTheme(
          color: Colors.black87,
          textTheme: TextTheme(
            headline6: TextStyle(
              fontFamily: 'medieval',
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => MenuScreen(),
        PlotScreen.route: (ctx) => PlotScreen(),
        HistoryScreen.route: (ctx) => HistoryScreen(),
        AuthorScreen.route: (ctx) => AuthorScreen(),
        CharactersScreen.route: (ctx) => CharactersScreen(),
      },
    );
  }
}

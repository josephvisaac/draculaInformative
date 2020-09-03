import 'package:flutter/material.dart';
import './screens/menu_screen.dart';
import 'package:flutter/services.dart';

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
          textTheme: TextTheme(
            headline6: TextStyle(
                fontFamily: 'medieval', fontSize: 22, color: Colors.white),
          ),
        ),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => MenuScreen(),
      },
    );
  }
}

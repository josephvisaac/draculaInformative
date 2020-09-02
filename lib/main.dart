import 'package:flutter/material.dart';
import './screens/menu_screen.dart';
void main() {
  runApp(AppCore());
}

class AppCore extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dracula',
      theme: ThemeData(
        primarySwatch: Colors.teal,

        // visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => MenuScreen(),
      },
      
    );
  }
}


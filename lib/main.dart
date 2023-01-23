import 'package:flutter/material.dart';
import 'package:widget_components/screens/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listview1': (context) => const Listview1Screen(),
        'listview2': (context) => const Listview2Screen(),
        'alert': (context) => const AlertScreen(),
        'card': (context) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings);
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}

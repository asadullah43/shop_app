import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: theme.copyWith(
        textTheme: theme.textTheme.apply(fontFamily: 'Lato'),
        //secondry for accent color
        colorScheme: theme.colorScheme
            .copyWith(primary: Colors.pink, secondary: Colors.deepOrange),
        appBarTheme: AppBarTheme(
          backgroundColor:
              Colors.pink, // Set the background color of the AppBar
          titleTextStyle: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      home: const ProductOverviewScreen(),
    );
  }
}

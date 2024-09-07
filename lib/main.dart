// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:just_as_good/providers/product_provider.dart';
// import 'package:just_as_good/widgets/custom_nav_bar.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './screens/prod_detail_screen.dart';
import './widgets/custom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => ProductProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          fontFamily: 'Asap',
          hintColor: Colors.orange, // Add accent color here
        ),
        home: CustomHome(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          // CartScreen.routename: (ctx) => CartScreen(),
          // OrderScreen.routename: (ctx) => OrderScreen()
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_delivery/ui/screens/details.dart';
import 'package:shop_delivery/ui/screens/home.dart';
import 'package:shop_delivery/ui/screens/orders.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OpenSans',
      ),
      home: HomeScreen(),
      routes: {
        'orderscreen' : (ctx) => OrdersScreen()
      },
    );
  }
}

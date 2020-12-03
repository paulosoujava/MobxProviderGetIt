import 'package:flutter/material.dart';
import 'package:mobx_study/controller.dart';
import 'package:mobx_study/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(create: (_) => Controller()),
      ],
      child: MaterialApp(
        title: 'MoBX',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(title: 'MOBX & PROVIDER'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'package:mobx_study/controller.dart';
import 'package:mobx_study/models/body.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<Controller>();

    return Scaffold(
        appBar: AppBar(
          title: Observer(
            builder: (_) {
              return Text(controller.isValid ? 'Validate' : 'Not Valid');
            },
          ),
        ),
        body: BodyWidget());
  }
}

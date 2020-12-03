import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'package:mobx_study/controller.dart';
import 'package:mobx_study/models/body.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

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

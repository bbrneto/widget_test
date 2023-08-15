import 'package:estilizacao_componentes/components/sections/actions.dart';
import 'package:estilizacao_componentes/components/sections/header.dart';
import 'package:estilizacao_componentes/components/sections/points_exchange.dart';
import 'package:estilizacao_componentes/components/sections/recent_activities.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Future<String> api;

  const Home({required this.api, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(
              api: this.api,
            ), // cuidado com o const
            RecentActivity(),
            ActionsSection(),
            PointsExchange(),
          ],
        ),
      ),
    );
  }
}

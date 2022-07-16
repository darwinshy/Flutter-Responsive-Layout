import 'package:flutter/material.dart';
import '/components/Dashboard/dashboard_grid_builder.dart';
import '/components/dashboard/dashboard_body_list_builder.dart';
import '/components/drawer.dart';
import '/components/theme.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Row(children: [
        drawer,
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  DashboardGridBuilder(crossAxisCount: 4),
                  DashboardBodyListBuilder(itemCount: 10),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              DashboardBodyListBuilder(itemCount: 5),
            ],
          ),
        ))
      ]),
    );
  }
}

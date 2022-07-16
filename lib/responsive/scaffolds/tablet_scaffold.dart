import 'package:flutter/material.dart';
import '/components/Dashboard/dashboard_grid_builder.dart';
import '/components/dashboard/dashboard_body_list_builder.dart';
import '/components/appbar.dart';
import '/components/drawer.dart';
import '/components/theme.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBar,
      drawer: drawer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: const [
              DashboardGridBuilder(crossAxisCount: 4),
              DashboardBodyListBuilder(itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}

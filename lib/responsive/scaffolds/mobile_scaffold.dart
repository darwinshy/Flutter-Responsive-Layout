import 'package:flutter/material.dart';
import '/components/dashboard/dashboard_body_list_builder.dart';
import '/components/dashboard/dashboard_grid_builder.dart';
import '/components/appbar.dart';
import '/components/drawer.dart';
import '/components/theme.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBar,
      drawer: drawer,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              DashboardGridBuilder(crossAxisCount: 2),
              DashboardBodyListBuilder(itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}

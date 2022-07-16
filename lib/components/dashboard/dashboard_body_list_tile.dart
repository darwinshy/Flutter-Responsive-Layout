import 'package:flutter/material.dart';
import '/components/theme.dart';

class DashboardBodyListTile extends StatelessWidget {
  const DashboardBodyListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(width: double.infinity, height: 100, color: tileColor),
    );
  }
}

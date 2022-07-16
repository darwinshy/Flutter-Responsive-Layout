import 'package:flutter/material.dart';
import '/components/dashboard/dashboard_body_list_tile.dart';

class DashboardBodyListBuilder extends StatelessWidget {
  final int itemCount;
  const DashboardBodyListBuilder({
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        itemBuilder: (context, index) => const DashboardBodyListTile());
  }
}

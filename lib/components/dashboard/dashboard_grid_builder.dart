import 'package:flutter/material.dart';
import '/components/Dashboard/dashboard_grid_tile.dart';

class DashboardGridBuilder extends StatelessWidget {
  final int crossAxisCount;

  const DashboardGridBuilder({
    Key? key,
    required this.crossAxisCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount),
        itemBuilder: ((context, index) {
          return const DashboardGridTile();
        }));
  }
}

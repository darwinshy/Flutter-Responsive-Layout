import 'package:flutter/material.dart';
import 'responsive/scaffolds/desktop_scaffold.dart';
import 'responsive/scaffolds/mobile_scaffold.dart';
import '/responsive/responsive_layout.dart';
import 'responsive/scaffolds/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          desktopScaffold: DesktopScaffold(),
          tabletScaffold: TabletScaffold()),
    );
  }
}

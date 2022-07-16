import 'package:flutter/material.dart';
import '/components/theme.dart';

List<ListTile> drawerItems = <ListTile>[
  const ListTile(
    title: Text('D A S H B O A R D'),
    leading: Icon(Icons.home),
  ),
  const ListTile(
    title: Text('S E T T I N G S'),
    leading: Icon(Icons.settings),
  ),
  const ListTile(
    title: Text('A B O U T'),
    leading: Icon(Icons.info),
  ),
];

Drawer drawer = Drawer(
    elevation: 0,
    backgroundColor: drawerBgColor,
    child: Column(children: [
      const DrawerHeader(child: Icon(Icons.favorite)),
      ...drawerItems,
    ]));

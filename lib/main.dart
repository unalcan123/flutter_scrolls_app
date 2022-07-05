import 'package:flutter/material.dart';
import 'package:flutter_scrolls_app/card_list_tile.dart';

import 'list_view_kullanimi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewKullanimi(),
    );
  }
}

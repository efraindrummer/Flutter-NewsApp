import 'package:flutter/material.dart';
import 'package:noticiasapp/src/pages/tabs_pages.dart';
import 'package:noticiasapp/src/theme/tema.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: miTema,
      debugShowCheckedModeBanner: false,
      home: TabsPage()
    );
  }
}
import 'package:flutter/material.dart';
import 'package:noticiasapp/src/pages/tabs_pages.dart';
import 'package:noticiasapp/src/services/news_service.dart';
import 'package:noticiasapp/src/theme/tema.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsService()),
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: miTema,
        debugShowCheckedModeBanner: false,
        home: TabsPage()
      ),
    );
  }
}
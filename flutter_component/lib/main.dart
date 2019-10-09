import 'package:flutter/material.dart';

import 'package:flutter_component/src/pages/home_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
     // home: HomePageTem()
     home: HomePage()
    );
  }
}

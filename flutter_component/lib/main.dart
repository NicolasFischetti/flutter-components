import 'package:flutter/material.dart';

import 'package:flutter_component/src/pages/alert_page.dart';
import 'package:flutter_component/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
     // home: HomePageTem()
     // home: HomePage()
     initialRoute: '/',
     routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings setttings) {
        return MaterialPageRoute(
          builder: (BuildContext contex) => AlertPage()
        );
      },
    );
  }
}


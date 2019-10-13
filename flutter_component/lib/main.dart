import 'package:flutter/material.dart';

import 'package:flutter_component/src/pages/alert_page.dart';
import 'package:flutter_component/src/routes/routes.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
     ],
      supportedLocales: [
       const Locale('en', 'US'), // English
       const Locale('es', 'ES')
     ],
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


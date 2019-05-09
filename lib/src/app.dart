import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sign_in/src/screens/home.dart';

class MVCApp extends AppMVC {
  static MaterialApp _app;

  final appTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'DIN',
    // primaryColorDark: const Color(0xff000000),
    // primaryColorLight: const Color(0xff000000),
    // primaryColor: const Color(0xff000000),
    // accentColor: const Color(0xff000000),
    // dividerColor: const Color(0xffBDBDBD),
  );

  Widget build(BuildContext context) {
    _app = MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'atta app',
        theme: appTheme,
        home: Home(),
        routes: <String, WidgetBuilder>{
          // "/Splash": (context) => SplashScreen(),
          // "/Home": (context) => LayoutScreen(),
          // "/Login": (context) => LoginScreen(),
          // "/News": (context) => NewsScreen(),
          // '/Event': (context) => EventScreen(),
          // '/About': (context) => ContactUsScreen(),
          // '/Favorite': (context) => FavoriteScreen(),
          // '/Profile': (context) => ProfileScreen(),
          // '/EventTeket': (context) => EventTeket(),
          // '/TicketDetail': (context) => TicketDetailScreen(),
          // '/BranchLocation': (context) => BranchLocationScreen(),
        },
        builder: (BuildContext context, Widget child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Builder(
              builder: (BuildContext context) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaleFactor: 1.0,
                    ),
                    child: child);
              },
            ),
          );
        });
    return _app;
  }
}
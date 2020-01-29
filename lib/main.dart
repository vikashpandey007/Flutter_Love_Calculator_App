import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:love_culculator/Homepage.dart';
import 'package:splashscreen/splashscreen.dart';

main() {
  runApp(DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => new ThemeData(
            primarySwatch: Colors.indigo,
            brightness: brightness,
          ),
      themedWidgetBuilder: (context, theme) {
        return new MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: new Myapp(),
        );
      }));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 2,
        navigateAfterSeconds: new Homepage(),
        image: Image(
          image: AssetImage("assets/love.png"),
        ),
        title: new Text(
          'LOVE CALCULATOR ',
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        backgroundColor: Colors.pink,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 200.0,
        loaderColor: Colors.white);
  }
}
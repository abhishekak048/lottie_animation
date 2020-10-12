import 'package:flutter/material.dart';
import 'package:flutter_gif_trail/theme%20manger.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(DarkMode());

class DarkMode extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeManager>(
      create: (context) => ThemeManager(),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    return MaterialApp(
      home: MyApp(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeManager.themeMode,
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: StartScreen(),
      image: new Image.network(
          'https://assets4.lottiefiles.com/packages/lf20_NlRHew.json'),
      styleTextUnderTheLoader: new TextStyle(),
      backgroundColor: Colors.amberAccent,
      photoSize: 225,
      loaderColor: Colors.white,
      onClick: () => print("Flutter Egypt"),
    );
  }
}

class StartScreen extends StatelessWidget {
  StartScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Mode"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

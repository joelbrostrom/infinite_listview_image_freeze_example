import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    /// Freezes app and prevents it from hot reload/rebuild until app is manually terminated.
    Widget image = Image.asset('assets/repeatable-forest.jpg', fit: BoxFit.fitHeight);

    /// Wrapping Image in a FittedBox works, but with a lot of exceptions/warnings
    Widget fittedWrappedImage =
        FittedBox(child: Image.asset('assets/repeatable-forest.jpg'), fit: BoxFit.fitHeight);

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      controller: ScrollController(),
      itemBuilder: (BuildContext context, int index) {
        return image; //fittedWrappedImage;  <-- choose which one to test.
      },
    );
  }
}

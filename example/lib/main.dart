/*
Use this package as a library

  1. Depend on it
    Add this to your package's pubspec.yaml file:

    dependencies:
      flutter_adid_plugin: ^0.0.1
  
  2. Install it
      You can install packages from the command line:

      with Flutter:

      > flutter pub get

  3. Import it
    Now in your Dart code, you can use:

    > import 'package:flutter_adid_plugin/flutter_adid_plugin.dart';

*/

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_adid_plugin/flutter_adid_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String idString = 'Unknown';

  @override
  void initState() {
    super.initState();
    initGetIdState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initGetIdState() async {
    String _idString;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      _idString = await FlutterAdidPlugin.getADIDOrIDFA;
    } on PlatformException {
      _idString = 'Failed to get id string.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      idString = _idString;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('adid/idfa is: $idString\n'),
        ),
      ),
    );
  }
}

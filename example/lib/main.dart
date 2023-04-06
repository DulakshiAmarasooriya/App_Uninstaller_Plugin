import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:uninstaller/uninstaller.dart';
import 'package:uninstaller/uninstaller_method_channel.dart';
import 'package:uninstaller/uninstaller_platform_interface.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _uninstallStatus = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  onPressed: () async {
                    try {
                      var isUninstalled = await Uninstaller.Unintall(
                          "com.example.misapplication");
                      setState(() {
                        _uninstallStatus = isUninstalled
                            ? "Successfully Uninstalled!"
                            : "Cancelled by user";
                      });
                    } on Exception {
                      _uninstallStatus = "Some error occurred";
                    }
                  },
                  child: Text(
                    "Uninstall Test Application",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _uninstallStatus,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                )
              ]),
        ),
      ),
    );
  }
}




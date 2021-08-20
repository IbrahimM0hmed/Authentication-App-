import 'package:flutter/material.dart';
import 'MyAccount.dart';

void main() {
  runApp(MaterialApp(
    title: 'SHOW BOX',
    home: MyAccount(),
    theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(color: Colors.purple)),
    debugShowCheckedModeBanner: false,
  ));
}

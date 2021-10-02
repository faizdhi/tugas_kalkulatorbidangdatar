import 'package:flutter/material.dart';
import 'dart:math';

import 'package:zzz/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //persegi
  double fieldpanjangpersegi, fieldlebarpersegi;
  String luaspersegi = "KOSONG", kelilingpersegi = "KOSONG";
  // lingkaran
  double diameter;
  String luaslingkaran = "KOSONG", kelilinglingkaran = "KOSONG";
  //segitiga
  double alassegitiga, tinggisegitiga, hitungkeliling;
  String luassegitiga = "KOSONG", kelilingsegitiga = "KOSONG";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Kalkulator());
  }
}

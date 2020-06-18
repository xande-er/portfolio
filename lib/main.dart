import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:portfolio/web_site.dart';

void main() async {
  runApp(AppWrapper());
}

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

load(context) async {
  final imagePrilla = await rootBundle.load('images/prilla.gif'),
      imagePaint = await rootBundle.load('images/paint.gif'),
      imageDietolog = await rootBundle.load('images/dietolog.gif'),
      imageAutoRia = await rootBundle.load('images/autoRiaBot.gif'),
      imageFlutter = await rootBundle.load('images/flutter.png'),
      imageAboutUs = await rootBundle.load('images/aboutUs.png'),
      logo = await rootBundle.load('images/logo.png');

  await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => WebSite(
          imageAutoRia: imageAutoRia,
          imageDietolog: imageDietolog,
          imagePaint: imagePaint,
          imagePrilla: imagePrilla,
          imageAboutUs: imageAboutUs,
          imageFlutter: imageFlutter,
            logo: logo
        ),
      ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    load(context);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.blueGrey.shade700,
        body: SpinKitSquareCircle(
          size: 80,
          color: Colors.white70,
        ));
  }
}

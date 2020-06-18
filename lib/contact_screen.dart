import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  final maxWidth;
  final logo;

  ContactScreen({this.maxWidth, this.logo});

  @override
  Widget build(BuildContext context) =>
      maxWidth >= 768 ? decktopVersion(context) : mobileVersion(context);

  Widget decktopVersion(context) => Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.memory(logo.buffer.asUint8List()),
            Text(
              'Наші контакти',
              style: GoogleFonts.arvo(fontSize: 44, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Україна, Київ\nsashamotluk@gmail.com\n+380673717016\n',
                      style: GoogleFonts.roboto(
                          fontSize: 32, color: Colors.white)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    launch('https://t.me/xand_er');
                  },
                  child: Icon(
                    MdiIcons.telegram,
                    color: Colors.white,
                    size: 54,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () {
                    launch('mailto:sashamotluk@gmail.com');
                  },
                  child: Icon(
                    MdiIcons.email,
                    color: Colors.white,
                    size: 54,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () async {
                    launch('tel:+380673717016');
                  },
                  child: Icon(
                    MdiIcons.phone,
                    color: Colors.white,
                    size: 54,
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget mobileVersion(context) => Expanded(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Image.memory(logo.buffer.asUint8List()),
                Text(
                  'Наші контакти',
                  style: GoogleFonts.arvo(fontSize: 30, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Україна, Київ\nsashamotluk@gmail.com\n+380673717016\n',
                          style: GoogleFonts.roboto(
                              fontSize: 24, color: Colors.white)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        launch('https://t.me/xand_er');
                      },
                      child: Icon(
                        MdiIcons.telegram,
                        color: Colors.white,
                        size: 54,
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    InkWell(
                      onTap: () {
                        launch('mailto:sashamotluk@gmail.com');
                      },
                      child: Icon(
                        MdiIcons.email,
                        color: Colors.white,
                        size: 54,
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    InkWell(
                      onTap: () async {
                        launch('tel:+380673717016');
                      },
                      child: Icon(
                        MdiIcons.phone,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      );
}

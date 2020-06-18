import 'package:flutter/material.dart';
import 'about_us_screen.dart';
import 'contact_screen.dart';
import 'gif_screen.dart';

class WebSite extends StatefulWidget {
  final imagePrilla;
  final imagePaint;
  final imageDietolog;
  final imageAutoRia;
  final imageFlutter;
  final imageAboutUs;
  final logo;

  const WebSite(
      {Key key,
      this.imagePrilla,
      this.imageAutoRia,
      this.imageDietolog,
      this.imagePaint,
      this.imageAboutUs,
      this.imageFlutter,
      this.logo})
      : super(key: key);

  @override
  _WebSiteState createState() => _WebSiteState();
}

class _WebSiteState extends State<WebSite> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade700,
            title: const Text('  Xander development studio'),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                right: 20, left: 20, top: 5, bottom: 5),
                            child: Container(
                              height: 1,
                              color: Colors.blueGrey.shade400,
                            )),
                        TabBar(
                          indicatorColor: Colors.white,
                          isScrollable: true,
                          tabs: choices.map((Choice choice) {
                            return Tab(
                              text: choice.title,
                            );
                          }).toList(),
                        ),
                      ],
                    )))),
        body: TabBarView(
          children: choices.map((Choice choice) {
            return ChoiceCard(
                choice: choice,
                setState: setState,
                imagePaint: widget.imagePaint,
                imageAutoRia: widget.imageAutoRia,
                imageDietolog: widget.imageDietolog,
                imagePrilla: widget.imagePrilla,
                imageFlutter: widget.imageFlutter,
                imageAboutUs: widget.imageAboutUs,
                logo: widget.logo);
          }).toList(),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title});

  final String title;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Про нас'),
  const Choice(title: 'Гаралея'),
  const Choice(title: 'Наші контакти'),
];

class ChoiceCard extends StatelessWidget {
  final setState;
  final Choice choice;
  final imageAutoRia;
  final imageDietolog;
  final imagePaint;
  final imagePrilla;
  final imageFlutter;
  final imageAboutUs;
  final logo;

  const ChoiceCard(
      {Key key,
      this.choice,
      this.setState,
      this.imagePrilla,
      this.imagePaint,
      this.imageDietolog,
      this.imageAutoRia,
      this.imageFlutter,
      this.imageAboutUs,
      this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      print(constraints.maxWidth);
      return Card(
        color: Colors.blueGrey,
        child: Column(
          children: <Widget>[
            if (choice.title == 'Про нас')
              AboutUsScreen(
                maxWidth: constraints.maxWidth,
                imageAboutUs: imageAboutUs,
                imageFlutter: imageFlutter,
              ),
            if (choice.title == 'Гаралея')
              GifScreen(
                maxWidth: constraints.maxWidth,
                imagePrilla: imagePrilla,
                imageDietolog: imageDietolog,
                imageAutoRia: imageAutoRia,
                imagePaint: imagePaint,
              ),
            if (choice.title == 'Наші контакти')
              ContactScreen(maxWidth: constraints.maxWidth, logo: logo)
          ],
        ),
      );
    });
  }
}

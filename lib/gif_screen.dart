import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class GifScreen extends StatefulWidget {
  final maxWidth;
  final imageAutoRia;
  final imageDietolog;
  final imagePaint;
  final imagePrilla;

  GifScreen(
      {this.maxWidth,
      this.imagePrilla,
      this.imageDietolog,
      this.imageAutoRia,
      this.imagePaint});

  var autoRiaBotButton = false;

  @override
  _GifScreenState createState() => _GifScreenState();
}

class _GifScreenState extends State<GifScreen> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: widget.maxWidth >= 1342
                ? const EdgeInsets.only(left: 10, right: 10)
                : const EdgeInsets.only(left: 10, right: 20),
            child: SizedBox(
              height: widget.maxWidth >= 1342 ? height - 114 : height - 138,
              child: PageView(
                  scrollDirection: Axis.vertical,
                  controller: controller,
                  children: [
                    Card(
                      color: Colors.blueGrey.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: widget.maxWidth >= 1342
                          ? gif0Letter()
                          : mobileVersion(
                              widget.imagePaint,
                              'Малювалка для дітей',
                              'Даний додаток було адаптовано під всі типи екранів.'
                                  ' При відкриванні даного додатка і доступу до інтернету,'
                                  ' зразу йде підключення до серверу, де '
                                  'перевіряється наявність оновлень, та проходить скачування нових пакетів.',
                            ),
                    ),
                    Card(
                      color: Colors.blueGrey.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: widget.maxWidth >= 1342
                          ? decktopVersion(
                              widget.imagePrilla,
                              'Prilla',
                              'Цей додаток створено для того, щоб люди могли '
                                  'заробляти не величкі кишенькові гроші, граючи в різні '
                                  'класичні ігри. В додатку також підключена '
                                  'реклама, за яку ви можете отримати винагороду, '
                                  'та онлайн оплата. Також є можливість додавати '
                                  'друзів, та викликати їх на бій. В скорому часі '
                                  'буде добавлено рейтинг, як серед всіх користувачів, так і друзів, та ігровий чат.',
                            )
                          : mobileVersion(
                              widget.imagePrilla,
                              'Prilla',
                              'Цей додаток створено для того, щоб люди могли '
                                  'заробляти не величкі кишенькові гроші, граючи в різні '
                                  'класичні ігри. В додатку також підключена '
                                  'реклама, за яку ви можете отримати винагороду, '
                                  'та онлайн оплата. Також є можливість додавати '
                                  'друзів, та викликати їх на бій. В скорому часі '
                                  'буде добавлено рейтинг, як серед всіх користувачів, так і друзів, та ігровий чат.',
                            ),
                    ),
                    Card(
                      color: Colors.blueGrey.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: widget.maxWidth >= 1342
                          ? decktopVersion(
                              widget.imageAutoRia,
                              'Auto.ria bot',
                              'Даний додаток був створений для рекламної компанії. '
                                  'Він містить саме одну головну функцію, це '
                                  'парсер номерів із вибраного розділу, та '
                                  'розсилка смс-повідомлення на номер телефону.')
                          : mobileVersion(
                              widget.imageAutoRia,
                              'Auto.ria bot',
                              'Даний додаток був створений для рекламної компанії. '
                                  'Він містить саме одну головну функцію, це '
                                  'парсер номерів із вибраного розділу, та '
                                  'розсилка смс-повідомлення на номер телефону.'),
                    ),
                    Card(
                      color: Colors.blueGrey.shade400,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      child: widget.maxWidth >= 1342
                          ? decktopVersion(
                              widget.imageDietolog,
                              'Кишеньковий дієтолог',
                              "Додаток для тих, то піклується про своє "
                                  "здоров'я, та слідкує за тим що він їсть. "
                                  "Ви можете подивитись графік за останні 7 "
                                  "днів активних тренировок.",
                            )
                          : mobileVersion(
                              widget.imageDietolog,
                              'Кишеньковий дієтолог',
                              "Додаток для тих, то піклується про своє "
                                  "здоров'я, та слідкує за тим що він їсть. "
                                  "Ви можете подивитись графік за останні 7 "
                                  "днів активних тренировок.",
                            ),
                    ),
                  ]),
            ),
          ),
          Align(
            alignment: widget.maxWidth >= 1342
                ? Alignment.centerRight
                : Alignment(1.3, 0),
            child: Column(
              children: [
                SizedBox(height: 100),
                RotationTransition(
                  turns: AlwaysStoppedAnimation(90 / 360),
                  child: Container(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Color(0xff6985E9),
                        expansionFactor: 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget gif0Letter() => Column(
        children: [
          Text(
            'Наші проекти',
            style: GoogleFonts.arvo(fontSize: 44, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.memory(widget.imagePaint.buffer.asUint8List()),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Малювалка для дітей',
            style: GoogleFonts.arvo(fontSize: 44, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Row(
              children: [
                Expanded(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                'Даний додаток було адаптовано під всі типи екранів.'
                                ' При відкриванні даного додатка і доступу до інтернету,'
                                ' зразу йде підключення до серверу, де '
                                'перевіряється наявність оновлень, та проходить скачування нових пакетів.',
                            style: GoogleFonts.roboto(
                                fontSize: 32, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget mobileVersion(ico, name, text) {
    bool activeButt = false;
    return StatefulBuilder(builder: (_, inSetState) {
      return Column(
        children: [
          if (name == 'Малювалка для дітей')
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 20),
              child: Text(
                'Наші проекти',
                style: GoogleFonts.arvo(fontSize: 26, color: Colors.white),
              ),
            ),
          Stack(children: [
            if (activeButt)
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    MdiIcons.closeOutline,
                    color: Colors.white70,
                  ),
                  onPressed: () => inSetState(() {
                    activeButt = !activeButt;
                  }),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  name,
                  //   'Auto.ria bot',
                  style: GoogleFonts.arvo(fontSize: 26, color: Colors.white),
                ),
              ),
            ),
          ]),
          if (!activeButt)
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.memory(ico.buffer.asUint8List()),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            inSetState(() {
                              activeButt = !activeButt;
                            });
                          },
                          icon: Icon(MdiIcons.informationOutline,
                              color: Colors.white70),
                        ),
                      ),
                    ],
                  )),
            ),
          if (activeButt)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: text,
                              style: GoogleFonts.roboto(
                                  fontSize: 20, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        ],
      );
    });
  }

  Widget decktopVersion(ico, name, text) => Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Image.memory(ico.buffer.asUint8List()),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: GoogleFonts.arvo(fontSize: 44, color: Colors.white),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                            text: text,
                            style: GoogleFonts.roboto(
                                fontSize: 32, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
}

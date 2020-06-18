import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatefulWidget {
  final maxWidth;
  final imageFlutter;
  final imageAboutUs;

  AboutUsScreen({this.maxWidth, this.imageAboutUs, this.imageFlutter});

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) =>
      widget.maxWidth >= 1342 ? decktopVersion(context) : mobileVersion(context);

  Widget decktopVersion(context) => Expanded(
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Center(
                          child: Column(
                        children: [
                          Text(
                            'Про нас',
                            style: GoogleFonts.arvo(
                                fontSize: 44, color: Colors.white),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Дедалі більше користувачів переходить виключно'
                                          ' на мобільні пристрої, тому кожна прогресивна '
                                          'компанія включає в план стратегічного розвитку '
                                          'та зміцнення каналів комунікації з клієнтами '
                                          'розробку мобільних версій сайтів та мобільних '
                                          'додатків.',
                                      style: GoogleFonts.roboto(
                                          fontSize: 32, color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Ми створюємо мобільні продукти з легким'
                                          ' дизайном та зрозумілим функціоналом, які'
                                          ' здатні суттєво збільшити вашу аудиторію.',
                                      style: GoogleFonts.roboto(
                                          fontSize: 32, color: Colors.white)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 10),
                      child: Image.memory(
                          widget.imageAboutUs.buffer.asUint8List()),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 20, top: 100, left: 65, right: 65),
                      child: Image.memory(
                          widget.imageFlutter.buffer.asUint8List())),
                ),
                Expanded(
                  child: Center(
                      child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        'Платформа',
                        style:
                            GoogleFonts.arvo(fontSize: 44, color: Colors.white),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Flutter - молода, але дуже '
                                      'перспективна платформа, вже привернула до'
                                      ' себе увагу великих компаній, які запустили'
                                      ' свої додатки. Цікава ця платформа своєю '
                                      'простотою порівнянної з розробкою веб-додатків,'
                                      ' і швидкістю роботи на рівні з нативними додатками.'
                                      ' Висока продуктивність програми і швидкість розробки.',
                                  style: GoogleFonts.roboto(
                                      fontSize: 32, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Особлива унікальність дані платформи,'
                                      ' що створений проект можна компілювати '
                                      'на всі популярні пристрої, такі як:\n'
                                      '     - android\n'
                                      '     - ios\n'
                                      '     - web\n'
                                      '     - desktop',
                                  style: GoogleFonts.roboto(
                                      fontSize: 32, color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            )
          ],
        ),
      );

  Widget mobileVersion(context) => Expanded(
        child: ListView(
          children: [
            Column(children: [
              SizedBox(height: 20),
              Text(
                'Про нас',
                style: GoogleFonts.arvo(fontSize: 30, color: Colors.white),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                child: Image.memory(widget.imageAboutUs.buffer.asUint8List()),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Дедалі більше користувачів переходить виключно'
                              ' на мобільні пристрої, тому кожна прогресивна '
                              'компанія включає в план стратегічного розвитку '
                              'та зміцнення каналів комунікації з клієнтами '
                              'розробку мобільних версій сайтів та мобільних '
                              'додатків.',
                          style: GoogleFonts.roboto(
                              fontSize: 22, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Ми створюємо мобільні продукти з легким'
                              ' дизайном та зрозумілим функціоналом, які'
                              ' здатні суттєво збільшити вашу аудиторію.',
                          style: GoogleFonts.roboto(
                              fontSize: 22, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Платформа',
                style: GoogleFonts.arvo(fontSize: 27, color: Colors.white),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: Image.memory(widget.imageFlutter.buffer.asUint8List()),
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Flutter - молода, але дуже '
                              'перспективна платформа, вже привернула до'
                              ' себе увагу великих компаній, які запустили'
                              ' свої додатки. Цікава ця платформа своєю '
                              'простотою порівнянної з розробкою веб-додатків,'
                              ' і швидкістю роботи на рівні з нативними додатками.'
                              ' Висока продуктивність програми і швидкість розробки.',
                          style: GoogleFonts.roboto(
                              fontSize: 22, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Особлива унікальність дані платформи,'
                              ' що створений проект можна компілювати '
                              'на всі популярні пристрої, такі як:\n\n'
                              '  * android\n'
                              '  * ios\n'
                              '  * web\n'
                              '  * desktop',
                          style: GoogleFonts.roboto(
                              fontSize: 22, color: Colors.white)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ]),
          ],
        ),
      );
}

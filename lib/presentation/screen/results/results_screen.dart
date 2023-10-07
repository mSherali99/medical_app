import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/utils/constants.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({super.key});

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
              bottom: 12, child: Image.asset("assets/images/ic_effect.png")),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/icons/ic_logo.svg"),
                      GestureDetector(
                        onTap: () async {
                          if (context.locale == Locale("uz")) {
                            context.setLocale(const Locale("ru"));
                          } else {
                            context.setLocale(const Locale("uz"));
                          }
                        },
                        child: Container(
                          width: 68,
                          height: 27,
                          alignment: Alignment.center,
                          decoration: ShapeDecoration(
                            color: secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.50),
                            ),
                          ),
                          child: Text(
                            "otherLanguage".tr(),
                            style: TextStyle(color: secondaryTextColor),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          // bottom: 0,
                          // left: 0,
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.25),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(
                                    vertical: 24, horizontal: 24),
                                // margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'result'.tr(),
                                        style: TextStyle(
                                          color: Color(0xFF109F9A),
                                          fontSize: 20,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.60,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Граница: Образование делится от центра на 8равных сегментов. В каждом сегменте отмечаются все пигментные изменения. При наличии явных изменений во всех сегментах насчитывается максимальное количество баллов.",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          // bottom: 0,
                          // left: 0,
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: secondaryColor.withOpacity(0.25),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: secondaryColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(vertical: 16),
                                // margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: secondaryColor.withOpacity(1),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "80 " + 'point'.tr(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.54,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          // bottom: 0,
                          // left: 0,
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.25),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(
                                    vertical: 24, horizontal: 24),
                                // margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'conclusion'.tr(),
                                        style: TextStyle(
                                          color: Color(0xFF109F9A),
                                          fontSize: 20,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: -0.60,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "Граница: Образование делится от центра на 8равных сегментов. В каждом сегменте отмечаются все пигментные изменения.",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          // bottom: 0,
                          // left: 0,
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(0.25),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              SizedBox(
                                height: 8,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          // bottom: 20,
                          // left: 0,
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(
                                    vertical: 24, horizontal: 12),
                                // margin: EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(1),
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  children: [
                                    Container(
                                        // padding: EdgeInsets.symmetric(horizontal: 8),
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 70,
                                                height: 70,
                                                child: Image.asset(
                                                    "assets/images/ic_avatar.png")),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Др Исмаил Зокиров Анварович',
                                                      style: TextStyle(
                                                        color: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge!
                                                            .color,
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Container(
                                                      // width:MediaQuery.of(context).size.width,
                                                      child: Text(
                                                        'дерматолог',
                                                        style: TextStyle(
                                                          color: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .bodySmall!
                                                              .color!
                                                              .withOpacity(
                                                                  0.6000000238418579),
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'SF Pro Display',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 8,
                                                    ),
                                                    Text.rich(
                                                      TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: 'тел: ',
                                                            style: TextStyle(
                                                              color: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .color!
                                                                  .withOpacity(
                                                                      0.6000000238418579),
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 0.08,
                                                              letterSpacing:
                                                                  -0.54,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                '+998 99 123 77 77',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xCC1C52E0),
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 0.08,
                                                              letterSpacing:
                                                                  -0.54,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        )),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/ic_telegram.svg"),
                                        SizedBox(width: 14),
                                        SvgPicture.asset(
                                            "assets/icons/ic_facebook.svg"),
                                        SizedBox(width: 14),
                                        SvgPicture.asset(
                                            "assets/icons/ic_instagram.svg")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

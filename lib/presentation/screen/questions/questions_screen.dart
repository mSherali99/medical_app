import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/presentation/components/colors.dart';
import 'package:medical_app/presentation/screen/questions/question_bloc.dart';
import 'package:medical_app/presentation/screen/short_questions/short_questions_screen.dart';
import 'package:medical_app/utils/constants.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  final block = QuestionBloc();

  @override
  void initState() {
    block.add(Load());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Color? selectedColor;
    return SafeArea(
      child: BlocProvider.value(
        value: block,
        child: BlocBuilder<QuestionBloc, QuestionState>(
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              body: Padding(
                padding: EdgeInsets.only(top: 16),
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
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
                      ),
                      SizedBox(height: 24),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                width: MediaQuery.of(context).size.width,
                                height: 90,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.30000001192092896),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                width: MediaQuery.of(context).size.width,
                                height: 83,
                                decoration: ShapeDecoration(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 26),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Theme.of(context).primaryColor),
                              alignment: Alignment.center,
                              child: Text(
                                "colorQuestion${state.question}".tr(),
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color,
                                  fontSize: 20,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                  letterSpacing: -0.60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: ColorsRow(
                         colorList:state.colorList,
                          selectedItem: (color) {
                            block.add(SelectVariant(selectedColor: color, context: context));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              width: MediaQuery.of(context).size.width,
                              height: 64,
                              decoration: ShapeDecoration(
                                color: Color(0x7F109F9A).withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Color(0x7F109F9A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  color: secondaryColor),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                      "assets/icons/ic_picture.svg"),
                                  Text(
                                    'insertPhoto'.tr(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.24,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                                child:
                                    Image.asset("assets/images/ic_effect.png")),
                          ],
                        ),
                      ),
                      SizedBox(height: 24)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

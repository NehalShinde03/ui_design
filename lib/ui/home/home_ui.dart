import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:ui_design/common_value/common_color.dart';
import 'package:ui_design/common_value/common_images.dart';
import 'package:ui_design/common_value/common_value.dart';
import 'package:ui_design/common_widget/common_container.dart';
import 'package:ui_design/common_widget/common_outline_button.dart';
import 'package:ui_design/common_widget/common_text.dart';
import 'package:ui_design/ui/home/home_cubit.dart';
import 'package:ui_design/ui/home/home_state.dart';
import 'package:ui_design/ui/view_profile/view_profile_ui.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  static const String routeName = "/home_ui";

  static Widget builder(BuildContext buildContext) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeState()),
      child: const HomeUi(),
    );
  }

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            Navigator.pushNamed(context, ViewProfileUi.routeName);
            print("floating action button");
          },
          child: Container(
            width: Spacing.xxxLarge * 2,
            height: Spacing.xxxLarge * 2,
            padding: PaddingValue.xMedium,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [CommonColor.liteIndigo, CommonColor.darkIndigo],
                )),
            child: SvgPicture.asset(
              CommonSvg.add,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// profile and name
                Padding(
                  padding: PaddingValue.normal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularPercentIndicator(
                        radius: Spacing.xLarge,
                        lineWidth: 2,
                        percent: 0.8,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.deepPurple,
                        center: Image.asset(
                          CommonImages.profile,
                          width: Spacing.xxxLarge * 2,
                          height: Spacing.xxxLarge * 2,
                        ),
                      ),
                      const Gap(Spacing.normal),
                      const CommonText(
                        text: "juliana_evans",
                        fontFamily: "Poppins",
                        color: CommonColor.white,
                        fontWeight: TextWeight.semiBold,
                        fontSize: TextSize.appBarTitle,
                      ),
                    ],
                  ),
                ),

                /// search, heart, filter
                Padding(
                  padding: PaddingValue.normal,
                  child: Row(
                    children: [
                      SvgPicture.asset(CommonSvg.search),
                      const Gap(Spacing.large),
                      Stack(
                        children: [
                          SvgPicture.asset(CommonSvg.heart),
                          const Positioned(
                            left: Spacing.xMedium,
                            child: CommonContainer(
                              width: Spacing.medium,
                              height: Spacing.medium,
                              shape: BoxShape.circle,
                              borderColor: CommonColor.black,
                              borderWidth: 1.5,
                              gradientColorOne: CommonColor.liteIndigo,
                              gradientColorTwo: CommonColor.darkIndigo,
                            ),
                          ),
                        ],
                      ),
                      const Gap(Spacing.large),
                      SvgPicture.asset(CommonSvg.filter),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: [
                CommonContainer(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.4,
                  margin: const EdgeInsetsDirectional.symmetric(horizontal: Spacing.large),
                  // padding: EdgeInsetsDirectional.only(bottom: Spacing.large),
                  borderRadius: ShapeBorderRadius.xxLarge,
                  borderColor: CommonColor.liteIndigo,
                  borderWidth: 0.7,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight:
                                    Radius.circular(RadiusValue.xxLarge),
                                    topLeft:
                                    Radius.circular(RadiusValue.xxLarge),
                                    bottomRight:
                                    Radius.circular(RadiusValue.xxLarge),
                                    bottomLeft:
                                    Radius.circular(RadiusValue.xxLarge)),
                                child: Image.asset(
                                  CommonImages.imageFirst,
                                  height:
                                  MediaQuery.of(context).size.height / 2.1,
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Image.asset(
                                CommonImages.frame,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                          Flexible(
                            child: CommonContainer(
                              padding: const EdgeInsetsDirectional.only(
                                top: Spacing.large
                              ),
                              margin: const EdgeInsetsDirectional.symmetric(horizontal: Spacing.large),
                              borderRadius: const BorderRadius.only(
                                  bottomRight:
                                  Radius.circular(RadiusValue.xxLarge),
                                  bottomLeft:
                                  Radius.circular(RadiusValue.xxLarge)),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          CommonText(
                                            text: "Jack Evans, 24",
                                            color: CommonColor.white,
                                            fontFamily: "DM Sans",
                                            fontWeight: TextWeight.medium,
                                            fontSize: TextSize.largeHHeading,
                                          ),
                                          Gap(Spacing.xSmall),
                                          Icon(
                                            Icons.verified,
                                            color: Colors.lightBlue,
                                            size: Spacing.large,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: Spacing.xLarge,
                                          ),
                                          Gap(Spacing.xSmall),
                                          CommonText(
                                            text: "4.2",
                                            color: CommonColor.white,
                                            fontFamily: "DM Sans",
                                            fontWeight: TextWeight.medium,
                                            fontSize: TextSize.label,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CommonText(
                                        text: "jack_evans",
                                        color: CommonColor.grey,
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsetsDirectional.only(
                                            bottom: Spacing.xSmall),
                                        child: SvgPicture.asset(
                                            CommonSvg.wheelChair),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CommonText(
                                        text: "Available For Hiring",
                                        fontWeight: TextWeight.medium,
                                        fontSize: TextSize.subTitle,
                                        color: CommonColor.white,
                                        textAlign: TextAlign.center,
                                        fontFamily: "DM Sans",
                                      ),
                                      const CommonText(
                                        text: "\t\t\t• 3 km away",
                                        fontWeight: TextWeight.medium,
                                        fontSize: TextSize.subTitle,
                                        color: CommonColor.white,
                                        textAlign: TextAlign.center,
                                        fontFamily: "DM Sans",
                                      ),
                                      const Gap(Spacing.xxLarge),
                                      CommonContainer(
                                        width: Spacing.xxxLarge * 1.5,
                                        height: Spacing.xxLarge,
                                        margin:
                                        const EdgeInsetsDirectional.only(
                                            start: Spacing.none,
                                        ),
                                        padding:
                                        const EdgeInsetsDirectional.only(
                                            start: Spacing.xSmall + 2),
                                        borderRadius: BorderRadius.circular(
                                            Spacing.xLarge),
                                        borderColor: CommonColor.liteIndigo,
                                        isBackgroundColor: false,
                                        backgroundColor: CommonColor.white,
                                        borderWidth: 1.5,
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                                CommonSvg.karmaPoint),
                                            const CommonText(
                                              text: "250",
                                              fontWeight: TextWeight.medium,
                                              fontSize: TextSize.subTitle,
                                              color: CommonColor.liteIndigo,
                                              textAlign: TextAlign.center,
                                              fontFamily: "DM Sans",
                                            ),
                                          ],
                                        ),
                                      ),
                                      // const Gap(Spacing.medium+5)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CommonOutLineButton(
                                        onPressed: () {},
                                        text: "5K+ Match",
                                        fontWeight: TextWeight.medium,
                                        fontSize: TextSize.subTitle,
                                        color: CommonColor.white,
                                        textAlign: TextAlign.center,
                                        fontFamily: "DM Sans",
                                      ),
                                      const Gap(Spacing.medium),
                                      CommonOutLineButton(
                                        onPressed: () {},
                                        text: "VIP User",
                                        fontWeight: TextWeight.medium,
                                        fontSize: TextSize.subTitle,
                                        color: CommonColor.white,
                                        textAlign: TextAlign.center,
                                        fontFamily: "DM Sans",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height/2.33,
                        left: MediaQuery.of(context).size.width/5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CommonContainer(
                              width: Spacing.xxxLarge + 10,
                              height: Spacing.xxxLarge + 10,
                              shape: BoxShape.circle,
                              borderColor: CommonColor.black,
                              gradientColorOne: CommonColor.liteIndigo,
                              gradientColorTwo: CommonColor.darkIndigo,
                              borderWidth: 1.5,
                              padding: PaddingValue.xMedium,
                              // margin: EdgeInsetsDirectional.only(top: Spacing.xxxLarge*8.1),
                              child: SvgPicture.asset(CommonSvg.message),
                            ),
                            const Gap(Spacing.large),
                            CommonContainer(
                              width: Spacing.xxLarge * 2,
                              height: Spacing.xxLarge * 2,
                              shape: BoxShape.circle,
                              borderColor: CommonColor.black,
                              gradientColorOne: CommonColor.liteIndigo,
                              gradientColorTwo: CommonColor.darkIndigo,
                              borderWidth: 1.5,
                              child: Padding(
                                padding: PaddingValue.xMedium,
                                child: SvgPicture.asset(CommonSvg.heart),
                              ),
                            ),
                            const Gap(Spacing.large),
                            CommonContainer(
                              width: Spacing.xxxLarge + 10,
                              height: Spacing.xxxLarge + 10,
                              shape: BoxShape.circle,
                              borderColor: CommonColor.black,
                              gradientColorOne: CommonColor.liteIndigo,
                              gradientColorTwo: CommonColor.darkIndigo,
                              borderWidth: 1.5,
                              child: Padding(
                                padding: PaddingValue.xMedium,
                                child: SvgPicture.asset(CommonSvg.sticker),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            top: Spacing.medium,
                            start: Spacing.xxxLarge,
                            end: Spacing.xxxLarge
                        ),
                        child: StepProgressIndicator(
                          currentStep: 1,
                          totalSteps: 4,
                          padding: Spacing.small,
                          roundedEdges: ShapeRadius.medium,
                          selectedColor: Colors.grey,
                          unselectedColor: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /// image
          ],
        ),
      ),
    );
  }
}

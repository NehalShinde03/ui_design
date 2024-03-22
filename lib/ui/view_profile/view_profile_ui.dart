import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:ui_design/common_value/common_color.dart';
import 'package:ui_design/common_value/common_images.dart';
import 'package:ui_design/common_value/common_value.dart';
import 'package:ui_design/common_widget/common_container.dart';
import 'package:ui_design/common_widget/common_outline_button.dart';
import 'package:ui_design/common_widget/common_text.dart';
import 'package:ui_design/common_widget/common_textfield.dart';

class ViewProfileUi extends StatefulWidget {
  const ViewProfileUi({super.key});

  static const String routeName = "/view_profile_ui";
  static Widget builder(BuildContext context){
    return const ViewProfileUi();
  }

  @override
  State<ViewProfileUi> createState() => _ViewProfileUiState();
}

class _ViewProfileUiState extends State<ViewProfileUi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 1....
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    top: Spacing.normal,
                    start: Spacing.normal,
                    end: Spacing.xxxLarge*2.2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      width: Spacing.normal,
                      height: Spacing.normal,
                      CommonSvg.back,
                    ),
                    const Gap(Spacing.large),
                    Row(
                      children: [
                        /// images + heart
                       CommonContainer(
                          width: Spacing.xxxLarge + 10,
                          height: Spacing.xxxLarge + 10,
                          shape: BoxShape.circle,
                          borderColor: CommonColor.black,
                          gradientColorOne: CommonColor.liteIndigo,
                          gradientColorTwo: CommonColor.darkIndigo,
                          borderWidth: 3,
                          child: Image.asset(
                            CommonImages.imageSecond,
                          ),
                        ),
                       const CommonText(
                         text: '- - -',
                         color: CommonColor.white,
                       ),
                       ShaderMask(
                         shaderCallback: (Rect bounds) {
                           return const LinearGradient(
                               colors:[CommonColor.litePurple, CommonColor.darkPurple]
                           ).createShader(bounds);
                         },
                         child: Stack(
                           alignment: Alignment.center,
                           children: [
                             SvgPicture.asset(
                               width: Spacing.xxxLarge-10,
                               height: Spacing.xxLarge+15,
                               CommonSvg.heart,
                             ),
                             const CommonText(
                               text: "20%",
                               fontWeight: TextWeight.bold,
                               color: Colors.teal,
                             )
                           ],
                         ),
                       ),
                       const CommonText(
                         text: '- - -',
                         color: CommonColor.white,
                       ),
                       CommonContainer(
                         width: Spacing.xxxLarge + 10,
                         height: Spacing.xxxLarge + 10,
                         shape: BoxShape.circle,
                         borderColor: CommonColor.black,
                         gradientColorOne: CommonColor.liteIndigo,
                         gradientColorTwo: CommonColor.darkIndigo,
                         borderWidth: 3,
                         child: Image.asset(
                           CommonImages.imageThird,
                         ),
                       )
                      ],
                    ),
                  ],
                ),
              ),

              /// 2...  images
              CommonContainer(
                width: double.infinity,
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.large,
                    vertical: Spacing.xLarge
                ),
                borderRadius: ShapeBorderRadius.xxLarge,
                borderColor: CommonColor.grey.withOpacity(0.3),
                borderWidth: 0.7,
                child: Stack(
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
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          top: Spacing.small,
                          start: Spacing.xxxLarge,
                          end: Spacing.xxxLarge
                      ),
                      child: StepProgressIndicator(
                        currentStep: 1,
                        totalSteps: 4,
                        progressDirection: TextDirection.rtl,
                        padding: Spacing.small,
                        roundedEdges: ShapeRadius.medium,
                        selectedColor: Colors.grey,
                        unselectedColor: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),

              ///3... jack evans to 5k match
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: Spacing.xLarge),
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
                              bottom: Spacing.medium),
                          child: SvgPicture.asset(
                              CommonSvg.wheelChair,
                          ),
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

              ///4..
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  start: Spacing.xxLarge,
                  end: Spacing.xxLarge,
                  top: Spacing.large,
                  bottom: Spacing.xMedium
                ),
                child:  CommonText(
                  text: "Disability",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              const CommonTextField(
                hint: "deaf or hard of hearing.",
                textFieldFontSize: TextSize.appBarSubTitle,
                fontFamily: "DM Sans",
                textFieldFontWeight: TextWeight.regular,
              ),

              ///5...
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "What Jack is Doing",
                      color: CommonColor.white,
                      fontSize: TextSize.appBarTitle,
                      fontWeight: TextWeight.medium,
                      fontFamily: "DM Sans",
                    ),
                    SvgPicture.asset(CommonSvg.message)
                  ],
                ),
              ),
              const CommonTextField(
                hint: "I am a iOS developer.",
                textFieldFontSize: TextSize.appBarSubTitle,
                fontFamily: "DM Sans",
                textFieldFontWeight: TextWeight.regular,
              ),

              /// 6 ...
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "Audio Message",
                      color: CommonColor.white,
                      fontSize: TextSize.appBarTitle,
                      fontWeight: TextWeight.medium,
                      fontFamily: "DM Sans",
                    ),
                    SvgPicture.asset(CommonSvg.message)
                  ],
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: Spacing.xxLarge
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/11,
                borderColor: CommonColor.grey.withOpacity(0.6),
                borderWidth: 1.5,
                borderRadius: ShapeBorderRadius.large,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(CommonImages.musicWaves),
                      const CommonContainer(
                        width: Spacing.xxLarge + 10,
                        height: Spacing.xxLarge + 10,
                        shape: BoxShape.circle,
                        borderColor: CommonColor.black,
                        gradientColorOne: CommonColor.litePurple,
                        gradientColorTwo: CommonColor.darkPurple,
                        borderWidth: 1.5,
                        child: Padding(
                          padding: PaddingValue.zero,
                          child: Center(child: Icon(Icons.play_arrow, color: CommonColor.black,)),
                        ),
                      )
                    ],
                  ),
                ),

              ),

              /// 7....
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: CommonText(
                  text: "I am",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              const CommonTextField(
                hint: "Available Today.",
                textFieldFontSize: TextSize.appBarSubTitle,
                fontFamily: "DM Sans",
                textFieldFontWeight: TextWeight.regular,
              ),

              /// 8...
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "About Me",
                      color: CommonColor.white,
                      fontSize: TextSize.appBarTitle,
                      fontWeight: TextWeight.medium,
                      fontFamily: "DM Sans",
                    ),
                    SvgPicture.asset(CommonSvg.message)
                  ],
                ),
              ),
              const CommonTextField(
                maxLines: 3,
                hint: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                textFieldFontSize: TextSize.appBarSubTitle,
                fontFamily: "DM Sans",
                textFieldFontWeight: TextWeight.regular,
              ),

              /// 9....
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "Looking For",
                      color: CommonColor.white,
                      fontSize: TextSize.appBarTitle,
                      fontWeight: TextWeight.medium,
                      fontFamily: "DM Sans",
                    ),
                    SvgPicture.asset(CommonSvg.message)
                  ],
                ),
              ),
              const CommonTextField(
                maxLines: 2,
                hint: "I am looking for caring and loving partner, with long term relationship.",
                textFieldFontSize: TextSize.appBarSubTitle,
                fontFamily: "DM Sans",
                textFieldFontWeight: TextWeight.regular,
              ),

              /// 10....
              Padding(
                padding: const EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "I am hopping you...",
                      color: CommonColor.white,
                      fontSize: TextSize.appBarTitle,
                      fontWeight: TextWeight.medium,
                      fontFamily: "DM Sans",
                    ),
                    SvgPicture.asset(CommonSvg.message)
                  ],
                ),
              ),
              const CommonTextField(
                maxLines: 2,
                hint: "i am hopping you that Only loyal personal send me like.",
                textFieldFontSize: TextSize.appBarSubTitle,
                fontFamily: "DM Sans",
                textFieldFontWeight: TextWeight.regular,
              ),

              /// 11..
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child:  CommonText(
                  text: "My Basics",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.xxLarge,
                ),
                width: MediaQuery.of(context).size.width,
                padding: PaddingValue.medium,
                borderColor: CommonColor.grey.withOpacity(0.6),
                borderWidth: 1.5,
                borderRadius: ShapeBorderRadius.large,
                child: Wrap(
                  spacing: Spacing.medium,
                  runSpacing: Spacing.medium,
                  children: [
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(CommonSvg.female),
                          const Gap(Spacing.xSmall),
                          const CommonText(
                            text: "Female",
                            color: CommonColor.white,
                            fontSize: TextSize.appBarSubTitle,
                            fontWeight: TextWeight.medium,
                            fontFamily: "DM Sans",
                          )
                        ],
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(CommonSvg.religion),
                          const Gap(Spacing.xSmall),
                          const CommonText(
                            text: "Christian",
                            color: CommonColor.white,
                            fontSize: TextSize.appBarSubTitle,
                            fontWeight: TextWeight.medium,
                            fontFamily: "DM Sans",
                          )
                        ],
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(CommonSvg.profile),
                          const Gap(Spacing.xSmall),
                          const CommonText(
                            text: "American",
                            color: CommonColor.white,
                            fontSize: TextSize.appBarSubTitle,
                            fontWeight: TextWeight.medium,
                            fontFamily: "DM Sans",
                          )
                        ],
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(CommonSvg.zodiac),
                          const Gap(Spacing.small),
                          const CommonText(
                            text: "Gemini",
                            color: CommonColor.white,
                            fontSize: TextSize.appBarSubTitle,
                            fontWeight: TextWeight.medium,
                            fontFamily: "DM Sans",
                          )
                        ],
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: Spacing.xMedium,
                        vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(CommonSvg.kids),
                          const Gap(Spacing.xSmall),
                          const CommonText(
                            text: "Yes",
                            color: CommonColor.white,
                            fontSize: TextSize.appBarSubTitle,
                            fontWeight: TextWeight.medium,
                            fontFamily: "DM Sans",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              /// 12..
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: CommonText(
                  text: "I Am Hiring For",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.xxLarge
                ),
                width: MediaQuery.of(context).size.width,
                padding: PaddingValue.medium,
                borderColor: CommonColor.grey.withOpacity(0.6),
                borderWidth: 1.5,
                borderRadius: ShapeBorderRadius.large,
                child: const Wrap(
                  spacing: Spacing.medium,
                  runSpacing: Spacing.medium,
                  children: [
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderColor: CommonColor.lightGrey,
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Parties",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Concert",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Skydiving",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Beach or nature trip",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Bungee Jumping",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    )

                  ],
                ),
              ),

              /// 13..
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: CommonText(
                  text: "My Interest",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.xxLarge
                ),
                width: MediaQuery.of(context).size.width,
                padding: PaddingValue.medium,
                borderColor: CommonColor.grey.withOpacity(0.6),
                borderWidth: 1.5,
                borderRadius: ShapeBorderRadius.large,
                child: const Wrap(
                  spacing: Spacing.medium,
                  runSpacing: Spacing.medium,
                  children: [
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Boxing",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Environmental Protection",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "wresting",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Beach or nature trip",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                  ],
                ),
              ),

              /// 14..
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: CommonText(
                  text: "My Hobbies",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.xxLarge
                ),
                width: MediaQuery.of(context).size.width,
                padding: PaddingValue.medium,
                borderColor: CommonColor.grey.withOpacity(0.6),
                borderWidth: 1.5,
                borderRadius: ShapeBorderRadius.large,
                child: const Wrap(
                  spacing: Spacing.medium,
                  runSpacing: Spacing.medium,
                  children: [
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Baking",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Gardening",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                    CommonContainer(
                      isBackgroundColor: false,
                      backgroundColor: CommonColor.lightGrey,
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: Spacing.xMedium,
                          vertical: Spacing.xSmall
                      ),
                      borderRadius: ShapeBorderRadius.large,
                      child: CommonText(
                        text: "Boxing",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarSubTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      ),
                    ),
                  ],
                ),
              ),

              /// 15..
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: CommonText(
                  text: "Location",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.xxLarge
                ),
                borderColor: CommonColor.grey.withOpacity(0.6),
                padding: PaddingValue.medium,
                borderWidth: 1.5,
                borderRadius: ShapeBorderRadius.large,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(CommonSvg.location),
                      const Gap(Spacing.large),
                      const CommonText(
                        text: "New York, United States.",
                        color: CommonColor.white,
                        fontSize: TextSize.appBarTitle,
                        fontWeight: TextWeight.medium,
                        fontFamily: "DM Sans",
                      )
                    ],
                  ),
                ),

              ),

              /// 16...
              const Padding(
                padding: EdgeInsetsDirectional.only(
                    start: Spacing.xxLarge,
                    end: Spacing.xxLarge,
                    top: Spacing.large,
                    bottom: Spacing.xMedium
                ),
                child: CommonText(
                  text: "My Anthem",
                  color: CommonColor.white,
                  fontSize: TextSize.appBarTitle,
                  fontWeight: TextWeight.medium,
                  fontFamily: "DM Sans",
                ),
              ),
              CommonContainer(
                margin: const EdgeInsetsDirectional.symmetric(
                    horizontal: Spacing.xxLarge
                ),
                borderColor: CommonColor.grey.withOpacity(0.6),
                borderWidth: 1.5,
                padding: PaddingValue.small,
                borderRadius: ShapeBorderRadius.large,
                child: Center(
                  child: Image.asset(
                      CommonImages.myAnthem,
                      fit: BoxFit.fill,
                  )
                ),

              ),

              /// 17...
              const Gap(Spacing.large),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonContainer(
                    width: Spacing.xxxLarge + 10,
                    height: Spacing.xxxLarge + 10,
                    shape: BoxShape.circle,
                    borderColor: CommonColor.black,
                    gradientColorOne: CommonColor.litePurple,
                    gradientColorTwo: CommonColor.darkPurple,
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
                    gradientColorOne: CommonColor.litePurple,
                    gradientColorTwo: CommonColor.darkPurple,
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
                    gradientColorOne: CommonColor.litePurple,
                    gradientColorTwo: CommonColor.darkPurple,
                    borderWidth: 1.5,
                    child: Padding(
                      padding: PaddingValue.xMedium,
                      child: SvgPicture.asset(CommonSvg.sticker),
                    ),
                  ),
                ],
              ),

              /// 18...
              const Gap(Spacing.large),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                        children: [
                            TextSpan(
                            text: "Report Profile",
                            style: TextStyle(
                                color: CommonColor.white,
                                fontSize: TextSize.appBarSubTitle,
                                fontWeight: TextWeight.regular,
                                fontFamily: "DM Sans",
                                decoration: TextDecoration.underline,
                                decorationColor: CommonColor.white
                            )),
                            TextSpan(
                                text: "\t\t●\t\t",
                                style: TextStyle(
                                    color: CommonColor.white,
                                    fontSize: TextSize.appBarSubTitle,
                                    fontWeight: TextWeight.regular,
                                )),
                            TextSpan(
                            text: "Share Profile",
                            style: TextStyle(
                                color: CommonColor.white,
                                fontSize: TextSize.appBarSubTitle,
                                fontWeight: TextWeight.regular,
                                fontFamily: "DM Sans",
                                decoration: TextDecoration.underline,
                                decorationColor: CommonColor.white
                            )),
                        ]
                      ),
                  )
                ],
              ),
              const Gap(Spacing.large),

            ]
          ),
        ),
      )
    );
  }
}

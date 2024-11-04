import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/features/Auth/sign%20up/presentation/providers/signUpStateProvider.dart';
import 'package:brillo_sportz/features/interests/provider/pickedInterestStateNotifier.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final interestsProvider = ref.watch(pickedInterestsStateNotifierProvider);
    final interestsStateRef =
        ref.watch(pickedInterestsStateNotifierProvider.notifier);
    final username =
        ref.watch(signUpStateNotifierProvider).userNameController!.text;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ref
                        .watch(signUpStateNotifierProvider)
                        .userNameController!
                        .text
                        .isEmpty
                    ? Text('Welcome back,',
                        style: CustomTextStyles(context).boldH4Omnes_32x7)
                    : Text('Hi, $username',
                        style: CustomTextStyles(context).boldH4Omnes_32x7),
                Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        SizedBox(
                          height: 55.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0.w,
                            ),
                            child: Center(
                              child: CustomContainer(
                                wantBoxShadow: true,
                                showImage: true,
                                imageUrl: 'assets/svgs/ola.jpg',
                                backgroundColor: Colors.black,
                                borderWidth: 2,
                                borderColor: Color(0xff25D0C9),
                                radius: 15.r,
                                height: 45.h,
                                width: 45.w,
                                onTap: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 35.h,
                          left: 43.w,
                          child: Stack(
                            children: [
                              CustomContainer(
                                backgroundColor: Color(0xff25D0C9),
                                height: 18.h,
                                width: 18.w,
                                radius: 22.r,
                                child: Icon(
                                  EvaIcons.bellOutline,
                                  color: Colors.white,
                                  size: 12.r,
                                ),
                              ),
                              Positioned(
                                left: 9.5.w,
                                top: 3.h,
                                child: CustomContainer(
                                  borderColor: Colors.white,
                                  borderWidth: 1,
                                  backgroundColor: Colors.red,
                                  height: 4.h,
                                  width: 4.w,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
            10.verticalSpace,

            ///
            CustomContainer(
              height: 200.h,
              radius: 15.r,
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 230, 228, 228),
                  PrimaryColors.primary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              wantBoxShadow: true,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/svgs/lebron.png'),
                  4.horizontalSpace,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/svgs/lakers.svg',
                            height: 30.h,
                          ),
                          10.horizontalSpace,
                          Text(
                            'vs',
                            style: CustomTextStyles(context).body1Poppins_12x5,
                          ),
                          10.horizontalSpace,
                          SvgPicture.asset(
                            'assets/svgs/warriorss.svg',
                            height: 50.h,
                          ),
                        ],
                      ),
                      15.verticalSpace,
                      Text(
                        'Watch Live Tonight',
                        style: CustomTextStyles(context).body1Poppins_15x5,
                      )
                    ],
                  ),
                  // 4.horizontalSpace,
                  Image.asset('assets/svgs/steph.png'),
                ],
              ),
            ),
            25.verticalSpace,
            Text(
              'Interests',
              style: CustomTextStyles(context).body1BoldPoppins_17x6,
            ),
            10.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal, // Set scroll direction to horizontal
                child: Row(
                  children: [
                    ...List.generate(
                      interestsProvider.pickedInterests.isEmpty
                          ? interestsStateRef.interestType.length
                          : interestsProvider.pickedInterests.length,
                      (index) {
                        final interest =
                            interestsProvider.pickedInterests.isEmpty
                                ? interestsStateRef.interestType[index]
                                : interestsProvider.pickedInterests[index];
                        return Row(
                          children: [
                            Column(
                              children: [
                                CustomContainer(
                                  height: 50.h,
                                  width: 50.w,
                                  showImage: true,
                                  imageUrl: interest.imgPath,
                                ),
                                5.verticalSpace,
                                Text(
                                  interest.interest!,
                                  style: CustomTextStyles(context)
                                      .body1Poppins_12x5,
                                ),
                              ],
                            ),
                            SizedBox(
                                width:
                                    10.w), // Replace with SizedBox for spacing
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            25.verticalSpace,
            Text(
              'Live matches',
              style: CustomTextStyles(context).body1BoldPoppins_17x6,
            ),
            10.verticalSpace,
            SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection:
                    Axis.horizontal, // Set scroll direction to horizontal
                child: Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Row(
                        children: [
                          Column(
                            children: [
                              CustomContainer(
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.transparent,
                                      Color(0xFFE5E2E2),
                                    ],
                                    end: Alignment.bottomRight,
                                    begin: Alignment.topLeft),
                                height: 200.h,
                                width: 150.w,
                                radius: 10.r,
                                // backgroundColor: const Color(0xFFE5E2E2),
                                borderColor: ThemeHelper(context).tertiary,
                                // showImage: true,
                                // imageUrl: interestType[index].imgPath,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    25.verticalSpace,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svgs/barca.svg',
                                          height: 30.h,
                                        ),
                                        10.horizontalSpace,
                                        Text(
                                          'vs',
                                          style: CustomTextStyles(context)
                                              .body1Poppins_12x5,
                                        ),
                                        10.horizontalSpace,
                                        SvgPicture.asset(
                                          'assets/svgs/chelsea.svg',
                                          height: 30.h,
                                        )
                                      ],
                                    ),
                                    20.verticalSpace,
                                    SizedBox(
                                        width: 120.w,
                                        child: Text('FC Barcelona:  1')),
                                    10.verticalSpace,
                                    SizedBox(
                                        width: 120.w,
                                        child: Text('Chelsea:  2')),
                                  ],
                                ),
                              ),
                              5.verticalSpace,
                            ],
                          ),
                          SizedBox(
                              width: 10.w), // Replace with SizedBox for spacing
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

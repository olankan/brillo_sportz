import 'package:brillo_sportz/core/theme/widgets/customSnackbar/customSnackbar.widget.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_container/custom_container.dart';
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/features/interests/presentation/widgets/interestTile.dart';
import 'package:brillo_sportz/features/interests/provider/pickedInterestStateNotifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

// Assuming you already have InterestModel and interestType defined here or imported

class InterestScreen extends ConsumerWidget {
  const InterestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickedInterests =
        ref.watch(pickedInterestsStateNotifierProvider).pickedInterests;
    final interestsStateRef =
        ref.watch(pickedInterestsStateNotifierProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
          child: Stack(
            children: [
              Column(
                children: [
                  Text(
                    'What interests you?',
                    style: CustomTextStyles(context).boldH3Poppins_38x7,
                  ),
                  10.verticalSpace,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 670.h,
                            width: ScreenUtil().screenWidth,
                            child: MasonryGridView.builder(
                                itemCount:
                                    interestsStateRef.interestType.length,
                                gridDelegate:
                                    SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  final interest =
                                      interestsStateRef.interestType[index];
                                  final isSelected =
                                      pickedInterests.contains(interest);
                                  return InterestTile(
                                    interests: interest,
                                    isSelected: isSelected,
                                    onTap: () {
                                      interestsStateRef
                                          .toggleInterestSelection(interest);
                                      isSelected
                                          ? print(interest.interest)
                                          : null;
                                    },
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              pickedInterests.isNotEmpty
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomContainer(
                        onTap: () {
                          if (pickedInterests.length >= 4) {
                            context.go('/dashboard');
                          } else {
                            customSnackBar(
                                context, 'Please pick up to four choices');
                          }
                        },
                        width: 200.w,
                        radius: 15.r,
                        margin: EdgeInsets.symmetric(vertical: 30.h),
                        child: Center(
                            child: Text(
                          'Continue',
                          style:
                              CustomTextStyles(context).body1BoldPoppins_17x6,
                        )),
                      ),
                    ).animate().fadeIn(duration: Duration(milliseconds: 200))
                  : SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}

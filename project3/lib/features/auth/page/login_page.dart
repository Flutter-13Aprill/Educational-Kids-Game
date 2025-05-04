import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project3/core/function/navigation.dart';
import 'package:project3/core/text/app_text.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';
import 'package:project3/core/widget/custom_button.dart';
import 'package:project3/core/widget/custom_text_button.dart';
import 'package:project3/features/auth/widget/custom_text_color.dart';
import 'package:project3/features/auth/widget/custom_text_field.dart';
import 'package:project3/features/home/presentation/page/bottom_navigation_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Padding(
              padding: EdgeInsets.only(top: 89.h),
              child: CustomTextColor(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 65.h, left: 56.w, right: 56.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controller: userNameController,
                    hint: AppText.userName,
                  ),
                  SizedBox(height: 24.h),
                  CustomTextField(
                    controller: passwordController,
                    hint: AppText.password,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CustomTextButton(
                      onPressed: () {},
                      text: AppText.forgot,
                      color: AppPalette.blackColor,
                    ),
                  ),
                  CustomButton(
                    onPressed: () {
                      customReplacementNavigate(
                        context,
                        BottomNavigationPage(),
                      );
                    },
                    text: AppText.go,
                  ),
                  SizedBox(height: 21.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppText.account,
                        style: TextStyles.roboto700.copyWith(
                          color: AppPalette.blackColor,
                        ),
                      ),
                      CustomTextButton(
                        onPressed: () {},
                        text: AppText.signUp,
                        color: AppPalette.greenColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Image.asset("asset/image/login.png"),
          ],
        ),
      ),
    );
  }
}

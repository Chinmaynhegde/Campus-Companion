import 'package:app_jan29/core/app_export.dart';
import 'package:flutter/material.dart';

class FirstPageScreen extends StatelessWidget {
  const FirstPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgBmsCollegeOfEngineering,
                      height: 110.v,
                      width: 113.h),
                  SizedBox(height: 10.v),
                  Container(
                      width: 258.h,
                      margin: EdgeInsets.only(left: 52.h, right: 49.h),
                      child: Text("      Welcome to \nCampus Companion",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 5.v),
                  Text(
                      "Instantly Access All Your Campus Notes with Campus Companion",
                      style: theme.textTheme.labelSmall),
                  SizedBox(height: 31.v),
                  SizedBox(
                      height: 37.v,
                      width: 112.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 23.h),
                                child: Text("Login",
                                    style: theme.textTheme.titleLarge))),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapView(context);
                                },
                                child: Container(
                                    height: 37.v,
                                    width: 112.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple900,
                                            width: 1.h,
                                            strokeAlign: strokeAlignOutside)))))
                      ])),
                  SizedBox(height: 31.v),
                  SizedBox(
                      height: 37.v,
                      width: 112.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text("Sign up",
                                    style: theme.textTheme.titleLarge))),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapView1(context);
                                },
                                child: Container(
                                    height: 37.v,
                                    width: 112.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(18.h),
                                        border: Border.all(
                                            color: appTheme.deepPurple900,
                                            width: 1.h,
                                            strokeAlign: strokeAlignOutside)))))
                      ])),
                  SizedBox(height: 38.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 361.v,
                      width: 360.h)
                ]))));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapView1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}

import 'package:app_jan29/core/app_export.dart';
import 'package:app_jan29/widgets/app_bar/appbar_title.dart';
import 'package:app_jan29/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 48.h, top: 79.v, right: 48.h),
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        onTapCie1(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 18.v),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 1.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.indigoA100,
                                        borderRadius:
                                            BorderRadius.circular(6.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Text("CIE 1",
                                        style: theme.textTheme.labelLarge))
                              ]))),
                  SizedBox(height: 23.v),
                  GestureDetector(
                      onTap: () {
                        onTapCie2(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 18.v),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 1.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueA100,
                                        borderRadius:
                                            BorderRadius.circular(6.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Text("CIE 2",
                                        style: theme.textTheme.labelLarge))
                              ]))),
                  SizedBox(height: 23.v),
                  GestureDetector(
                      onTap: () {
                        onTapCie3(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 18.v),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 1.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueA100,
                                        borderRadius:
                                            BorderRadius.circular(6.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Text("CIE 3",
                                        style: theme.textTheme.labelLarge))
                              ]))),
                  SizedBox(height: 23.v),
                  GestureDetector(
                      onTap: () {
                        onTapSEE(context);
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 18.v),
                          decoration: AppDecoration.fillBlue.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 1.v),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueA100,
                                        borderRadius:
                                            BorderRadius.circular(6.h))),
                                Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Text("SEE",
                                        style: theme.textTheme.labelLarge))
                              ]))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: IconButton(
        onPressed: () {
          onTapBackTwo(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Color(0xFFA058FF), // Customize the color
        ),
      ),
      title: AppbarTitle(
        text: "Examination",
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [],
    );
  }

  /// Navigates to the examPapersSemScreen when the action is triggered.
  onTapBackTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.examPapersSemScreen);
  }

  /// Navigates to the yearScreen when the action is triggered.
  onTapCie1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.yearScreen);
  }

  /// Navigates to the yearScreen when the action is triggered.
  onTapCie2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.yearScreen);
  }

  /// Navigates to the yearScreen when the action is triggered.
  onTapCie3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.yearScreen);
  }

  /// Navigates to the yearScreen when the action is triggered.
  onTapSEE(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.yearScreen);
  }
}

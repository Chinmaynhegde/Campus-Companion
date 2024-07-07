import 'package:app_jan29/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "first page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.firstPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "department details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.departmentDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "signup",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "dashboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profilePageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notes branch",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notesBranchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "for notes",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forNotesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "for exam papers",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forExamPapersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "exam_papers sem",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.examPapersSemScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "exam",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.examScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "year",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.yearScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notes page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notesPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "NOTES",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.notesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "for syllabus",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forSyllabusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "for syllabus sem",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forSyllabusSemScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "for syllabus sub",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forSyllabusSubScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}

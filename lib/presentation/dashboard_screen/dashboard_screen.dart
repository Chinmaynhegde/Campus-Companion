import 'package:app_jan29/core/app_export.dart';
import 'package:app_jan29/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:app_jan29/widgets/app_bar/appbar_title.dart';
import 'package:app_jan29/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 22.v),
          child: Column(
            children: [
              Spacer(flex: 29),
              _buildAssignmentList(context),
              Spacer(flex: 70),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: Row(
        children: [
          // Circular Image
          AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgEllipse4,
            margin: EdgeInsets.only(left: 19.h, top: 9.v, bottom: 9.v),
            onTap: () {
              onTapCircleImage(context);
            },
          ),
        ],
      ),
      title: AppbarTitle(text: "Your Name", margin: EdgeInsets.only(left: 10.h)),
      actions: [
        // Home Button
        Padding(
          padding: EdgeInsets.only(right: 16.0), // Add some padding to the right
          child: IconButton(
            onPressed: () {
              onTapHome(context);
            },
            icon: Icon(
              Icons.home,
              color: Color(0xFFA058FF), // Customize the color
            ),
          ),
        ),
      ],
    );
  }





  Widget _buildAssignmentList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          _buildListItem(
            title: 'Subjects',
            description: 'Explore your subjects',
            onTap: () {
              onTapSubjects(context);
            },
          ),
          _buildListItem(
            title: 'Syllabus',
            description: 'Check the syllabus details',
            onTap: () {
              onTapSyllabus(context);
            },
          ),
          _buildListItem(
            title: 'Notes',
            description: 'View and organize your notes',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Exam Papers',
            description: 'Access past exam papers',
            onTap: () {
              onTapExamPapers(context);
            },
          ),

        ],
      ),
    );
  }



  Widget _buildListItem({
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              title == 'Syllabus' || title == 'Exam Papers'
                  ? Color(0xFFBFEAF6) // Lighter blue
                  : Color(0xFFA7E6C1), // Lighter green

              title == 'Syllabus' || title == 'Exam Papers'
                  ? Color(0xFF8FC4D6) // Lighter shade of blue
                  : Color(0xFF88BFA8), // Lighter shade of green

            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }




  void onTapSubjects(BuildContext context) {
    // Navigate to the Subjects page
    Navigator.pushNamed(context, AppRoutes.forNotesScreen);
  }
  void onTapNotes(BuildContext context) {
    // Navigate to the Notes page
    Navigator.pushNamed(context, AppRoutes.forNotesScreen);
  }

  void onTapSyllabus(BuildContext context) {
    // Navigate to the Syllabus page
    Navigator.pushNamed(context, AppRoutes.forSyllabusScreen);
  }

  void onTapExamPapers(BuildContext context) {
    // Navigate to the Exam Papers page
    Navigator.pushNamed(context, AppRoutes.forExamPapersScreen);
  }



  //
  // void onTapAssignment4(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.branchOneScreen);
  // }

  void onTapCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profilePageOneScreen);
  }

  void onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.firstPageScreen); // Replace 'menuPage' with your actual route for the menu page.
  }
}

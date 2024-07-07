import 'package:app_jan29/core/app_export.dart';
import 'package:app_jan29/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:app_jan29/widgets/app_bar/custom_app_bar.dart';

class ForNotesScreen extends StatelessWidget {
  const ForNotesScreen({Key? key}) : super(key: key);

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
              _buildButtonList(context),
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
      leading: IconButton(
        onPressed: () {
          onTapHome(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Color(0xFFA058FF), // Customize the color
        ),
      ),
      title: AppbarTitle(
        text: "Branches",
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [],
    );
  }


  Widget _buildButtonList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          _buildListItem(
            title: 'Computer Science',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Information Science',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Electronics',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Electrical',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'AIML',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Civil',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Mechanic',
            onTap: () {
              onTapNotes(context);
            },
          ),
          _buildListItem(
            title: 'Biotechnology',
            onTap: () {
              onTapNotes(context);
            },
          ),
        ],
      ),
    );
  }



  Widget _buildListItem({
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 320,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFD7F2DB), // Lighter green
              Color(0xFFA7E6C1), // Lighter shade of green
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            // Small Circle
            Container(
              width: 12.0,
              height: 12.0,
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF88BFA8), // Choose a suitable color for the circle
              ),
            ),
            // Title
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }




  void onTapNotes(BuildContext context) {
    // Navigate to the Subjects page
    Navigator.pushNamed(context, AppRoutes.notesBranchScreen);
  }

  void onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes
        .dashboardScreen); // Replace 'menuPage' with your actual route for the menu page.
  }
}




import 'package:app_jan29/widgets/app_bar/appbar_title.dart';
import 'package:app_jan29/core/app_export.dart';
import 'package:app_jan29/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ForSyllabusSemScreen extends StatelessWidget {
  const ForSyllabusSemScreen({Key? key}) : super(key: key);

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
        text: "Semester",
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
            title: 'sem 1',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 2',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 3',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 4',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 5',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 6',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 7',
            onTap: () {
              onTapRow(context);
            },
          ),
          _buildListItem(
            title: 'sem 8',
            onTap: () {
              onTapRow(context);
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
              Color(0xFFC1E4F9), // Lighter blue
              Color(0xFFA1D5F1), // Lighter shade of blue
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
                color: Color(0xFF6FBDD2), // Choose a suitable color for the circle
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

  /// Navigates to the notesScreen when the action is triggered.
  onTapRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forSyllabusSubScreen);
  }

  /// Navigates to the forNotesScreen when the action is triggered.
  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forSyllabusScreen);
  }
}


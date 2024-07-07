import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_jan29/core/app_export.dart';
import 'package:app_jan29/widgets/app_bar/appbar_leading_image.dart';
import 'package:app_jan29/widgets/app_bar/custom_app_bar.dart';
import 'package:app_jan29/widgets/custom_text_form_field.dart';

class DepartmentDetailsScreen extends StatelessWidget {
  DepartmentDetailsScreen({Key? key}) : super(key: key);

  TextEditingController sectionController = TextEditingController();
  TextEditingController usnController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController semesterController = TextEditingController();
  TextEditingController academicYearController = TextEditingController();
  TextEditingController contactNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h),
                child: Column(
                  children: [
                    Text("Campus Companion", style: theme.textTheme.headlineSmall),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 85.h),
                        child: Text("Elevate your learning", style: CustomTextStyles.encodeSansExpandedBlack900Medium),
                      ),
                    ),
                    SizedBox(height: 58.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text("We’d like to know more about you", style: CustomTextStyles.encodeSansExpandedBlack900Medium),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildUsn(context),
                    SizedBox(height: 13.v),
                    _buildDepartment(context),
                    SizedBox(height: 13.v),
                    _buildSection(context),
                    SizedBox(height: 13.v),
                    _buildSemester(context),
                    SizedBox(height: 13.v),
                    _buildAcademicYear(context),
                    SizedBox(height: 13.v),
                    _buildContactNo(context),
                    SizedBox(height: 13.v),
                    _buildEmail(context),
                    SizedBox(height: 20.v),
                    SizedBox(
                      height: 28.v,
                      width: 84.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 3.v),
                              child: Text("Submit", style: CustomTextStyles.titleSmallEncodeSansExpandedDeeppurple900),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                onTapView(context);
                              },
                              child: Container(
                                height: 28.v,
                                width: 84.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.h),
                                  border: Border.all(color: appTheme.deepPurple900, width: 1.h, strokeAlign: strokeAlignOutside),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 208.adaptSize,
                      width: 208.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15.h),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack11,
        margin: EdgeInsets.fromLTRB(22.h, 16.v, 316.h, 17.v),
        onTap: () {
          onTapBackEleven(context);
        },
      ),
    );
  }

  Widget _buildUsn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.h, right: 27.h),
      child: CustomTextFormField(
        controller: usnController,
        hintText: "USN",
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your USN';
          }
          if (!RegExp(r'^1BM\d{2}[A-Z]{2}\d{3}$').hasMatch(value)) {
            return 'Please enter a valid USN';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDepartment(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.h, right: 27.h),
      child: CustomTextFormField(
        controller: departmentController,
        hintText: "Department",
      ),
    );
  }

  Widget _buildSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.h, right: 27.h),
      child: CustomTextFormField(
        controller: sectionController,
        hintText: "Section",
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your section';
          }
          if (!RegExp(r'^[A-Z]$').hasMatch(value)) {
            return 'Please enter a valid section';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildSemester(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h, right: 28.h),
      child: CustomTextFormField(
        controller: semesterController,
        hintText: "Semester",
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your semester';
          }
          if (!RegExp(r'^\d$').hasMatch(value)) {
            return 'Please enter a valid semester';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildAcademicYear(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h, right: 28.h),
      child: CustomTextFormField(
        controller: academicYearController,
        hintText: "Academic Year",
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your academic year';
          }
          if (!RegExp(r'^\d{4}$').hasMatch(value)) {
            return 'Please enter a valid academic year';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildContactNo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.h, right: 27.h),
      child: CustomTextFormField(
        controller: contactNoController,
        hintText: "Contact No",
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your contact number';
          }
          if (!RegExp(r'^\d{10}$').hasMatch(value)) {
            return 'Please enter a valid contact number';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h, right: 28.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Personal Email",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          }
          if (!RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$').hasMatch(value)) {
            return 'Please enter a valid Gmail address';
          }
          return null;
        },
      ),
    );
  }

  void onTapBackEleven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  void onTapView(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with submission
      // Here you can submit the form data to backend or perform any other actions
      Navigator.pushNamed(context, AppRoutes.dashboardScreen);
    }
  }
}

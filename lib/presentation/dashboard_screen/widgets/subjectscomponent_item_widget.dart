import 'package:app_jan29/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubjectscomponentItemWidget extends StatelessWidget {
  SubjectscomponentItemWidget({
    Key? key,
    this.onTapSubjectsComponent,
  }) : super(
          key: key,
        );

  VoidCallback? onTapSubjectsComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSubjectsComponent!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillCyan.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 11.v,
              width: 12.h,
              margin: EdgeInsets.only(
                top: 26.v,
                bottom: 25.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.cyan200,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 9.v,
                bottom: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SUBJECTS",
                    style: theme.textTheme.labelMedium,
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "Sem wise subjects",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgDownload,
              height: 7.v,
              width: 8.h,
              margin: EdgeInsets.only(top: 55.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                top: 56.v,
              ),
              child: Text(
                "26/11/2023",
                style: CustomTextStyles.encodeSansExpandedBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

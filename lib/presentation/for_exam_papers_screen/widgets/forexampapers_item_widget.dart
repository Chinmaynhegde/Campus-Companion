import 'package:app_jan29/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForexampapersItemWidget extends StatelessWidget {
  ForexampapersItemWidget({
    Key? key,
    this.onTapCse,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCse;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCse!.call();
      },
      child: Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.fillBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(
                top: 6.v,
                bottom: 5.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blueA100,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 6.v,
              ),
              child: Text(
                "Computer Science",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

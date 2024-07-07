import 'package:app_jan29/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SyllabussemItemWidget extends StatelessWidget {
  SyllabussemItemWidget({
    Key? key,
    this.onTapRow,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRow!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillTealAF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(
                top: 3.v,
                bottom: 1.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.cyan200,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text(
                "Sem 1",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

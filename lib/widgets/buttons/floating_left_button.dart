import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_utils.dart';
import 'package:my_portfolio/widgets/buttons/icon_button_custom.dart';

class FloatingLeftButton extends StatelessWidget {
  const FloatingLeftButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Padding(
        padding: EdgeInsets.only(left: 65.h),
        child: Column(
          children: [

            IconButtonCustom(
              isCustomIcon: true,
              customIcon: 'ic_github.png',
              iconSize: 30.h,
              onPressed: () {
                AppUtils.openLink('https://github.com/AbuNayemSabbir');
              },
            ),
            verticalSpace(40.h),
            IconButtonCustom(
              isCustomIcon: true,
              customIcon: 'ic_linkedin.png',
              iconSize: 30.h,
              onPressed: () {
                AppUtils.openLink('https://www.linkedin.com/in/md-sabbir-ahmed-78a86b179/');
              },
            ),

            verticalSpace(40.h),
            Container(
              width: 2.h,
              height: 120.h,
              color: AppColor.textColor2,
            ),
          ],
        ),
      ),
    );
  }
}

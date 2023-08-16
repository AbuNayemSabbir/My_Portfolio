import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_utils.dart';
import 'package:my_portfolio/widgets/buttons/icon_button_custom.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 12),
        if (MediaQuery.of(context).size.width < 960)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              IconButtonCustom(
                isCustomIcon: true,
                customIcon: 'ic_github.png',
                iconSize: 30.h,
                onPressed: () {
                  AppUtils.openLink('https://github.com/fathulaziss');
                },
              ),
              horizontalSpace(40.h),
              IconButtonCustom(
                isCustomIcon: true,
                customIcon: 'ic_linkedin.png',
                iconSize: 30.h,
                onPressed: () {
                  AppUtils.openLink('https://www.linkedin.com/in/fathulaziss');
                },
              ),


            ],
          )
        else
          const SizedBox(),
        verticalSpace(40.h),
        Text(
          'Build by Md Sabbir Ahmed\nwith Flutter Web',
          style: TextStyles.firaCodeText.copyWith(color: AppColor.textColor2),
          textAlign: TextAlign.center,
        ),
        verticalSpace(40.h),
      ],
    );
  }
}

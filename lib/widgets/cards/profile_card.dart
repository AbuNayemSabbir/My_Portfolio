import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/utils/app_asset.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330.h,
      height: 330.h,
      child: Stack(
        children: [
          Positioned(
            top: 30.h,
            left: 30.h,
            child: Container(
              width: 300.h,
              height: 300.h,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.primaryColor),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 30.h,
            child: Container(
              width: 300.h,
              height: 300.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAsset.image('img_profile.jpeg')),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

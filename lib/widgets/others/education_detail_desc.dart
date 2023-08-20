import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/data.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_utils.dart';
import 'package:my_portfolio/widgets/others/education_title.dart';
import 'package:my_portfolio/widgets/others/experience_title.dart';

class EducationDetailDesc extends StatelessWidget {
  const EducationDetailDesc({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 30.h),
        child: Flex(
          direction: Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20.h),
            EducationTitle(
              universityName: listEducation[selectedIndex].universityName,
              onTap: () {
                AppUtils.openLink(listEducation[selectedIndex].universityLink);
              },
              position: listEducation[selectedIndex].position,
            ),
            verticalSpace(5.h),
            Text(
              listEducation[selectedIndex].duration,
              style: TextStyles.firaCodeText
                  .copyWith(fontSize: 18.h, color: AppColor.textColor2),
            ),
            verticalSpace(30.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: listEducation[selectedIndex].experiences.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Row(
                      children: [
                        Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: AppColor.primaryColor,
                          size: 20.h,
                        ),
                        horizontalSpace(15.h),
                        Text(
                          listEducation[selectedIndex].experiences[index],
                          style: TextStyles.heeboText.copyWith(
                            fontSize: 22.h,
                            color: AppColor.textColor2,
                          ),
                        ),
                        Text(
                          " 3.87/4.00",
                          style: TextStyles.heeboText.copyWith(
                            fontSize: 22.h,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/data.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/others/project_item.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 9),
        Row(
          children: [
            Text(
              "Some Things I've Build",
              style: TextStyles.heeboText.copyWith(
                fontSize: MediaQuery.of(context).size.width < 960 ? 30.h : 40.h,
                color: AppColor.textColor1,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.1,
              ),
            ),
            horizontalSpace(40.h),
            Expanded(
              child: Padding(
                padding: MediaQuery.of(context).size.width < 960
                    ? EdgeInsets.zero
                    : EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 3.5,
                      ),
                child: const Divider(color: AppColor.textColor1),
              ),
            ),
          ],
        ),
        verticalSpace(40.h),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width < 600
                ? 1
                : MediaQuery.of(context).size.width < 1100
                    ? 2
                    : 3,
            childAspectRatio:
                MediaQuery.of(context).size.width < 600 ? 3.h : 2.5.h,
            crossAxisSpacing: 15.h,
            mainAxisSpacing: 15.h,
          ),
          itemCount: listProject.length,
          itemBuilder: (context, index) {
            return ProjectItem(data: listProject[index]);
          },
        ),
        verticalSpace(MediaQuery.of(context).size.height / 6),
      ],
    );
  }
}

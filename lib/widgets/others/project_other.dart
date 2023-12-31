import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/data.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/buttons/text_button_custom.dart';
import 'package:my_portfolio/widgets/others/project_item.dart';

class ProjectOther extends StatelessWidget {
  const ProjectOther({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 9),
        Text(
          'Other Personal Projects',
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 30.h : 40.h,
            color: AppColor.textColor1,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        TextButtonCustom(
          label: 'view the archive',
          onPressed: () {},
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
            MediaQuery.of(context).size.width < 600 ? 2.5.h : 2.0.h,
            crossAxisSpacing: 15.h,
            mainAxisSpacing: 15.h,
          ),
          itemCount: listProjectOther.length,
          itemBuilder: (context, index) {
            return ProjectItem(
              data: listProjectOther[index],
              isShowAppStore: false,
              isShowGithub: true,
              isShowAssociated: false,
              isClientApp: false,

            );
          },
        ),
        verticalSpace(MediaQuery.of(context).size.height / 6),
      ],
    );
  }
}

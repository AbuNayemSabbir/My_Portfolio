import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_utils.dart';
import 'package:my_portfolio/widgets/buttons/primary_button.dart';
import 'package:my_portfolio/widgets/buttons/text_button_custom.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({
    Key? key,
    required this.onPressedAbout,
    required this.onPressedContact,
    required this.onPressedExperience,
    required this.onPressedEducation,
    required this.onPressedClientsProject,
    required this.onPressedPersonalProjects,
  }) : super(key: key);

  final Function() onPressedAbout;
  final Function() onPressedExperience;
  final Function() onPressedEducation;
  final Function() onPressedClientsProject;
  final Function() onPressedPersonalProjects;
  final Function() onPressedContact;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButtonCustom(
            label: 'About',
            onPressed: () {
              onPressedAbout();
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Experience',
            onPressed: () {
              onPressedExperience();
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Education',
            onPressed: () {
              onPressedEducation();
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Clients Projects',
            onPressed: () {
              onPressedClientsProject();
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),

          TextButtonCustom(
            label: 'Personal Projects',
            onPressed: () {
              onPressedPersonalProjects();
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          TextButtonCustom(
            label: 'Contact',
            onPressed: () {
              onPressedContact();
              Navigator.pop(context);
            },
          ),
          verticalSpace(40.h),
          ButtonPrimary(
            onTap: () {
              Navigator.pop(context);
              AppUtils.openLink(
                'https://drive.google.com/file/d/1loAbb47w4b_y_C7ZCllYbgClOQuQSmqd/view?usp=sharing',
              );
            },
            width: 110.h,
            isOutline: true,
            label: 'Resume',
            color: Colors.transparent,
            outlineColor: AppColor.primaryColor,
            radius: 5.h,
          ),
          verticalSpace(40.h),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close, color: AppColor.primaryColor),
          )
        ],
      ),
    );
  }
}

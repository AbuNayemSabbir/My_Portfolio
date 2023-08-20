// ignore_for_file: avoid_field_initializers_in_const_classes

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_asset.dart';
import 'package:my_portfolio/utils/app_utils.dart';
import 'package:my_portfolio/widgets/buttons/primary_button.dart';
import 'package:my_portfolio/widgets/buttons/text_button_custom.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({
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
  final Size preferredSize = const Size.fromHeight(kToolbarHeight * 1.5);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leadingWidth: 100.h,
      toolbarHeight: kToolbarHeight * 1.5,
      leading: Container(
        margin: EdgeInsets.only(left: 40.h),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(AppAsset.logo('logo_app.png'))),
        ),
      ),
      actions: MediaQuery.of(context).size.width < 960
          ? [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.menu_outlined,
                  color: AppColor.primaryColor,
                ),
              ),
              horizontalSpace(40.h)
            ]
          : [
              TextButtonCustom(
                label: 'About',
                onPressed: widget.onPressedAbout,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Experience',
                onPressed: widget.onPressedExperience,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Education',
                onPressed: widget.onPressedEducation,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Clients Projects',
                onPressed: widget.onPressedClientsProject,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Personal Projects',
                onPressed: widget.onPressedPersonalProjects,
              ),
              horizontalSpace(40.h),
              TextButtonCustom(
                label: 'Contact',
                onPressed: widget.onPressedContact,
              ),
              horizontalSpace(40.h),
              ButtonPrimary(
                width: 110.h,
                isOutline: true,
                label: 'Resume',
                color: Colors.transparent,
                outlineColor: AppColor.primaryColor,
                radius: 5.h,
                onTap: () {
                  AppUtils.openLink(
                    'https://drive.google.com/file/d/1loAbb47w4b_y_C7ZCllYbgClOQuQSmqd/view?usp=sharing',
                  );
                },
              ),
              horizontalSpace(40.h)
            ],
    );
  }
}

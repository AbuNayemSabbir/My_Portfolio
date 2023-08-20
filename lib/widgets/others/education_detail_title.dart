import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/data.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/widgets/buttons/text_button_custom.dart';

class EducationDetailTitle extends StatelessWidget {
  const EducationDetailTitle({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
    required this.index,
  }) : super(key: key);

  final Function() onTap;
  final int selectedIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5.h,
          height: 130.h,
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? AppColor.primaryColor
                : AppColor.textColor2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(index == 0 ? 5.h : 0),
              topRight: Radius.circular(index == 0 ? 5.h : 0),
              bottomLeft: Radius.circular(index == 9 ? 5.h : 0),
              bottomRight: Radius.circular(index == 9 ? 5.h : 0),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 130.h,
            child: TextButtonCustom(
              onPressed: onTap,
              label: listEducation[index].universityName,
              isUseOverlayColor: true,
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
                horizontal: 10.h,
              ),
              textColor: selectedIndex == index
                  ? AppColor.primaryColor
                  : AppColor.textColor1,
            ),
          ),
        ),
      ],
    );
  }
}

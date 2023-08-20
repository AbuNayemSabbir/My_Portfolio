import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';

class EducationTitle extends StatefulWidget {
  const EducationTitle({
    Key? key,
    required this.universityName,
    required this.onTap,
    required this.position,
  }) : super(key: key);

  final String universityName;
  final Function() onTap;
  final String position;

  @override
  State<EducationTitle> createState() => _EducationTitleState();
}

class _EducationTitleState extends State<EducationTitle> {
  TextDecoration decoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '${widget.position} ',
        style: TextStyles.heeboText.copyWith(
          fontSize: 22.h,
          color: AppColor.textColor1,
        ),
        children: [
          const TextSpan(text: '@ '),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = widget.onTap,
            mouseCursor: MaterialStateMouseCursor.clickable,
            onEnter: (event) {
              setState(() {
                decoration = TextDecoration.underline;
              });
            },
            onExit: (event) {
              setState(() {
                decoration = TextDecoration.none;
              });
            },
            text: widget.universityName,
            style: TextStyles.heeboText.copyWith(
              fontSize: 22.h,
              color: AppColor.primaryColor,
              decoration: decoration,
              decorationColor: AppColor.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

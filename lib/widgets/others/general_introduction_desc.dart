import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_utils.dart';

class GeneralIntroductionDesc extends StatefulWidget {
  const GeneralIntroductionDesc({Key? key}) : super(key: key);

  @override
  State<GeneralIntroductionDesc> createState() =>
      _GeneralIntroductionDescState();
}

class _GeneralIntroductionDescState extends State<GeneralIntroductionDesc> {
  TextDecoration decoration = TextDecoration.none;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(

        text:
        "I am a software engineer specializing in developing mobile applications using Flutter. Currently, I am working on developing mobile applications at ",
        style: TextStyles.heeboText
            .copyWith(fontSize: 20.h, color: AppColor.textColor2),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppUtils.openLink('https://www.shebatech.com.bd/');
              },
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
            text: 'Sheba Technology Ltd.',
            style: TextStyles.heeboText.copyWith(
              fontSize: 20.h,
              color: AppColor.primaryColor,
              decoration: decoration,
              decorationColor: AppColor.primaryColor,
            ),
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}

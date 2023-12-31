import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/utils/app_utils.dart';
import 'package:my_portfolio/widgets/buttons/primary_button.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(MediaQuery.of(context).size.height / 9),
        Text(
          'Get In Touch',
          style: TextStyles.heeboText.copyWith(
            fontSize: MediaQuery.of(context).size.width < 960 ? 30.h : 40.h,
            color: AppColor.textColor1,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.1,
          ),
        ),
        verticalSpace(40.h),
        Padding(
          padding: MediaQuery.of(context).size.width < 1024
              ? EdgeInsets.zero
              : EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 5,
                ),
          child: Text(
    "I am currently working at Sheba Technology Ltd. as a Flutter Developer. While I am actively seeking new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I will do my best to respond promptly!",
            style: TextStyles.heeboText
                .copyWith(fontSize: 20.h, color: AppColor.textColor2),
            textAlign: TextAlign.justify,
          ),
        ),
        verticalSpace(40.h),
        ButtonPrimary(
          width: 150.h,
          height: 60.h,
          isOutline: true,
          label: 'Say Hello',
          color: Colors.transparent,
          outlineColor: AppColor.primaryColor,
          radius: 5.h,
          onTap: () {
            AppUtils.launcher(
              Uri(scheme: 'mailto', path: 'abunayemsabbir1@gmail.com'),
            );
          },
        ),
        verticalSpace(MediaQuery.of(context).size.height / 6),
      ],
    );
  }
}

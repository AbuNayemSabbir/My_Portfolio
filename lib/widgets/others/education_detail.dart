import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/data/data.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:my_portfolio/widgets/others/education_detail_desc.dart';
import 'package:my_portfolio/widgets/others/education_detail_title.dart';
import 'package:my_portfolio/widgets/others/experience_detail_desc.dart';
import 'package:my_portfolio/widgets/others/experience_detail_title.dart';

class EducationDetail extends StatefulWidget {
  const EducationDetail({Key? key}) : super(key: key);

  @override
  State<EducationDetail> createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 400.h,
      child: Row(
        children: [
          SizedBox(
            width: 200.h,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listEducation.length,
              separatorBuilder: (context, index) => const SizedBox(),
              itemBuilder: (context, index) {
                return EducationDetailTitle(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  selectedIndex: selectedIndex,
                  index: index,
                );
              },
            ),
          ),
          EducationDetailDesc(selectedIndex: selectedIndex),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            horizontalSpace(MediaQuery.of(context).size.width / 8),
        ],
      ),
    );
  }
}

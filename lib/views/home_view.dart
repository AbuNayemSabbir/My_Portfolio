import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/styles/colors.dart';
import 'package:my_portfolio/widgets/buttons/floating_left_button.dart';
import 'package:my_portfolio/widgets/buttons/floating_right_button.dart';
import 'package:my_portfolio/widgets/others/about.dart';
import 'package:my_portfolio/widgets/others/appbar_custom.dart';
import 'package:my_portfolio/widgets/others/contact.dart';
import 'package:my_portfolio/widgets/others/drawer_custom.dart';
import 'package:my_portfolio/widgets/others/education.dart';
import 'package:my_portfolio/widgets/others/experience.dart';
import 'package:my_portfolio/widgets/others/footer.dart';
import 'package:my_portfolio/widgets/others/general_introduction.dart';
import 'package:my_portfolio/widgets/others/project.dart';
import 'package:my_portfolio/widgets/others/project_other.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final itemScrollController = ItemScrollController();

  List<Widget> contents = const [
    GeneralIntroduction(),
    About(),
    Experience(),
    Education(),
    Project(),
    ProjectOther(),
    Contact(),
    Footer(),
  ];

  Future<void> contentNavigation(int index) async {
    await itemScrollController.scrollTo(
      index: index,
      curve: Curves.ease,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      endDrawer: DrawerCustom(
        onPressedAbout: () {
          contentNavigation(1);
        },
        onPressedContact: () {
          contentNavigation(6);
        },
        onPressedExperience: () {
          contentNavigation(2);
        },
        onPressedEducation: () {
          contentNavigation(3);
        },
        onPressedClientsProject: () {
          contentNavigation(4);
        },
        onPressedPersonalProjects: () {
          contentNavigation(5);
        },
      ),
      appBar: AppBarCustom(

        onPressedAbout: () {
          contentNavigation(1);
        },
        onPressedContact: () {
          contentNavigation(6);
        },
        onPressedExperience: () {
          contentNavigation(2);
        },
        onPressedEducation: () {
          contentNavigation(3);
        },
        onPressedClientsProject: () {
          contentNavigation(4);
        },
        onPressedPersonalProjects: () {
          contentNavigation(5);
        },
      ),
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
            padding: EdgeInsets.symmetric(
              horizontal:
                  MediaQuery.of(context).size.width < 960 ? 50.h : 250.h,
            ),
            itemScrollController: itemScrollController,
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return contents[index];
            },
          ),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            const FloatingLeftButton(),
          if (MediaQuery.of(context).size.width < 960)
            const SizedBox()
          else
            const FloatingRightButton(),
        ],
      ),
    );
  }
}

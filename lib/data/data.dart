import 'package:my_portfolio/models/experience_model.dart';
import 'package:my_portfolio/models/project_model.dart';

const List listTechnologies1 = ['Flutter', 'Git', 'Firebase'];

const List listTechnologies2 = ['Rest-API', 'Figma', 'Postman'];

const List<ExperienceModel> listExperience = [
  ExperienceModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    duration: 'August 2022 - Present',
    experiences: [
      'Work with a team of UI/UX Designer and Back-End Developer to build  Apps  for various clients.',
      'Write, maintain code with implemented clean architecture in every project',
      'Communicate with multi-disciplinary teams of engineers, designers, project managers, and clients on a daily basis.',
      'Fix bugs and ensuring the application can used properly when released.'
    ],
    position: 'Flutter Developer',
  )
];

const List<ProjectModel> listProject = [
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        'Build a  E-commerce app using Flutter and Firebase for Android and iOS.',
    projectLink: {
      'playstore': '',
      'appstore': '',
      'github': 'https://github.com/AbuNayemSabbir/E-Shop',
    },
    projectTitle: 'E-Shop',
  ),
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        'Build a Mobile Banking Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.megasyariah',
      'appstore': 'https://apps.apple.com/id/app/m-syariah/id1530760308',
      'github': '',
    },

    projectTitle: 'M-Syariah',
  ),
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        'Build a Mobile Banking Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.mobilemaslahah',
      'appstore': 'https://apps.apple.com/id/app/mobile-maslahah/id1543627726',
      'github': '',
    },
    projectTitle: 'Mobile Maslahah',
  ),
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        'Build a E-Wallet Application to provide financial services with Flutter for Android and iOS.',
    projectLink: {
      'playstore':
          'https://play.google.com/store/apps/details?id=com.asiapelangi.autopay.wallet',
      'appstore': 'https://apps.apple.com/id/app/actionpay/id1524738360',
      'github': '',
    },
    projectTitle: 'ActionPay',
  ),
];

const List<ProjectModel> listProjectOther = [
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc:
    'Build a Free VPN app using Flutter ',
    projectLink: {
      'playstore': '',
      'appstore': '',
      'github': 'https://github.com/AbuNayemSabbir/free_vpn_app',
    },
    projectTitle: 'Free VPN app',
  ),
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc:
        'Build a  E-commerce app using Flutter and Firebase for Android and iOS.',
    projectLink: {
      'playstore': '',
      'appstore': '',
      'github': 'https://github.com/AbuNayemSabbir/E-Shop',
    },
    projectTitle: 'E-Shop',
  ),
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc:
'Developed One to on video call app using Flutter and ZEGOCLOUD',
    projectLink: {
      'playstore': '',
      'appstore': '',
      'github': 'https://github.com/AbuNayemSabbir/One_to_One_video_call',
    },
    projectTitle: 'One to One Video Calling',
  ),
  ProjectModel(
    companyName: 'Self Employee',
    projectDesc: 'Developed Notes app using Flutter and sqflite database',
    projectLink: {
      'playstore': '',
      'appstore': '',
      'github': 'https://github.com/fathulaziss/flutix-getx',
    },
    projectTitle: 'Notes App  ',
  ),
];

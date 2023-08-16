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
        '   Gov. project develop for a2i using Flutter for Android and iOS.',

    projectTitle: 'PM APP',
  ),
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        ' Local event manage base custom Calendar(Bangla & English & Arabic) using Flutter for Android and iOS.',


    projectTitle: 'HSBC Calender App',
  ),
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        'Developed Face & Finger Verification App using native android (Java).',

    projectTitle: 'Akij Ekyc',
  ),
  ProjectModel(
    companyLink: 'https://www.shebatech.com.bd/',
    companyName: 'Sheba Technology Ltd.',
    projectDesc:
        'Developed Face verification app using native android (Java)',

    projectTitle: 'Brac Face Verification',
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

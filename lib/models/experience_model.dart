class ExperienceModel {
  const ExperienceModel({
    this.companyLink = '',
    this.companyName = '',
    this.duration = '',
    this.experiences = const <String>[],
    this.position = '',
  });

  final String companyName;
  final String companyLink;
  final String position;
  final String duration;
  final List<String> experiences;
}
class EducationModel {
  const EducationModel({
    this.universityLink = '',
    this.universityName = '',
    this.duration = '',
    this.experiences = const <String>[],
    this.position = '',
  });

  final String universityName;
  final String universityLink;
  final String position;
  final String duration;
  final List<String> experiences;
}

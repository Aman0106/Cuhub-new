import 'package:cu_hub/Screens/programmes_screen.dart';

class ClassModel {
  String label;
  final String? programme;
  int? year;
  int? section;
  String? group;
  ProgrammType programmType;

  ClassModel({
    required this.programmType,
    required this.label,
    this.programme,
    this.section,
    this.group,
    this.year,
  });
}

final ClassModel batch2022 = ClassModel(
    year: 2022, label: 'Batch-2022', programmType: ProgrammType.year);
final ClassModel batch2021 = ClassModel(
    year: 2021, label: 'Batch-2021', programmType: ProgrammType.year);
final ClassModel MCA = ClassModel(
    programme: 'MCA',
    label: 'MCA',
    programmType: ProgrammType.programme,
    year: 2022);
final ClassModel MCACC = ClassModel(
    programme: 'MCA_CC',
    label: 'MCA CC and DevOps',
    programmType: ProgrammType.programme,
    year: 2022);
final ClassModel MCAAI = ClassModel(
    programme: 'MCA_AI_ML',
    label: 'MCA AI ML',
    programmType: ProgrammType.programme,
    year: 2022);
final ClassModel BCA = ClassModel(
    programme: 'BCA',
    label: 'BCA',
    programmType: ProgrammType.programme,
    year: 2022);
final ClassModel BSC = ClassModel(
    programme: 'BSC',
    label: 'BSC',
    programmType: ProgrammType.programme,
    year: 2022);
final ClassModel BSC1 = ClassModel(
    programme: 'BSC',
    label: 'BSC - 1',
    year: 2022,
    section: 1,
    programmType: ProgrammType.section);
final ClassModel BSC2 = ClassModel(
    programme: 'BSC',
    label: 'BSC - 2',
    year: 2022,
    section: 2,
    programmType: ProgrammType.section);
final ClassModel BCA1 = ClassModel(
    programme: 'BCA',
    label: 'BCA - 1',
    year: 2021,
    section: 1,
    programmType: ProgrammType.section);
final ClassModel MCA1 = ClassModel(
    programme: 'MCA',
    label: 'MCA - 1',
    year: 2022,
    section: 1,
    programmType: ProgrammType.section);
final ClassModel MCACC1 = ClassModel(
    programme: 'MCA_CC',
    label: 'MCA CC and Devops - 1',
    year: 2022,
    section: 1,
    programmType: ProgrammType.section);

final List<ClassModel> allClasses = [
  batch2022,
  batch2021,
  MCA,
  MCACC,
  MCAAI,
  BCA,
  BSC,
  BSC1,
  BSC2,
  BCA1,
  MCA1,
  MCACC1,
];

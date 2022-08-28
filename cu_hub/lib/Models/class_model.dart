import 'package:cu_hub/Screens/programmes_screen.dart';

class MyClass {
  String label;
  final String? programme;
  int? year;
  int? section;
  String? group;
  ProgrammType programmType;

  MyClass({
    required this.programmType,
    required this.label,
    this.programme,
    this.section,
    this.group,
    this.year,
  });
}

final MyClass batch2022 =
    MyClass(year: 2022, label: 'Batch-2022', programmType: ProgrammType.year);
final MyClass batch2021 =
    MyClass(year: 2021, label: 'Batch-2021', programmType: ProgrammType.year);
final MyClass MCA = MyClass(
    programme: 'MCA',
    label: 'MCA',
    programmType: ProgrammType.programme,
    year: 2022);
final MyClass MCACC = MyClass(
    programme: 'MCA_CC',
    label: 'MCA CC and DevOps',
    programmType: ProgrammType.programme,
    year: 2022);
final MyClass MCAAI = MyClass(
    programme: 'MCA_AI_ML',
    label: 'MCA AI ML',
    programmType: ProgrammType.programme,
    year: 2022);
final MyClass BCA = MyClass(
    programme: 'BCA',
    label: 'BCA',
    programmType: ProgrammType.programme,
    year: 2022);
final MyClass BSC = MyClass(
    programme: 'BSC',
    label: 'BSC',
    programmType: ProgrammType.programme,
    year: 2022);
final MyClass BSC1 = MyClass(
    programme: 'BSC',
    label: 'BSC - 1',
    year: 2022,
    section: 1,
    programmType: ProgrammType.section);
final MyClass BSC2 = MyClass(
    programme: 'BSC',
    label: 'BSC - 2',
    year: 2022,
    section: 2,
    programmType: ProgrammType.section);
final MyClass BCA1 = MyClass(
    programme: 'BCA',
    label: 'BCA - 1',
    year: 2021,
    section: 1,
    programmType: ProgrammType.section);
final MyClass MCA1 = MyClass(
    programme: 'MCA',
    label: 'MCA - 1',
    year: 2022,
    section: 1,
    programmType: ProgrammType.section);
final MyClass MCACC1 = MyClass(
    programme: 'MCA_CC',
    label: 'MCA CC and Devops - 1',
    year: 2022,
    section: 1,
    programmType: ProgrammType.section);

final List<MyClass> allClasses = [
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

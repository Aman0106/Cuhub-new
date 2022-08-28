import 'dart:ui';

import 'package:cu_hub/Widgets/class_tile_widget.dart';
import 'package:cu_hub/Widgets/make_announcement_widget.dart';
import 'package:flutter/material.dart';

import '../Models/class_model.dart';

class ProgrammesListScreen extends StatefulWidget {
  ClassModel currentClass =
      ClassModel(label: 'default', programmType: ProgrammType.year);

  bool isMultiselect = false;

  ProgrammesListScreen({required this.currentClass});

  @override
  State<ProgrammesListScreen> createState() => _ProgrammesListScreenState();
}

class _ProgrammesListScreenState extends State<ProgrammesListScreen> {
  final List<ClassModel> allClass = allClasses;
  List<ClassModel> selectedClasses = [];
  bool selectMult = false;
  final List<ClassModel> classes = [];

  bool makeAnnouncement = false;

  @override
  void initState() {
    super.initState();
    selectMult = widget.isMultiselect;
    populateClasses(widget.currentClass);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromARGB(255, 23, 25, 32),
      body: Stack(
        alignment: Alignment.center,
        children: [
          IgnorePointer(
            ignoring: makeAnnouncement,
            child: Container(
              color: makeAnnouncement ? Colors.black54 : Colors.transparent,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: classes.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (selectedClasses.isEmpty)
                          widget.isMultiselect = false;
                        final isSelected =
                            selectedClasses.contains(classes[index]);
                        return ClassTileWidget(
                          cls: classes[index],
                          isSelected: isSelected,
                          isMulSelect: selectMult,
                          onSelectedClass: selectClass,
                          onMultiSelect: multiSelect,
                        );
                      },
                    ),
                  ),
                  if (selectMult) buildSelectButton(context),
                ],
              ),
            ),
          ),
          if (makeAnnouncement)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: MakeAnnouncementWidget(
                onShowAnnouncement: setAnnouncement,
              ),
            ),
        ],
      ),
    );
  }

  void setAnnouncement(bool value) {
    debugPrint('$value');
    setState(() {
      makeAnnouncement = value;
    });
  }

  Widget buildSelectButton(BuildContext context) {
    final label = 'Select ${selectedClasses.length} Programmes';

    return GestureDetector(
      onTap: () => setState(() {
        if (selectedClasses.isNotEmpty) setAnnouncement(true);
      }),
      child: Container(
        // alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.only(bottom: 40),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        decoration: BoxDecoration(
          color: selectedClasses.isNotEmpty ? Colors.amber : Colors.grey[600],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  void multiSelect(bool mul) {
    setState(() {
      selectMult = mul;
    });
  }

  void selectClass(ClassModel cls) {
    if (selectMult) {
      final isSelected = selectedClasses.contains(cls);
      setState(() {
        isSelected ? selectedClasses.remove(cls) : selectedClasses.add(cls);
        if (selectedClasses.isEmpty) {
          selectMult = false;
          makeAnnouncement = false;
        }
      });
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (builder) => ProgrammesListScreen(currentClass: cls)));
    }
  }

  void populateClasses(ClassModel cls) {
    switch (cls.programmType) {
      case ProgrammType.defaultType:
        allClass.forEach((element) {
          if (ProgrammType.year == element.programmType) classes.add(element);
        });
        break;
      case ProgrammType.year:
        allClass.forEach((element) {
          if (ProgrammType.programme == element.programmType)
            classes.add(element);
        });
        break;
      case ProgrammType.programme:
        allClass.forEach((element) {
          if (ProgrammType.section == element.programmType &&
              cls.programme == element.programme &&
              cls.year == element.year) classes.add(element);
        });
        break;
      case ProgrammType.section:
        allClass.forEach((element) {
          if (ProgrammType.group == element.programmType &&
              cls.section == element.section) classes.add(element);
        });
        break;
      case ProgrammType.group:
        // TODO: Handle this case.
        break;
    }
  }
}

enum ProgrammType { defaultType, year, programme, section, group }

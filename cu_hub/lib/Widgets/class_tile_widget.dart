import 'package:flutter/material.dart';

import '../Models/class_model.dart';

class ClassTileWidget extends StatelessWidget {
  final MyClass cls;
  bool isSelected;
  final bool isMulSelect;
  final ValueChanged<MyClass> onSelectedClass;
  final ValueChanged<bool> onMultiSelect;

  ClassTileWidget(
      {required this.cls,
      required this.isSelected,
      required this.onSelectedClass,
      required this.onMultiSelect,
      required this.isMulSelect});

  @override
  Widget build(BuildContext context) {
    final style = isSelected
        ? const TextStyle(
            color: Color.fromARGB(255, 249, 26, 10),
            fontSize: 18,
            fontWeight: FontWeight.bold)
        : const TextStyle(color: Colors.white, fontSize: 18);

    return ListTile(
        onTap: () => onSelectedClass(cls),
        onLongPress: () {
          isSelected = true;
          onMultiSelect(true);
        },
        title: Text(
          cls.label,
          style: style,
        ),
        trailing: getIcon());
  }

  Widget? getIcon() {
    Icon? icon;
    if (isSelected) {
      icon = const Icon(
        Icons.check_box,
        color: Color.fromARGB(255, 249, 26, 10),
      );
    } else if (isMulSelect) {
      icon = const Icon(
        Icons.check_box_outline_blank,
        color: Colors.white,
      );
    }
    return icon;
  }
}

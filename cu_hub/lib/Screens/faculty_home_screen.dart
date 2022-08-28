import 'package:cu_hub/Models/class_model.dart';
import 'package:cu_hub/Screens/announcements_screen.dart';
import 'package:cu_hub/Screens/programmes_screen.dart';
import 'package:cu_hub/Widgets/functions_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FacultyHomeScreen extends StatefulWidget {
  const FacultyHomeScreen({Key? key}) : super(key: key);

  @override
  State<FacultyHomeScreen> createState() => _FacultyHomeScreenState();
}

class _FacultyHomeScreenState extends State<FacultyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color.fromARGB(255, 23, 25, 32),
        body: Column(
          children: [
            Container(
              // width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/demo_profile_pic.jpg'),
                radius: 90,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'E541789',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 1, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 32, 34, 44),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20,
                  children: [
                    FeaturesCardWidget(
                        label: 'Time Table',
                        icon: Icons.grid_on,
                        page: const AnnouncementsScreen()),
                    FeaturesCardWidget(
                        label: 'Anouncment',
                        icon: Icons.message,
                        page: const AnnouncementsScreen()),
                    FeaturesCardWidget(
                        label: 'Programmes',
                        icon: Icons.people_alt,
                        page: ProgrammesListScreen(
                          currentClass: MyClass(
                            programmType: ProgrammType.defaultType,
                            label: 'default',
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

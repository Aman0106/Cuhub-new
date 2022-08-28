import 'package:cu_hub/Models/class_model.dart';
import 'package:cu_hub/Screens/announcements_screen.dart';
import 'package:cu_hub/Screens/programmes_screen.dart';
import 'package:cu_hub/Widgets/functions_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

              child: CircleAvatar(
                backgroundImage:
                    const AssetImage('assets/images/demo_profile_pic.jpg'),
                radius: 90.r,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              'Name',
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'E541789',
              style: TextStyle(
                fontSize: 20.sp,
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 1.h, left: 20.w, right: 20.w),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 34, 44),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.r),
                    topRight: Radius.circular(15.r),
                  ),
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 20.h,
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
                          currentClass: ClassModel(
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

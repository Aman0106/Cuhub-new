import 'package:cu_hub/Screens/auth_screens.dart';
import 'package:cu_hub/Screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserSelectWidget extends StatefulWidget {
  const UserSelectWidget({Key? key}) : super(key: key);

  @override
  State<UserSelectWidget> createState() => _UserSelectWidgetState();
}

class _UserSelectWidgetState extends State<UserSelectWidget> {
  var selectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 40.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'CU Hub',
            style: TextStyle(
              color: const Color.fromARGB(255, 240, 231, 231),
              fontSize: 72.sp,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 40.h),
          SizedBox(
            height: 300.h,
            width: 500.w,
            child: Image.asset(
              'assets/images/cu_seal.png',
              scale: 1,
            ),
          ),
          SizedBox(height: 40.h),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectionIndex = 0;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectionIndex == 0
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                          ),
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'Student',
                            style: TextStyle(
                              fontSize: 32.sp,
                              color: selectionIndex == 0
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectionIndex = 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectionIndex == 1
                                ? Colors.white
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
                          ),
                          padding: EdgeInsets.all(8.sp),
                          child: Text(
                            'Faculty',
                            style: TextStyle(
                              fontSize: 32.sp,
                              color: selectionIndex == 1
                                  ? Colors.black
                                  : Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.h),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32.r,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignInScreen(userIndex: selectionIndex),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.black,
              iconSize: 40.r,
            ),
          ),
        ],
      ),
    );
  }
}

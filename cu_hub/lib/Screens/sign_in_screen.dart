import 'package:cu_hub/Screens/faculty_home_screen.dart';
import 'package:cu_hub/Screens/student_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  final int userIndex;
  SignInScreen({required this.userIndex});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 19, 20, 27),
      body: Container(
        margin: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
        decoration: BoxDecoration(
          color: const Color.fromARGB(213, 45, 44, 51),
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              children: [
                Text(
                  'Let\'s Sign you in',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 240, 231, 231),
                    fontSize: 54.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 40.h),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.white38),
                    fillColor: Colors.black12,
                    filled: true,
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.5),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                TextField(
                  obscureText: !showPassword,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.white38),
                    fillColor: Colors.black12,
                    filled: true,
                    focusColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: (() {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      }),
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        color: showPassword ? Colors.white70 : Colors.white38,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 65.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100.w, vertical: 10.h),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.r),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return widget.userIndex == 0
                          ? const StudentHomeScreen()
                          : const FacultyHomeScreen();
                    }));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:cu_hub/Screens/faculty_home_screen.dart';
import 'package:cu_hub/Screens/student_home_screen.dart';
import 'package:flutter/material.dart';

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
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 19, 20, 27),
      body: Container(
        margin: EdgeInsets.only(top: screenSize.height * 0.04),
        decoration: const BoxDecoration(
          color: Color.fromARGB(213, 45, 44, 51),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(screenSize.aspectRatio * 60),
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.001),
            child: Column(
              children: [
                Text(
                  'Let\'s Sign you in',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 240, 231, 231),
                    fontSize: screenSize.width * 0.15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.06),
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
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.025),
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
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.2),
                      borderRadius: BorderRadius.circular(15),
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
                SizedBox(height: screenSize.height * 0.09),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenSize.width * 0.265,
                        vertical: screenSize.height * 0.0135),
                    primary: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
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
                      fontSize: screenSize.aspectRatio * 55,
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

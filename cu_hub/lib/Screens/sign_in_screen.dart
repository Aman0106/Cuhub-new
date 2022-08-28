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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 19, 20, 27),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        decoration: const BoxDecoration(
          color: Color.fromARGB(213, 45, 44, 51),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(30.0),
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.035),
            child: Column(
              children: [
                const Text(
                  'Let\'s Sign you in',
                  style: TextStyle(
                    color: Color.fromARGB(255, 240, 231, 231),
                    fontSize: 56,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(height: 50),
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
                const SizedBox(height: 20),
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
                const SizedBox(height: 60),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 10),
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
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
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

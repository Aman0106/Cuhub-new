import 'package:cu_hub/Screens/auth_screens.dart';
import 'package:cu_hub/Screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class UserSelectWidget extends StatefulWidget {
  const UserSelectWidget({Key? key}) : super(key: key);

  @override
  State<UserSelectWidget> createState() => _UserSelectWidgetState();
}

class _UserSelectWidgetState extends State<UserSelectWidget> {
  var selectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'CU Hub',
            style: TextStyle(
              color: Color.fromARGB(255, 240, 231, 231),
              fontSize: 76,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 70),
          Image.asset(
            'assets/images/cu_seal.png',
            scale: 2,
          ),
          const SizedBox(height: 70),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 99),
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Student',
                      style: TextStyle(
                        fontSize: 24,
                        color:
                            selectionIndex == 0 ? Colors.black : Colors.white,
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
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Faculty',
                      style: TextStyle(
                        fontSize: 24,
                        color:
                            selectionIndex == 1 ? Colors.black : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 28,
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
              iconSize: 42,
            ),
          ),
        ],
      ),
    );
  }
}

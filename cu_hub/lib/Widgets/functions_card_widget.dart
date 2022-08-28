import 'package:flutter/material.dart';

class FeaturesCardWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget page;

  FeaturesCardWidget(
      {required this.label, required this.icon, required this.page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) => page));
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        child: Card(
          color: const Color.fromARGB(255, 23, 25, 32),
          shadowColor: Colors.black,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Icon(
                  icon,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              Text(
                label,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

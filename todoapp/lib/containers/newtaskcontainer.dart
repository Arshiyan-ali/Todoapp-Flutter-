import 'package:flutter/material.dart';

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 60),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Create New Task",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/images/logo1.jpg'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

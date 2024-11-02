import 'package:flutter/material.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90.0, bottom: 20),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to Notes",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Have a Great Day",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("images/logo1.jpg"),
            )
          ],
        ),
      ),
    );
  }
}

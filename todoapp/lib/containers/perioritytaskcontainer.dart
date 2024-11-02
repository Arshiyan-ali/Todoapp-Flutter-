import 'package:flutter/material.dart';

class PriorityContainer extends StatelessWidget {
  const PriorityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 178, 178, 178),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 200,
                    padding: EdgeInsets.only(left: 100, top: 10),
                    child: Icon(Icons.mobile_friendly),
                  ),
                  Container(
                    height: 30,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "2 hours ago",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 232, 225, 225)),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Mobile App UI Design",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 12, top: 6, right: 8),
                    child: Text(
                      "Using Figma and other Tools",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 232, 225, 225)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                color: Color.fromARGB(234, 178, 178, 178),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 30,
                    width: 200,
                    padding: EdgeInsets.only(left: 100, top: 10),
                    child: Icon(Icons.camera_alt_rounded),
                  ),
                  Container(
                    height: 30,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "4 hours ago",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 232, 225, 225)),
                    ),
                  ),
                  Container(
                    height: 65,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "Capture Sun Rise Shorts",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 12, top: 6, right: 8),
                    child: Text(
                      "Using Figma and other Tools",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 232, 225, 225)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TimingContainer extends StatelessWidget {
  const TimingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "From",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    SizedBox(
                        height:
                            8), // Add some space between the text and the text field
                    Container(
                      width: 120,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 50),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To",
                      style: TextStyle(fontSize: 22, color: Colors.black),
                    ),
                    SizedBox(
                        height:
                            8), // Add some space between the text and the text field
                    Container(
                      width: 120,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

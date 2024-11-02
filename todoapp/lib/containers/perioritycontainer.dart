import 'package:flutter/material.dart';

class ChoosePriority extends StatelessWidget {
  const ChoosePriority({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Align content to the start of the column
          children: [
            Text(
              "Choose Priority",
              style: TextStyle(
                  fontSize: 28), // Add font size for better visibility
            ),
            SizedBox(
                height: 20), // Add some spacing between text and the button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 255, 101, 90), // Set the background color to red
                  ),
                  child: Text(
                    "High",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 52, 176, 2), // Set the background color to red
                  ),
                  child: Text(
                    "Medium",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 221, 225, 11), // Set the background color to red
                  ),
                  child: Text(
                    "Low",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

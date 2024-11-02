import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController TitleController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
      child: Container(
        width: double.infinity,
        height: 100,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(
                      height:
                          8), // Add some space between the text and the text field
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: TextField(
                      controller: TitleController,
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
          ],
        ),
      ),
    );
  }
}

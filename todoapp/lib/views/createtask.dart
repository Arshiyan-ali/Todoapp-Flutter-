// import 'package:assignment_todo/components/description_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoapp/containers/newtaskcontainer.dart';
import 'package:todoapp/containers/perioritycontainer.dart';
import 'package:todoapp/containers/timingcontainer.dart';
import 'package:todoapp/data/list.dart';
import 'package:todoapp/utils/colors.dart';
import 'package:todoapp/views/dashboard.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  // List name = [{"name" :"T"}]
  @override
  Widget build(BuildContext context) {
    TextEditingController TitleController = TextEditingController();
    TextEditingController DescriptionController = TextEditingController();

    void _editTask(int index) async {
      TextEditingController titleController =
          TextEditingController(text: name[index]["name"]);
      TextEditingController descriptionController =
          TextEditingController(text: name[index]["Description"]);

      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit Task"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: "Title"),
                ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(labelText: "Description"),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  setState(() {
                    name[index]["name"] = titleController.text;
                    name[index]["Description"] = descriptionController.text;
                  });
                  Navigator.of(context).pop();
                },
                child: Text("Save"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: mainColor,
        child: Column(
          children: [
            NewTask(),
            TimingContainer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
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
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
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
                            "Description",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                          SizedBox(
                              height:
                                  8), // Add some space between the text and the text field
                          Container(
                            width: double.infinity,
                            height: 50,
                            child: TextField(
                              controller: DescriptionController,
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
            ),
            ChoosePriority(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          name.add({
            "name": TitleController.text,
            "Description": DescriptionController.text
          });
          // name.add({Description : TitleController.text});

          // name.add({Description : DescriptionController.text});
          // name.add(DescriptionController.text);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dashboard()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

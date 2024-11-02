import 'package:flutter/material.dart';
import 'package:todoapp/data/list.dart';

class Mytodo extends StatefulWidget {
  const Mytodo({super.key});

  @override
  State<Mytodo> createState() => _MytodoState();
}

class _MytodoState extends State<Mytodo> {
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 18, vertical: 12), // Add padding between items
            child: Container(
              padding: EdgeInsets.all(12),
              height: 90,
              decoration: BoxDecoration(
                color:
                    Colors.white, // Add background color for better visibility
                borderRadius: BorderRadius.circular(
                    15), // Add border radius for curved borders
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  name[index]["name"],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                subtitle: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 20,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        name[index]["Description"],
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 95, 95, 95),
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Container(
                  width: 90,
                  height: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            name.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.delete_forever_outlined,
                          size: 28,
                          color: Colors.red,
                        ),
                      ),
                      IconButton(
                        onPressed: () => _editTask(index),
                        icon: Icon(
                          Icons.edit,
                          size: 28,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

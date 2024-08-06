import 'package:dynamic_link/boxes/boxes.dart';
import 'package:dynamic_link/models/notes_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/adapters.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController _titleController = TextEditingController();

  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Notes"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ValueListenableBuilder<Box<NotesModel>>(
        valueListenable: Boxes.getData().listenable(),
        builder: (context, box, _) {
          var data = box.values.toList().cast<NotesModel>();
          return ListView.builder(
            // reverse: true,
            shrinkWrap: true,
            itemCount: box.length,
            itemBuilder: (context, index) {
              return Card(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(data[index].title.toString()),
                        Spacer(),
                        IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              delete(data[index]);
                            }),
                        SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.edit,
                            ),
                            onPressed: () {
                              _editDailog(
                                  data[index],
                                  data[index].title.toString(),
                                  data[index].description.toString());
                            }),
                      ],
                    ),
                    Text(data[index].description.toString())
                  ],
                ),
              ));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _showMyDailog();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _showMyDailog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                        hintText: "Enter title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                        hintText: "Enter description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  )
                ],
              ),
            ),
            title: Text("Add Notes"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cansel")),
              TextButton(
                  onPressed: () {
                    final data = NotesModel(
                        title: _titleController.text,
                        description: _descriptionController.text);

                    final box = Boxes.getData();
                    box.add(data);

                    // data.save();
                    print(box);
                    _titleController.clear();
                    _descriptionController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Add"))
            ],
          );
        });
  }

  void delete(NotesModel notesModel) async {
    await notesModel.delete();
  }

  Future<void> _editDailog(
      NotesModel notesModel, String title, String description) async {
    _titleController.text = title;
    _descriptionController.text = description;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                        hintText: "Enter title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                        hintText: "Enter description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  )
                ],
              ),
            ),
            title: Text("Edit Notes"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cansel")),
              TextButton(
                  onPressed: () async {
                    notesModel.title = _titleController.text.toString();
                    notesModel.description =
                        _descriptionController.text.toString();

                    notesModel.save();
                    _titleController.clear();
                    _descriptionController.clear();

                    Navigator.pop(context);
                  },
                  child: Text("Edit"))
            ],
          );
        });
  }
}

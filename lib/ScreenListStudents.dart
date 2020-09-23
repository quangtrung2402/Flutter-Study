import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScreenEditStudent.dart';
import 'Student.dart';
import 'StudentItem.dart';

List<Student> students = generateStudents();

class ScreenListStudents extends StatefulWidget {
  @override
  _ListStudentsState createState() => _ListStudentsState();
}

class _ListStudentsState extends State<ScreenListStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Information')),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentItem(students[index], ScreenEditStudent(students[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addStudent,
        child: Icon(Icons.add),
      ),
    );
  }

  void _addStudent() {
    String name, subject;
    double point;
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: Center(
          child: Text('Add Student'),
        ),
        content: Container(
          height: 210,
          child: Column(
            children: [
              new TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter name',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (String value) {
                  name = value;
                },
              ),
              SizedBox(height: 16),
              new TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter subject',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (String value) {
                  subject = value;
                },
              ),
              SizedBox(height: 16),
              new TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter point',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
                onChanged: (String value) {
                  point = double.parse(value);
                },
              ),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Add'),
            onPressed: () {
              if (name != null && subject != null && point != null) {
                Student student = new Student(name, subject, point);
                students.add(student);
                setState(() {});
                Navigator.of(context).pop();
              }
            },
          ),
          FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

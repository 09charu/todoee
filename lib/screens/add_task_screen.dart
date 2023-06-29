import 'package:flutter/material.dart';
import 'package:todoee/models/task_data.dart';
import 'package:provider/provider.dart';


class  AddTaskScreen extends StatefulWidget {
  final Function? Addtask;

  AddTaskScreen({this.Addtask});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController tasktext = TextEditingController();
  @override
  void dispose(){
    tasktext.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    // String newTaskTitle;

    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.deepPurpleAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                controller: tasktext,
                // onChanged: (newText){
                //   newTaskTitle= newText;
                // },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                onPressed: (){
                  Provider.of<TaskData>(context).addTask(tasktext.text);
                  Navigator.pop(context);
                },
                child: Text('Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),),
              ),

            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todoee/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoee/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}


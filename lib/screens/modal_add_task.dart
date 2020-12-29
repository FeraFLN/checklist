import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoy_flutter/models/task_data.dart';

class ModalAddTasks extends StatelessWidget {
//  final Function callBackAddTask;
  final myController = TextEditingController();

  ModalAddTasks();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                  'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0,
                ),
              ),
              TextFormField(
                autofocus: true,
                textAlign: TextAlign.center,
                controller: myController,

              ),
              SizedBox(height: 15.0,),
              FlatButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                splashColor: Colors.blueAccent,
                child: Text('Add'),
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addNewTask(myController.text);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:provider/provider.dart';
import 'package:todoy_flutter/models/task_data.dart';
import 'package:todoy_flutter/models/task_model.dart';
import 'package:todoy_flutter/screens/modal_add_task.dart';
import 'package:todoy_flutter/widgets/tasks_list.dart';

import '../constants.dart';
class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context)=>ModalAddTasks(),
              shape:RoundedRectangleBorder(
                borderRadius: kRoundRadiusContainer
              )
          );
        },
        child: Icon(
          Icons.add,
          size: 35.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.0,left: 30.0,right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleTopIcon(),
                SizedBox( height: 15.0,),
                Text('Todaey',style: kStyleHeader),
                Text('${Provider.of<TaskData>(context).listSize} items',style: kStyleHeader1,),
              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: Container(
              child: TasksList(),
              decoration: kBoxDecorationList
            ),
          ),
        ],
      ),
    );
  }
}
class CircleTopIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: 30.0,
        child: Icon(
          Icons.list,
          size: 30.0,
        )
    );
  }
}





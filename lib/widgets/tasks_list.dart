import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoy_flutter/models/task_data.dart';

import 'labeled_checkbox.dart';
class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
            builder: (context,taskData,child){
              return ListView.builder(
                itemBuilder:  (context,index){
                  return LabeledCheckbox(
                    task: taskData.tasks[index],
                    onChanged: (value){
                      taskData.toggleDone(index);
                    },
                    onLongPress: (){
                      taskData.delete(index);
                    },
                  );
                },
                itemCount: taskData.listSize,
              );
            },
          );
        }



}


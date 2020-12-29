

import 'package:flutter/material.dart';
import 'package:todoy_flutter/models/task_model.dart';

class LabeledCheckbox extends StatelessWidget {
  final Task task;
  final EdgeInsets padding;
  final Function onChanged;
  final Function onLongPress;

  LabeledCheckbox({
    this.task,
    this.padding = const EdgeInsets.symmetric(horizontal: 30.0),
    this.onChanged,
    this.onLongPress
  });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!task.isDone);
      },
      onLongPress: onLongPress,
      child: Padding(
        padding:  padding,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                task.text,
                style: TextStyle(decoration: task.isDone?TextDecoration.lineThrough:TextDecoration.none,),
              ),
            ),
            Checkbox(
              value: task.isDone,
              onChanged:onChanged,
            ),

          ],
        ),
      ),
    );
  }
}


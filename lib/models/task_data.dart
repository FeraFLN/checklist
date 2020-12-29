

import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoy_flutter/models/task_model.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks=[
    Task(text: 'Test 1'),
    Task(text: 'Test 2'),
    Task(text: 'Test 3'),
    Task(text: 'Test 4'),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  int get listSize {
    return _tasks.length;
  }
  void addNewTask(String task){
    print(task);
    _tasks.add(Task(text: task));
    notifyListeners();
  }

  void toggleDone(int index){
    if(0<= index && index < _tasks.length){
      _tasks[index].toggleDone();
      notifyListeners();
    }
  }
  void delete(int index){
    if(0<= index && index < _tasks.length){
      _tasks.removeAt(index);
      notifyListeners();
    }
  }
}
import 'package:flutter/material.dart';
import 'package:learning/utils/todo_list.dart';

class HomePage extends StatefulWidget{
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList =[
    ['Talentio assesment',false],
    ['Writing',false],
  ];

  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(title: Center(child: const Text('Simple Todo')),
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,),
      body: ListView.builder(itemCount:toDoList.length,itemBuilder: (BuildContext context, index)
        {
          return TodoList(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(index),
          );
        },),
        floatingActionButton: Row(
          children: [
             Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Add new todo task',
                  filled: true,
                  fillColor: Colors.deepPurple.shade200,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.deepPurple
                    ),
                    borderRadius: BorderRadius.circular(14)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.deepPurple
                      ),
                      borderRadius: BorderRadius.circular(14)
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            )),
            FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
    ),
          ],
        ),
    );
  }
}
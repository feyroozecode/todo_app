import 'package:flutter/material.dart';
import 'package:todo_app/models/Todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String created = DateTime.now().day.toString() +
      DateTime.now().hour.toString() +
      DateTime.now().minute.toString();

  List<Todo> todosList = [];

  @override
  Widget build(BuildContext context) {
     todosList.add(Todo(created, created,
        id: 0,
        title: "Deployer la version IOS",
        content: "Deployer la version IOS de l'app  revolution  "));

    return Scaffold(
      appBar: AppBar(title: const Text("Todo App")),
      body: SizedBox(
       child: ListView(
        children: todosList.map((item) => 
        ListTile(
          leading: CircleAvatar(
            child: Text(item.id.toString())
          ),
          title: Text(item.title),
          subtitle: Text(item.content)
        )).toList()
       )
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            
          }, child: const Icon(Icons.add)),
    );
  }
}

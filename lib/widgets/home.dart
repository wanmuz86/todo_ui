import 'package:flutter/material.dart';
import 'package:todos/widgets/add.dart';
import 'package:todos/widgets/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todos = [
    {
      "name":"Teach Todo",
      "place":"Iverson office",
      "description":"Create new To do app"
    },
    {
      "name":"Small break",
      "place":"Iverson office",
      "description":"Coffee and snacks"
    },
    {
      "name":"Meeting with Saudi",
      "place":"Home",
      "description":"Discuss localization of app"
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To do app"), actions: [
        IconButton(onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=> AddPage()));
        }, icon: Icon(Icons.add))
      ],),
      body: ListView.builder(

        /*

        itemCount = how many rows are there? = depends on the number of items in my todos List
        The lenght of my list = todos.length
        itemBuilder = What to show on each row/index
         */
          padding: const EdgeInsets.all(8),
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(todos[index]["name"]!),
                subtitle: Text(todos[index]["place"]!),
                trailing:Icon(Icons.chevron_right),
                onTap: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> DetailPage())
                  );

                },
              ),
            );
          }
      ),
    );
  }
}

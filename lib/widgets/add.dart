import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Add Page"),),
    body: Column(
      children: [
        TextField(decoration: InputDecoration(hintText: "Enter Item name"),),
        TextField(decoration: InputDecoration(hintText: "Enter Item description"),),
        TextField(decoration: InputDecoration(hintText: "Enter Item place"),),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("Add new Item"))
      ],
    ),);
  }
}

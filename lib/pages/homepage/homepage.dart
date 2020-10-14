import 'package:flutter/material.dart';
import 'package:nekreativniproject/api.dart';
import 'package:nekreativniproject/pages/homepage/components/TaskCard.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _data = [];
  Future getData() async {
    var data = await Api().load("getList.php");
    setState(() {
      _data = data;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        appBar: AppBar(
          title: Text("Random název"),
        ),
        body: new ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: _data.length,
            itemBuilder: (BuildContext context, int index) {
              return TaskCard(
                  id: _data[index]["id"],
                  budget: _data[index]["task_budget"],
                  task_title: _data[index]["task_title"],
                  country: _data[index]["country"]);
            }));
  }
}

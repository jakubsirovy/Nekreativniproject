import 'package:flutter/material.dart';
import 'package:nekreativniproject/api.dart';
import 'package:nekreativniproject/pages/detail/components/comment.dart';

class TaskDetail extends StatefulWidget {
  final int id;
  TaskDetail({this.id});
  @override
  _TaskDetailState createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  Future getData(int id) async {
    var data = await Api().load("getSingle.php", params: {"id": id});
    return data;
  }

  ScrollController scrollcontroller = new ScrollController();

  buildList(int count) {
    List<Widget> widgets = [];
    for (int i = 0; i < count; i++) {
      widgets.add(Comment());
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("Detail o položce"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var data = snapshot.data;
                  return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['task_title'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600
                                //color: Theme.of(context).textTheme.,
                                ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            data['task_description'],
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  "${data['task_budget']} Kč",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                RaisedButton(
                                  color: Colors.greenAccent.shade400,
                                  onPressed: () {},
                                  child: const Text('Vytvořit nabídku',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Column(children: buildList(20))
                        ],
                      ));
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
              future: getData(this.widget.id),
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:nekreativniproject/api.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("Detail o položce"),
        ),
        body: Container(
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
                          height: 8,
                        ),
                        Center(
                          child: Text(
                            "${data['task_budget']} Kč",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
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
        ));
  }
}

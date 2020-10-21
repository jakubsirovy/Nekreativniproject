import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final int id;
  final int budget;
  final String task_title;
  final String country;

  TaskCard({this.id, this.budget, this.task_title, this.country});

  @override
  _TaskCardState createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Color.fromRGBO(74, 85, 106, .9),
      child: Container(
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            Navigator.pushNamed(context, "task/detail",
                arguments: this.widget.id);
            // Scaffold.of(context).showSnackBar(
            //   SnackBar(
            //       content: Text("${_data[index]['task_budget']} Kč")),
            // );
          },
          child: Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${this.widget.task_title}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Text("${this.widget.budget} Kč",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 20.0),
                      SizedBox(width: 5),
                      Text(
                        '${this.widget.country}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}

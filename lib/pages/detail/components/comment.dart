import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Color.fromRGBO(74, 85, 106, .9),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://scontent-prg1-1.xx.fbcdn.net/v/t1.0-1/cp0/p60x60/104240873_3085096971565970_1941151950057874481_o.jpg?_nc_cat=100&_nc_sid=7206a8&_nc_ohc=srL-uPxxoJ4AX-9HRlq&_nc_ht=scontent-prg1-1.xx&tp=-27&oh=0009746b593d8df88c5ea0ad1424c0e7&oe=5FB4B6B8"),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pavel V.",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Flutter ucitel",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Hodnotim zaporne, akce byla na pytel a zanechal jsem koblih za odmenu. Slysel jsem, ze si na nem rano pochutnal pes.",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Pred 20 minutami"),
                MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      const Text('Odpovedet',
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

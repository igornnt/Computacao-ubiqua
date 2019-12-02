import 'package:flutter/material.dart';

class TelaRanking extends StatefulWidget {
  TelaRanking({Key key}) : super(key: key);
  @override
  _TelaRankingState createState() => new _TelaRankingState();
}

class _TelaRankingState extends State<TelaRanking> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Ranking'),
          ),
          body: ListView(children: <Widget>[
            Container(margin: EdgeInsets.all(8.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("1º",
                  style: TextStyle(fontSize: 20),),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text("Nome da pessoa",
                  style: TextStyle(fontSize: 20),),
                ),
                SizedBox(
                  width: 20,
                ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("150 pontos",
                      style: TextStyle(fontSize: 20),),
                    ),
                    Container(child: Icon(Icons.trending_up, color: Colors.yellow.shade900,),)
                ],
            )
          ],),
      );
    }
}
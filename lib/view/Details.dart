import 'package:flutter/material.dart';


class TelaDetails extends StatefulWidget {

  TelaDetails ({Key key, this.title }) : super(key: key);

  final String title;

  _TelaDetailState createstate() => _TelaDetailState();
  
}

  class _TelaDetailState extends State<TelaDetails> {

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
      );
    }
  }
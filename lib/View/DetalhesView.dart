import 'dart:convert';

import 'package:dogpampas/Model/Pet.dart';
import 'package:dogpampas/view/mapa.dart';
import 'package:flutter/material.dart';

class TelaDetails extends StatefulWidget {
  Pet pet;

  TelaDetails(this.pet);

  @override
  _TelaDetailsState createState() => new _TelaDetailsState(pet);
}

class _TelaDetailsState extends State<TelaDetails> {
  Pet pet;

  _TelaDetailsState(this.pet) {
    print(pet.descricao);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dog Pampas"),
        ),
        body: ListView(children: <Widget>[
          Container(
              child: Image.asset(
            'imagens/dog1.jpeg',
            fit: BoxFit.fill,
          )),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
            child: Row(children: <Widget>[
              Text("Descrição: ",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),

              Text(pet.descricao),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
            child: Row(children: <Widget>[
              Text("raça: ",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              Text(pet.raca),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
            child: Row(children: <Widget>[
              Text("sexo: ",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              Text(pet.tipo),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
            child: Row(children: <Widget>[
              Text("bairro: ",
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              Text(pet.bairro),
            ]),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
            child: Row(children: <Widget>[
              Text("rua: ",
                  style:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              Text(pet.rua)
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: MediaQuery.of(context).size.height,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.deepOrange)),
                color: Colors.deepOrange,
                child: Text(
                  "VER NO MAPA",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (Mapa())));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: Text('QUERO ADOTAR!'),
              icon: Icon(Icons.sentiment_very_satisfied),
              backgroundColor: Colors.deepOrange,
            ),
          ),
        ]));
  }
}

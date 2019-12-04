import 'dart:math';
import 'package:dogpampas/Model/Pet.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class CadastroPetPerdido extends StatefulWidget {
  @override
  _CadastroPetPerdido createState() => _CadastroPetPerdido();

  
}

class _CadastroPetPerdido extends State<CadastroPetPerdido> {

  TextEditingController nomePet = new TextEditingController();
  TextEditingController tipo = new TextEditingController();
  TextEditingController raca = new TextEditingController();


  Pet novo;

  _CadastroPetPerdido(){
    novo = Pet();
  }
  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;

  String opcao = null;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
 Card buildItem(DocumentSnapshot doc) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'name: ${doc.data['name']}',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'todo: ${doc.data['todo']}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () => updateData(doc),
                  child: Text('Update todo', style: TextStyle(color: Colors.white)),
                  color: Colors.green,
                ),
                SizedBox(width: 8),
                FlatButton(
                  onPressed: () => deleteData(doc),
                  child: Text('Delete'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  
  TextFormField buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'name',
        fillColor: Colors.grey[300],
        filled: true,
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },
      onSaved: (value) => name = value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro Pet'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    style: new TextStyle(color: Colors.black, fontSize: 14),
                    decoration: InputDecoration(
                      labelText: "Nome",
                      labelStyle: TextStyle(color: Colors.black)
                    ),
                    controller: nomePet ,
                  ),
                  TextField(
                    autofocus: true,
                    style: new TextStyle(color: Colors.black, fontSize: 14),
                    decoration: InputDecoration(
                      labelText: "Raça",
                      labelStyle: TextStyle(color: Colors.black)  
                    ),
                    controller: raca,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text("Selecione o tipo"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: new DropdownButton<String>(
                      value: opcao,
                      isDense: true,
                      onChanged: (String escolhida){
                          setState(() {
                            opcao = escolhida;
                          });
                      },
                      items: <String> ['Macho','Fêmea'].map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                      }).toList()
                    ),
                  ),
                    TextField(
                    autofocus: true,
                    style: new TextStyle(color: Colors.black, fontSize: 14),
                    decoration: InputDecoration(
                      labelText: "Bairro",
                      labelStyle: TextStyle(color: Colors.black)  
                    ),  
                  ),
                  TextField(
                    autofocus: true,
                    style: new TextStyle(color: Colors.black, fontSize: 14),
                    decoration: InputDecoration(
                      labelText: "Rua que foi visto pela última vez",
                      labelStyle: TextStyle(color: Colors.black)  
                    ),  
                  ),
                  Padding(
                padding: const EdgeInsets.all(32),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.height,
                  child: RaisedButton(
                    //Cor do botão
                    color: Colors.deepOrange,
                    //O Texto que vai nele
                    child: Text("Informar Pet perdido", style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
              ),
             Form(
            key: _formKey,
            child: buildTextFormField(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: createData,
                child: Text('Create', style: TextStyle(color: Colors.white)),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: id != null ? readData : null,
                child: Text('Read', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
              ),
            ],
          ),
          StreamBuilder<QuerySnapshot>(
            stream: db.collection('CRUD').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(children: snapshot.data.documents.map((doc) => buildItem(doc)).toList());
              } else {
                return SizedBox();
              }
            },
          )
            
                
                ],
                
              ),
              
              
            ),
          ),
        ));
  }

  void createData() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      DocumentReference ref = await db.collection('CRUD').add({'name': '$name 😎', 'todo': randomTodo()});
      setState(() => id = ref.documentID);
      print(ref.documentID);
    }
  }

  void readData() async {
    DocumentSnapshot snapshot = await db.collection('CRUD').document(id).get();
    print(snapshot.data['name']);
  }

  void updateData(DocumentSnapshot doc) async {
    await db.collection('CRUD').document(doc.documentID).updateData({'todo': 'please 🤫'});
  }

  void deleteData(DocumentSnapshot doc) async {
    await db.collection('CRUD').document(doc.documentID).delete();
    setState(() => id = null);
  }

  String randomTodo() {
    final randomNumber = Random().nextInt(4);
    String todo;
    switch (randomNumber) {
      case 1:
        todo = 'Like and subscribe 💩';
        break;
      case 2:
        todo = 'Twitter @robertbrunhage 🤣';
        break;
      case 3:
        todo = 'Patreon in the description 🤗';
        break;
      default:
        todo = 'Leave a comment 🤓';
        break;
    }
    return todo;
  }
}

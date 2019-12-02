import 'package:flutter/material.dart';

class CadastroPetPerdido extends StatefulWidget {
  @override
  _CadastroPetPerdido createState() => _CadastroPetPerdido();
}

List<DropdownMenuItem<int>> listDrop = [];

  void loadData(){
    listDrop = [];
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item 1'),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item 2'),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Item 3'),
      value: 3,
    ));
  }

class _CadastroPetPerdido extends State<CadastroPetPerdido> {
  



  @override
  Widget build(BuildContext context) {
    loadData();
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro Pet'),
        ),
        body: Padding(
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
                ),
                TextField(
                  autofocus: true,
                  style: new TextStyle(color: Colors.black, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: "Tipo",
                    labelStyle: TextStyle(color: Colors.black)  
                  ),  
                ),
                TextField(
                  autofocus: true,
                  style: new TextStyle(color: Colors.black, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: "Raça",
                    labelStyle: TextStyle(color: Colors.black)  
                  ),  
                ),
                Text("Selecione o tipo"),
                 
                new DropdownButton<String>(
                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
                );
                }).toList(),
                  onChanged: (_) {},
                ),
              
              ],
              
            ),
            
            
          ),
        ));
  }
}

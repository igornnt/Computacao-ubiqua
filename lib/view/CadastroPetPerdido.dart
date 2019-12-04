import 'package:dogpampas/Model/Pet.dart';
import 'package:flutter/material.dart';

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

  String opcao = null;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
                
                ],
                
              ),
              
              
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';


class TelaDetails extends StatefulWidget {
  TelaDetails({Key key}) : super(key: key);
  @override
  _TelaDetailsState createState() => new _TelaDetailsState();
}

class _TelaDetailsState extends State<TelaDetails> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Cachorro perdido e debilitado'),
          ),
          body: ListView(
            children: <Widget>[
              Container(
                    child: Image.asset('imagens/dog1.jpeg', fit: BoxFit.fill,)
              ),

       Padding(
         padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
         child: Row(children: <Widget>[
      Text("Raça: ", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      Text("Sim", style: TextStyle(fontSize: 16.0))
    ]
    ),
       ),

        Padding(
         padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
         child: Row(children: <Widget>[
      Text("Nome da raça: ", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      Text("Não sei", style: TextStyle(fontSize: 16.0))
    ]
    ),
       ),

 Padding(
         padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
         child: Row(children: <Widget>[
      Text("Porte: ", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      Text("Médio", style: TextStyle(fontSize: 16.0))
    ]
    ),
       ),

 Padding(
         padding: const EdgeInsets.only(left: 15, top: 5, bottom: 15),
         child: Row(children: <Widget>[
      Text("Local: ", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      Text("Arredores de Rua Sei lá", style: TextStyle(fontSize: 16.0))
    ]
    ),
       ),

         Padding(
           padding: const EdgeInsets.all(30.0),
           child: Container(
             width: MediaQuery.of(context).size.height,
             child: RaisedButton(
               shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.deepOrange)
                ),
                    color: Colors.deepOrange,
                    child: Text("VER NO MAPA", style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                    ),
                    ),
                    onPressed: (){
                    },
                  ),
           ),
         )
            ]
          )
      );
    }
}
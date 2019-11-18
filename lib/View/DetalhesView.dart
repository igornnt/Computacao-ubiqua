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

       Container(
        child:
          new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 3),
                child: new Text(
                "Raça:",
                  style: new TextStyle(fontSize:22.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto")
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 3),
                child: new Text(
                "Nome da raça:",
                  style: new TextStyle(fontSize:22.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto")
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 3),
                child: new Text(
                "Localização:",
                  style: new TextStyle(fontSize:22.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto")
                ),
              )
            ]

          ),

          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 3),
                    child: new Text(
                    "Sim",
                      style: new TextStyle(fontSize:22.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Roboto")
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 3),
                    child: new Text(
                    "Sei lá",
                      style: new TextStyle(fontSize:22.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Roboto")
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1.0, 0, 3),
                    child: new Text(
                    "Arredores de rua Não Sei",
                      style: new TextStyle(fontSize:22.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w300,
                      fontFamily: "Roboto")
                    ),
                  )
                ]
              )
            ]

          )
        ]

         )
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
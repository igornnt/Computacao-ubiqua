import 'package:flutter/material.dart';


class TelaPetPerdidosRegiao extends StatefulWidget {
  TelaPetPerdidosRegiao({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<TelaPetPerdidosRegiao> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets perdidos em sua região'),
      ),
        body: ListView(
          children: <Widget>[
              Container(
                    margin:EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.grey[200],
                        child: InkWell(    
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                   Image.asset(
                                     'imagens/dog1.jpeg',
                                        fit:BoxFit.fill
                                    ),
                                          Stack(
                                            children: <Widget>[
                                              ListTile(
                                                title: Text('Cachorro perdido e debilitado'),
                                                subtitle: Text('500 mts de distância'),
                                              ),
                                        
                                              Container(
                                                alignment: Alignment.bottomRight,
                                                child: FlatButton(
                                                  child: const Text('Ver mais',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                  ),
                                                  onPressed: () {},
                                                  textColor: Color.fromRGBO(51, 102, 187, 1.0),
                                                ),
                                              )
                                            ],
                                          ),
                                  ],
                            ),
                          ),
                      ),
                ),


              Container(
                    margin:EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.grey[200],
                        child: InkWell(    
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                   Image.asset(
                                     'imagens/dog2.jpeg',
                                        fit:BoxFit.fill
                                    ),
                                          Stack(
                                            children: <Widget>[
                                              ListTile(
                                                title: Text('Dois cachorros perdidos :('),
                                                subtitle: Text('1 km de distância'),
                                              ),
                                        
                                              Container(
                                                alignment: Alignment.bottomRight,
                                                child: FlatButton(
                                                  child: const Text('Ver mais',
                                                  style: TextStyle(
                                                    fontSize: 15.0,
                                                  ),
                                                  ),
                                                  onPressed: () {},
                                                  textColor: Color.fromRGBO(51, 102, 187, 1.0),
                                                ),
                                              )
                                            ],
                                          ),
                                  ],
                            ),
                          ),
                      ),
                ),
            ]
         ),   

      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
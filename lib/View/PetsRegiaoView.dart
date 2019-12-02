import 'package:flutter/material.dart';
import 'DetalhesView.dart';
import 'my_flutter_app_icons.dart';

class TelaPetsPerdidosRegiao extends StatefulWidget {
  TelaPetsPerdidosRegiao({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TelaPetsPerdidosState createState() => _TelaPetsPerdidosState();
}

class _TelaPetsPerdidosState extends State<TelaPetsPerdidosRegiao> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets perdidos em sua região'),
        actions: <Widget>[
    IconButton(
      icon: Icon(MyFlutterApp.award,
        color: Colors.white,
      ),
      onPressed: () {
        // Ir para ranking
      },
    )
  ],
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
                                                  onPressed: () {Navigator.push(
                                                      context, MaterialPageRoute(builder: (context) => TelaDetails()),
                                                    );
                                                    },
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
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                     MaterialPageRoute(builder: (context) => TelaDetails()),
                                                   );
                                                  },
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
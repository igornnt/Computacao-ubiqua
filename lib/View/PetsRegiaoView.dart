import 'package:dogpampas/View/RankingView.dart';
import 'package:dogpampas/view/CadastroPetPerdido.dart';
import 'package:flutter/material.dart';
import 'DetalhesView.dart';
import 'my_flutter_app_icons.dart';
import '../service/pet_repository.dart';

PetRepository pets = new PetRepository();



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
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TelaRanking()),
  );
      },
    )
  ],
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.grey[200],
            child: InkWell(
                            onTap: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TelaDetails()),
  );
  },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset('imagens/dog1.jpeg', fit: BoxFit.fill),
                  Stack(
                    children: <Widget>[
                      ListTile(
                        title: Text('Cachorro perdido e debilitado'),
                        subtitle: Text('500 mts de distância'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.grey[200],
            child: InkWell(
              onTap: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TelaDetails()),
  );
  },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset('imagens/dog2.jpeg', fit: BoxFit.fill),
                  Stack(
                    children: <Widget>[
                      ListTile(
                        title: Text('Dois cachorros perdidos :('),
                        subtitle: Text('1 km de distância'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CadastroPetPerdido()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

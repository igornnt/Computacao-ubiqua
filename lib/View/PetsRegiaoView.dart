import 'package:dogpampas/Model/Pet.dart';
import 'package:dogpampas/View/RankingView.dart';
import 'package:dogpampas/service/pet_repository.dart';
import 'package:dogpampas/view/CadastroPetPerdido.dart';
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

  PetRepository petRepository = new PetRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets perdidos em sua região'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              MyFlutterApp.award,
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
      body: ListView.builder(
          itemCount: petRepository.qtdAnimais(),
          itemBuilder: (context, index) {
            return cardCachorros(PetRepository.animais[index]);
          }
      ),
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

  Widget cardCachorros(Pet pet) {

    Pet novo = pet;

    return Container(
      margin: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey[200],
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaDetails(pet)),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('imagens/dog1.jpeg', fit: BoxFit.fill),
              ListTile(
                title: Text(pet.descricao),
                subtitle: Text(pet.rua)
              ),
            ],
          ),
        ),
      ),
    );
  }
}

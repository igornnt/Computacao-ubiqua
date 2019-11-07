import 'package:flutter/material.dart';

import 'Tela1View.dart';

class LoginView extends StatelessWidget {

  TextEditingController _textEmailngController = TextEditingController();
  TextEditingController _textSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Login(context)
    );
  }

  Widget Login (BuildContext context){
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                child: Image.asset('imagens/logo.png',height: 130,),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  Text("Dog Pampas", style: TextStyle(
                    color: Colors.red,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,

                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text("Ajude-nos a fazer de sua casa um lar!"),
                  )
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, bottom: 0, right: 32, top: 15 ),
              child: TextField(
                autofocus: true,
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 17,
                ),
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.deepOrange,
                decoration: InputDecoration(
                  labelText: "E-mail",
                ),
                enabled: true,
                maxLength: 50,
                maxLengthEnforced: false,
                obscureText: false,
                controller: _textEmailngController,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, bottom: 0, right: 32, top: 15 ),
              child: TextField(
                autofocus: true,
                style: TextStyle(
                  fontSize: 17,
                ),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                ),
                enabled: true,
                maxLength: 50,
                maxLengthEnforced: false,
                obscureText: true,
                controller: _textSenhaController,
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
                  child: Text("Fazer login", style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),
                  ),
                  onPressed: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => TelaPetPerdidosRegiao()),
  );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

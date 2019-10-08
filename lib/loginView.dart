import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {

  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEmailngController = TextEditingController();
  TextEditingController _textSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Login(context);
  }

  Widget Login (BuildContext context){

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 32, bottom: 0, right: 32, top: 15 ),
          child: TextField(
            //Definir o tipo de teclado que será digitado
            style: TextStyle(
              fontSize: 17,
            ),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "E-mail",
            ),
            //Habilitar a digitação
            enabled: true,
            //quantidade de caracteres digitados 2/100
            maxLength: 50,
            // Não consigo enviar sem que a quantidade estabelicida
            maxLengthEnforced: false,
            //Usado para esconder caracteres
            obscureText: false,
            //Para recuperar o que o usuário digitou uso o
            //Preciso usar uma função anônima
            //Porem preciso passar o tipo de dado que será recebido no ()
            //onChanged assim que o valor se altera
            //onChanged: (String e){
            //print("valor digitado é: $e");
            //},
            //Quando o usuário submeter os dados
            onSubmitted: (String campoTextoEscola){
              print("foi digitado: $campoTextoEscola");
            },
            //Preciso de um controlador para obter acesso aos dados digitados
            //Para isso eu passo os dados para a minha variável escrita lá encima
            controller: _textEditingController,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 32, bottom: 0, right: 32, top: 15 ),
          child: TextField(
            //Definir o tipo de teclado que será digitado
            style: TextStyle(
              fontSize: 17,
            ),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "E-mail",
            ),
            //Habilitar a digitação
            enabled: true,
            //quantidade de caracteres digitados 2/100
            maxLength: 50,
            // Não consigo enviar sem que a quantidade estabelicida
            maxLengthEnforced: false,
            //Usado para esconder caracteres
            obscureText: false,
            //Para recuperar o que o usuário digitou uso o
            //Preciso usar uma função anônima
            //Porem preciso passar o tipo de dado que será recebido no ()
            //onChanged assim que o valor se altera
            //onChanged: (String e){
            //print("valor digitado é: $e");
            //},
            //Quando o usuário submeter os dados
            onSubmitted: (String campoTextoEscola){
              print("foi digitado: $campoTextoEscola");
            },
            //Preciso de um controlador para obter acesso aos dados digitados
            //Para isso eu passo os dados para a minha variável escrita lá encima
            controller: _textEditingController,
          ),
        ),
        //Criando meu botão para enviar os dados
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
              ),),
              //A função que será digitada
              onPressed: (){
                //Acessando meu valor para a classe
                print("O valor enviado foi: " + _textEditingController.text);
              },
            ),
          ),
        )
      ],
    );
  }
}

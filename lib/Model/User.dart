  class User{

  String _name;
  String _email;
  String _password;
  int _pontos;
  String _latidude;
  String _longitude;


  // ######## Construtores ########
  User(){
      this._pontos = 0;
  }

  User.init(this._name, this._email, this._password){
    this._pontos = 0;
  }


  // ######## MÉTODOS ########

  void incrementaPontos (int x){
    _pontos += x;
  }



  // ######## GETS E SETS ########
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String get password => _password;
  set password(String value) {
    _password = value;
  }

  int get pontos => _pontos;

}
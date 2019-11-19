class Pet{

  String _nome;
  String _tipo;
  String _raca;
  bool _perdido;
  String _latitude;
  String _longitude;

  // ######## Construtores ########
  Pet(){}

  Pet.init(this._nome, this._raca, this._tipo, this._perdido, this._latitude, this._longitude){}


  // ######## GETS E SETS ########
  String get nome => _nome;
  set nome(String value) {
    _nome = value;
  }

  String get raca => _raca;
  set raca(String value) {
    _raca = value;
  }

  String get tipo => _tipo;
  set tipo(String value) {
    _tipo = value;
  }

  bool get perdido => _perdido;
  set perdido(bool value) {
    _perdido = value;
  }

  String get longitude => _longitude;
  set longitude(String value) {
    _longitude = value;
  }

  String get latitude => _latitude;
  set latitude(String value) {
    _latitude = value;
  }


}
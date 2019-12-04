class Pet{

  String _descricao;
  String _tipo;
  String _raca;
  String bairro;
  String rua;
  bool _perdido;
  String _latitude;
  String _longitude;

  // ######## Construtores ########
  Pet(){}

  Pet.init(this._descricao, this._raca, this._tipo,this.bairro,this.rua, this._perdido, {latitude, longitude}){
    this._latitude = latitude;
    this._longitude = longitude;
  }


  // ######## GETS E SETS ########
  String get descricao => _descricao;
  set descricao(String value) {
    _descricao = value;
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
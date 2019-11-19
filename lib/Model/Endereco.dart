class Endereco{

  String _rua;
  String _cep;
  String _numero;
  String _bairro;
  String _cidade;


  // ######## Construtores ########
  Endereco(){}

  Endereco.init(this._rua, this._cep, this._numero, this._bairro, this._cidade){}


  // ######## GETS E SETS ########
  String get rua => _rua;
  set rua(String value) {
    _rua = value;
  }

  String get cep => _cep;
  set cep(String value) {
    _cep = value;
  }

  String get numero => _numero;
  set numero(String value) {
    _numero = value;
  }

  String get bairro => _bairro;
  set bairro(String value) {
    _bairro = value;
  }

  String get cidade => _cidade;
  set cidade(String value) {
    _cidade = value;
  }
}
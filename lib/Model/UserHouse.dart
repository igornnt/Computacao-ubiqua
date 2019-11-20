import 'package:dogpampas/Model/Endereco.dart';
import 'package:dogpampas/Model/User.dart';

class UserHouse extends User{

  int _cpf;
  Endereco _endereco;
  DateTime _date_initial;
  DateTime _date_final;
  int _numberPets;


  // ######## Construtores ########

  UserHouse(){
  }

  UserHouse.init(this._cpf, this._endereco, this._date_initial, this._date_final, this._numberPets){}



  // ######## GETS E SETS ########
  Endereco get endereco => _endereco;
  set endereco(Endereco value) {
    _endereco = value;
  }

  int get cpf => _cpf;
  set cpf(int value) {
    _cpf = value;
  }

  int get numberPets => _numberPets;
  set numberPets(int value) {
    _numberPets = value;
  }

  DateTime get date_final => _date_final;
  set date_final(DateTime value) {
    _date_final = value;
  }

  DateTime get date_initial => _date_initial;
  set date_initial(DateTime value) {
    _date_initial = value;
  }

}
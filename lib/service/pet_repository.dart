import 'dart:core';
import 'package:dogpampas/Model/Pet.dart';

class PetRepository{

  static List<Pet> animais = new List();


  void salvarUmPet(Pet pet){
    animais.add(pet);
  }

  int qtdAnimais(){
    return animais.length;
  }

  void excluirAnimal(int index){
    animais.removeAt(index);
  }

}
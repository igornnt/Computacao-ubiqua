import 'dart:core';
import 'package:dogpampas/Model/Pet.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class PetRepository{

  static List<Pet> animais = new List();
  Firestore fire = new Firestore();


  void salvarUmPet(Pet pet){
    animais.add(pet);
  }

  int qtdAnimais(){
    return animais.length;
  }

  void excluirAnimal(int index){
    animais.removeAt(index);
  }


  novoPet(){
    fire.document("pet");
    fire.collection("pet").document("1");
    fire.collection("pet").toString();
  }

}
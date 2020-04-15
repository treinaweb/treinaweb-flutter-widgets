import 'dart:math';

import 'package:lifepet_app/models/pet_model.dart';

class PetService {
  final List<Pet> _petList = [];

  static final PetService _singleton = PetService._internal();

  factory PetService() {
    return _singleton;
  }

  PetService._internal() {
    _petList.add(Pet(
        nome: "Totó",
        imageUrl: 'assets/images/toto.png',
        descricao: "Um cachorro esperto",
        idade: 2,
        sexo: "Macho",
        cor: "Preto",
        bio: "Sou um totó bem esperto",
        id: "1"
    ));
    _petList.add(Pet(
        nome: "Arnaldo",
        imageUrl: 'assets/images/arnaldo.png',
        descricao: "Um pinsher elétrico",
        idade: 3,
        sexo: "Macho",
        cor: "Preto",
        bio: "Sou um pinsher elétrico",
        id: "2"
    ));
  }

  List getAllPets() {
    return _petList;
  }

  void addPet(Pet pet){
    _petList.add(Pet(
      nome: pet.nome,
      bio: pet.bio,
      idade: pet.idade,
      sexo: pet.sexo,
      descricao: pet.descricao,
      cor: pet.cor,
      id: Random().nextInt(100).toString(),
      imageUrl: 'assets/images/toto.png',
    ));
  }

  void editPet(String id, Pet newPet) {
    Pet petEditar = getPet(id);
    petEditar.nome = newPet.nome;
    petEditar.descricao = newPet.descricao;
    petEditar.idade = newPet.idade;
    petEditar.sexo = newPet.sexo;
    petEditar.cor = newPet.cor;
    petEditar.bio = newPet.bio;
  }

  Pet getPet(String id) {
    return _petList.singleWhere((pet) {
      return pet.id == id;
    });
  }
}
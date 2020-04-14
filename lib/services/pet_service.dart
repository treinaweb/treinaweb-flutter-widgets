import 'package:lifepet_app/models/pet_model.dart';

class PetService {
  final List<Pet> _petList = [];

  PetService() {
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
}
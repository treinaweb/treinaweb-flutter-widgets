import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/screens/form_pet_screen.dart';
import 'package:lifepet_app/screens/pet/perfil_pet_screen.dart';
import 'package:lifepet_app/services/pet_service.dart';

class HomeScreen extends StatelessWidget {
  PetService service = PetService();
  List<Pet> pets = List();

  HomeScreen() {
    _getAllPets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (context, index) {
          return _petCard(context, index);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => FormPetScreen(),
              ),
            );
          },
          label: Text("Cadastrar"),
          icon: Icon(Icons.pets),
          backgroundColor: Colors.redAccent,
      ),
    );
  }


  Widget _petCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PerfilPetScreen(id: pets[index].id,),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: pets[index].id,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20)
                    ),
                    image: DecorationImage(
                        image: AssetImage(pets[index].imageUrl),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    pets[index].nome,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
              child: Text(
                pets[index].descricao,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.grey
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _getAllPets() {
    List list = service.getAllPets();
    pets = list;
  }
}

import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/models/remedio_model.dart';
import 'package:lifepet_app/screens/pet/remedio_screen.dart';
import 'package:lifepet_app/services/pet_service.dart';
import 'package:lifepet_app/services/remedio_service.dart';

class FormRemedioPetScreen extends StatelessWidget {
  String id;
  final _nomeController = TextEditingController();
  final _dataController = TextEditingController();
  final PetService petService = PetService();
  final RemedioService remedioService = RemedioService();
  Pet pet;


  FormRemedioPetScreen({this.id}){
    _getPet(id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de remédio do ${pet.nome}"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _nomeController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Nome do remédio"),
                ),
                TextFormField(
                  controller: _dataController,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(labelText: "Data do remédio"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {
                        Remedio novoRemedio = Remedio(
                          nome: _nomeController.text,
                          data: _dataController.text,
                          pet: pet
                        );
                        remedioService.addRemedio(novoRemedio);
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => RemedioScreen(id: pet.id),
                          ),
                        );
                      },
                      color: Colors.redAccent,
                      child: Text("Cadastrar", style: TextStyle(
                        color: Colors.white, fontSize: 16
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _getPet(String id) {
    pet = petService.getPet(id);
  }
}

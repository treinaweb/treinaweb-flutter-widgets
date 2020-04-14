import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';

class FormRemedioPetScreen extends StatelessWidget {
  Pet pet;

  FormRemedioPetScreen({this.pet});


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
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Nome do remédio"),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(labelText: "Data do remédio"),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 40,
                    child: RaisedButton(
                      onPressed: () {},
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
}

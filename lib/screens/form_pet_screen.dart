import 'package:flutter/material.dart';

class FormPetScreen extends StatefulWidget {
  @override
  _FormPetScreenState createState() => _FormPetScreenState();
}

class _FormPetScreenState extends State<FormPetScreen> {
  String corPet = 'Branco';
  String sexoPet = 'Macho';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro do pet"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Nome do pet"),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Bio"),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Idade"),
                ),
                DropdownButtonFormField(
                  value: sexoPet,
                  onChanged: (String sexoSelecionado) {
                    setState(() {
                      sexoPet = sexoSelecionado;
                    });
                  },
                  items: <String>['Macho', 'Fêmea'].map<DropdownMenuItem<String>>
                    ((String value) {
                    return DropdownMenuItem<String> (
                        value: value,
                        child: Text(value)
                    );
                  }).toList(),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Descrição"),
                ),
                DropdownButtonFormField(
                  value: corPet,
                  onChanged: (String corSelecionada) {
                    setState(() {
                      corPet = corSelecionada;
                    });
                  },
                  items: <String>['Branco', 'Preto', 'Marrom', 'Amarelo'].map<DropdownMenuItem<String>>
                    ((String value) {
                      return DropdownMenuItem<String> (
                      value: value,
                      child: Text(value)
                      );
                  }).toList(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      child: Text(
                        "Cadastrar",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
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

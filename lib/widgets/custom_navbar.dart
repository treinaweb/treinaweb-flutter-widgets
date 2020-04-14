import 'package:flutter/material.dart';
import 'package:lifepet_app/models/pet_model.dart';
import 'package:lifepet_app/screens/pet/perfil_pet_screen.dart';
import 'package:lifepet_app/screens/pet/remedio_screen.dart';

class CustomNavbar extends StatefulWidget {
  int paginaAberta;
  final Pet pet;

  CustomNavbar({this.pet, this.paginaAberta});

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  Widget paginaAtual;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 0;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => PerfilPetScreen(id: widget.pet.id,),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: widget.paginaAberta == 0 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Perfil",
                        style: TextStyle(
                          color: widget.paginaAberta == 0 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 1;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => RemedioScreen(id: widget.pet.id,),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.healing,
                        color: widget.paginaAberta == 1 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Remédio",
                        style: TextStyle(
                            color: widget.paginaAberta == 1 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        color: widget.paginaAberta == 2 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Consulta",
                        style: TextStyle(
                          color: widget.paginaAberta == 2 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      widget.paginaAberta = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.event_note,
                        color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        "Anotações",
                        style: TextStyle(
                            color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}

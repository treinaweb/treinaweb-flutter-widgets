import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Perfil",
                        style: TextStyle(
                          color: Colors.redAccent
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.healing,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Remédio",
                        style: TextStyle(
                            color: Colors.redAccent
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
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Consulta",
                        style: TextStyle(
                          color:Colors.redAccent
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.event_note,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Anotações",
                        style: TextStyle(
                            color:Colors.redAccent
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

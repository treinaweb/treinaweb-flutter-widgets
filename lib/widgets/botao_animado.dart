import 'package:flutter/material.dart';

class BotaoAnimado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("clicou");
      },
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Center(
          child: Text('Login'.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}

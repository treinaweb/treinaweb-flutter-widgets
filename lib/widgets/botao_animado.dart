import 'package:flutter/material.dart';

class BotaoAnimado extends StatelessWidget {

  final AnimationController controller;

  BotaoAnimado({this.controller}) :
      diminuirBotao = Tween(
        begin: 320.0,
        end: 45.0
      ).animate(
        new CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.150)
        )
      );

  final Animation<double> diminuirBotao;

  Widget _construirAnimacao(BuildContext context, Widget child) {
    return InkWell(
      onTap: () {
        controller.forward();
      },
      child: Container(
        height: 45,
        width: diminuirBotao.value,
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Center(
          child: _conteudoBotao(context),
        ),
      ),
    );
  }

  Widget _conteudoBotao(BuildContext context) {
    if (diminuirBotao.value > 55) {
      return Text('Login'.toUpperCase(),
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
        );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _construirAnimacao,
      animation: controller,
    );
  }
}

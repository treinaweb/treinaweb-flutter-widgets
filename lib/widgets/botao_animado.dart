import 'package:flutter/material.dart';

class BotaoAnimado extends StatelessWidget {

  final AnimationController controller;

  BotaoAnimado({this.controller}) :
      diminuirBotao = Tween(
        begin: 320.0,
        end: 45.0
      ).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.150)
        )
      ),
      crescerBotao = Tween(
        begin: 45.0,
        end: 1000.0
      ).animate(CurvedAnimation (
        parent: controller,
        curve: Interval(0.5, 1, curve: Curves.bounceOut)
      ));

  final Animation<double> diminuirBotao;
  final Animation<double> crescerBotao;

  Widget _construirAnimacao(BuildContext context, Widget child) {
    return InkWell(
      onTap: () {
        controller.forward();
      },
      child: crescerBotao.value <= 45 ?
      Container(
        height: 45,
        width: diminuirBotao.value,
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Center(
          child: _conteudoBotao(context),
        ),
      ) : Container(
        height: crescerBotao.value,
        width: crescerBotao.value,
        decoration: BoxDecoration(
          color: Colors.redAccent,
          shape: crescerBotao.value < 500 ?
            BoxShape.circle : BoxShape.rectangle
        ),
      )
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

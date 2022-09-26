import 'package:flutter/material.dart';

class WidgetResponsivo extends StatelessWidget {
  final Widget telaLarga;
  final Widget? telaMedia;
  final Widget? telaPequena;

  const WidgetResponsivo({Key? key,
  required this.telaLarga,
  this.telaMedia,
  this.telaPequena
  }) : super(key: key);


  static bool isTelaPequena(BuildContext context){
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isTelaGrande(BuildContext context){
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isTelaMedia(BuildContext context){
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200){
            return telaLarga;
          }else if(constraints.maxWidth >= 800){
            return telaMedia ?? telaLarga;
          }else{
            return telaPequena ?? telaLarga;
          }
    });
  }
}

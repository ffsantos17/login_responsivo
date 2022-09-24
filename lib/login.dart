import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_styles.dart';


class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    double altura = MediaQuery.of(context).size.height;
    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backColor,

      body: SizedBox(
        height: altura,
        width: largura,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: altura,
              color: AppColors.mainBlueColor,
              child: Center(
                child: Text('Pagina Login Text',
                style: ralewayStyle.copyWith(
                  fontSize: 48.0,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w800,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

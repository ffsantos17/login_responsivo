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
            Expanded(
              child: Container(
                height: altura,
                color: AppColors.mainBlueColor,
                child: Center(
                  child: Text('Pagina Login Responsivo',
                    style: ralewayStyle.copyWith(
                      fontSize: 48.0,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w800,
                    ),),
                ),
              ),
            ),
            //SizedBox(width: altura*0.1),
            Expanded(
              child: Container(
                height: altura,
                margin: EdgeInsets.symmetric(horizontal: altura * 0.12),
                color: AppColors.backColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: altura * 0.145),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Vamos lá',
                            style: ralewayStyle.copyWith(
                              fontSize: 25.0,
                              color: AppColors.blueDarkColor,
                              fontWeight: FontWeight.normal,
                            )
                          ),
                          TextSpan(
                            text: ' Login',
                            style: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.blueDarkColor,
                              fontSize: 25.0,
                            )
                          )
                    ])),
                    SizedBox(height: altura * 0.02),
                    Text('Olá, informe seus dados apra realizar o login',
                    style: ralewayStyle.copyWith(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),),
                    SizedBox(height: altura * 0.064),

                    Text('Email',
                    style: ralewayStyle.copyWith(
                      fontSize: 12.0,
                      color: AppColors.blueDarkColor,
                      fontWeight: FontWeight.w700
                    ),),
                    SizedBox(height: 6.0),
                    Container(
                      height: 50.0,
                      width: largura,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppColors.whiteColor,
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

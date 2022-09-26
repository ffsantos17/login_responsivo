import 'package:flutter/material.dart';
import 'package:login_responsivo/responsive_widget.dart';
import 'app_colors.dart';
import 'app_styles.dart';


class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  bool ocultaSenha = true;
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
            WidgetResponsivo.isTelaPequena(context) ? SizedBox(): Expanded(
              child: Container(
                height: altura,
                color: AppColors.mainGreenColor,
                child: Center(
                  child: Text('Página Login Responsivo',
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
                margin: EdgeInsets.symmetric(horizontal: WidgetResponsivo.isTelaPequena(context)? altura * 0.032 : altura * 0.12),
                color: AppColors.backColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: altura * 0.145),
                    RichText(text: TextSpan(
                        children: [
                          /*TextSpan(
                            text: 'Vamos lá',
                            style: ralewayStyle.copyWith(
                              fontSize: 25.0,
                              color: AppColors.greenDarkColor,
                              fontWeight: FontWeight.normal,
                            )
                          ),*/
                          TextSpan(
                            text: ' Login',
                            style: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.greenDarkColor,
                              fontSize: 25.0,
                            )
                          )
                    ])),
                    SizedBox(height: altura * 0.02),
                    Text('Olá, informe seus dados para realizar o login',
                    style: ralewayStyle.copyWith(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),),
                    SizedBox(height: altura * 0.064),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Email',
                      style: ralewayStyle.copyWith(
                        fontSize: 12.0,
                        color: AppColors.greenDarkColor,
                        fontWeight: FontWeight.w700
                      ),),
                    ),
                    SizedBox(height: 6.0),
                    Container(
                      height: 50.0,
                      width: largura,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppColors.whiteColor,
                      ),
                      child: TextFormField(

                        style: ralewayStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.greenDarkColor,
                          fontSize: 12.0,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                          contentPadding: const EdgeInsets.only(top: 16.0),
                          hintText: 'Email',
                          hintStyle: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.greenDarkColor.withOpacity(0.5),
                            fontSize: 12.0,
                          )
                        ),
                      ),
                    ),

                    SizedBox(height: altura * 0.014),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Senha',
                        style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.greenDarkColor,
                            fontWeight: FontWeight.w700
                        ),),
                    ),
                    SizedBox(height: 6.0),
                    Container(
                      height: 50.0,
                      width: largura,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppColors.whiteColor,
                      ),
                      child: TextFormField(

                        style: ralewayStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.greenDarkColor,
                          fontSize: 12.0,
                        ),
                        obscureText: ocultaSenha,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  ocultaSenha = !ocultaSenha;
                                });
                              },
                              icon: Icon( ocultaSenha == true ? Icons.visibility_off : Icons.visibility),
                            ),
                            prefixIcon: Icon(Icons.lock),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Senha',
                            hintStyle: ralewayStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.greenDarkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            )
                        ),
                      ),
                    ),

                    SizedBox(height: altura * 0.03),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(onPressed: (){},
                          child: Text('Esqueceu a senha?',
                          style: ralewayStyle.copyWith(
                            fontSize: 12.0,
                            color: AppColors.mainGreenColor,
                            fontWeight: FontWeight.w600,
                          ),)),
                    ),

                    SizedBox(height: altura * 0.05),

                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        borderRadius: BorderRadius.circular(16.0),
                        child: Ink(
                          padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 18.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppColors.mainGreenColor,
                          ),
                          child: Text('Login',
                          style: ralewayStyle.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.whiteColor,
                            fontSize: 16.0,
                          ),),
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

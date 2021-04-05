import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  final controllerLogin = TextEditingController();
  final controllerSenha = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              alignment: Alignment.center,
              height: 320,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.green[900]],
                ),
              ),
              child: SafeArea(
                child: ListView(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.ac_unit,
                          color: Colors.white,
                          size: 80,
                        ),
                        Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Container branco
            // TODO colocar o margin e o padding entre eles, personaliar o TextFormField
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 190),
              width: 350,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  // Sombra de leve para contrastar com o branco de fundo
                  BoxShadow(
                      color: Colors.black12, spreadRadius: 3, blurRadius: 10)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Campo de Texto Login
                    TextFormField(
                      controller: controllerLogin,
                      validator: (valorDigitado){ // TODO Não entendi mto bem o validator
                        if(valorDigitado.isEmpty){
                          return "Por Favor digite um valor";
                        } else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "login",
                        focusColor: Colors.green,
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                    ),

                    SizedBox(height: 40),

                    // Campo de Texto Senha
                    TextFormField(
                      controller: controllerSenha,
                      validator: (valorDigitado){ // TODO Não entendi mto bem o validator
                        if(valorDigitado.isEmpty){
                          return "Por Favor digite um valor";
                        } else{
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Senha",
                        focusColor: Colors.green,
                        // TODO como alinhar o icon com a borda
                        prefixIcon: Icon(Icons.lock_outline), //! prefix no começo
                        suffixIcon: Icon(Icons.remove_red_eye_sharp), //! sufix no final
                      ),
                    ),

                    // Texto Esqueci a Senha
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 180),
                      child: Text(
                        "Esqueci a Senha",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // botão entrar
            GestureDetector(
              onTap: (){
                // TODO como validar o campo de texto
                // if(controllerLogin.isEmpty || controllerSenha == ""){}
                
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 450),
                height: 70,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "ENTRAR",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

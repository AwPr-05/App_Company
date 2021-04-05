import 'package:company_grid/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controllerLogin = TextEditingController();
  final controllerSenha = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // Background
            Container(
              padding: EdgeInsets.only(bottom: 30),
              alignment: Alignment.center,
              height: 320,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightGreen, Colors.green[900]],
                ),
              ),
              child: SafeArea(
                child: Column(
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
              ),
            ),

            // Container branco
            Center(
              child: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.center,
                children: [
                  // Conteúdo do card
                  Container(
                    alignment: Alignment.center,
                    width: 350,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        // Sombra de leve para contrastar com o branco de fundo
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 3,
                            blurRadius: 10)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // Campo de Texto Login
                            TextFormField(
                              controller: controllerLogin,
                              validator: (valor) {
                                if (valor.isEmpty) {
                                  return "Campo obrigatório";
                                } else if (valor.contains("@")) {
                                  return null;
                                } else {
                                  return "Digite um email válido";
                                }
                              },
                              decoration: InputDecoration(
                                hintText: "login",
                                // focusColor: Colors.green,
                                prefixIcon: Icon(Icons.person_outline),
                              ),
                            ),

                            SizedBox(height: 40),

                            // Campo de Texto Senha
                            TextFormField(
                              controller: controllerSenha,
                              validator: (valorDigitado) {
                                if (valorDigitado.isEmpty) {
                                  return "Por Favor digite um valor";
                                } else {
                                  return null;
                                }
                              },
                              obscureText: !showPassword,
                              decoration: InputDecoration(
                                hintText: "Senha",
                                prefixIcon: Icon(
                                    Icons.lock_outline), //! prefix no começo

                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                  icon: Icon(showPassword
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                              ),
                            ),

                            SizedBox(height: 20),

                            // Texto Esqueci a Senha
                            Text(
                              "Esqueci a Senha",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //Botão
                  Positioned(
                    bottom: -35,
                    child: GestureDetector(
                      onTap: () {
                        if (formKey.currentState.validate()) {
                          // Fazer login
                          print("Email: ${controllerLogin.text}");
                          print("Senha: ${controllerSenha.text}");

                          // Formas de mudar de tela
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => HomeScreen()));
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

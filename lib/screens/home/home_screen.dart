import 'package:company_grid/screens/home/components/home_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Bola verde
          Positioned(
            top: -90,
            left: -160,
            child: Container(
              height: 470,
              width: 470,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.green, Colors.green, Colors.black],
                    begin: Alignment.topLeft),
                color: Colors.green,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 5,
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),

          //  Bola pequena
          // Positioned(
          //   right: -70,
          //   bottom: -65,
          //   child: Container(
          //     height: 250,
          //     width: 250,
          //     decoration: BoxDecoration(
          //       color: Colors.green,
          //       shape: BoxShape.circle,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.black,
          //           spreadRadius: 5,
          //           blurRadius: 10,
          //         ),
          //       ],
          //       gradient: LinearGradient(
          //         colors: [Colors.black,Colors.black, Colors.green],
          //         begin: Alignment.topLeft,
          //       ),
          //     ),
          //   ),
          // ),

          //  Conteudo
          SafeArea(
            child: ListView(
              padding: EdgeInsets.only(left: 20, right: 20, top: 40),
              children: [
                //  AppBar
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.emoji_nature_sharp,
                      size: 45,
                      color: Colors.white,
                    ),

                    // Espaçamento
                    Spacer(),

                    Icon(
                      Icons.notifications_outlined,
                      size: 35,
                      color: Colors.green,
                    ),
                  ],
                ),

                // Titulo
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Flutter company",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Grid
                GridView.count(
                  physics: ClampingScrollPhysics(), //! Tira a animação do grid
                  shrinkWrap: true, //! cresce ate o tamanho de seus filhos
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 15,
                  childAspectRatio: 9 / 11,
                  children: [
                    HomeTile(
                      icon: Icons.ac_unit,
                      title: "Meus Projetos",
                      subTitle: "64 Projetos",
                    ),
                    HomeTile(
                      title: "Flutter",
                      subTitle: "5 Projetos",
                    ),
                    HomeTile(
                      icon: Icons.fire_extinguisher,
                      title: "Documentos",
                      subTitle: "Bombeiros",
                    ),
                    HomeTile(
                      icon: Icons.shop,
                      title: "Negocios",
                      subTitle: "Clientes Google",
                    ),
                    HomeTile(
                      icon: Icons.local_airport,
                      title: "Viagens",
                      subTitle: "7 Marcaçōes",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

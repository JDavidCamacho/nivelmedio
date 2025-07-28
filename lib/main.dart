import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor constante
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modulos',
      home: const Formulario(),
      debugShowCheckedModeBanner: false,//desaparese
    );
  }
}

class Formulario extends StatelessWidget {
  const Formulario({super.key}); // <-- Constructor const agregado
  //paleta de colores
  static const Color primarylila = Color(0xFFA68098);
  static const Color primaryVioleta = Color(0xFF731A5B);
  static const Color primaryCrema = Color(0xFFF2EDA2);
  static const Color primaryNaranja = Color(0xFFF26E22);
  static const Color primaryNegro = Color(0xFF0D0D0D);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Clientes',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,//el texto estara en negrita
          fontSize: 20,//define el tama;o de letra
        ),
        ),
        backgroundColor: primaryNaranja,//definir el color
        centerTitle: true, //el titulo se ba al centro

      ),


      body: SingleChildScrollView(//que sea desplasable

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,//estira los widgets para que ocupen el ancho disponible
          children: [
            //crear un container

          ],
        ),
      ),
    );
  }
}



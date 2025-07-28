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
            Container(
              padding: EdgeInsets.all(24),//pading interno
              decoration:  BoxDecoration(//agrega una decoracion
                color: Colors.white,
              ),

              child: Column(//declaramos una columna que sera el hijo de forma vertical
                children: [
                  Icon(
                    Icons.person_add,//define un icono de persona
                    size: 48,
                    color: primaryNegro,
                  ),

                  SizedBox(height: 12),
                    //Definir Titulo despues del icono
                  Text(
                    'Datos Personales',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: primaryNegro,
                    ),
                  ),

                  //definir el espacio
                  SizedBox(height: 12),

        //definir otro texto debajo del texto de arriba
                  Text(
                    'Complete todos los campos requeridos',
                    style: TextStyle(
                      fontSize: 15,
                      color: primaryVioleta,
                    ),
                  )
                ],
              ),
            ),
            //definir el epsacio enytres contenedores

            SizedBox(height: 24),


            //creamos otro contenedor

            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(

              ),

              child: Column(//declarar un hijo de forma verticla
                crossAxisAlignment: CrossAxisAlignment.stretch,//estira los widgets para que ocupen el ancho disponible
                children: [
                  _buildSeccionTitulo('Informacion', Icons.info_outline),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//declarar la funcion para el titilo pra el builSeccionTitulo
Widget _buildSeccionTitulo(String title, IconData icon){
  return Padding(
    padding: EdgeInsets.only(bottom: 16),//aplica un espacio inferior de 16 para separara el titulo
    child: Row(
      children: [
        Icon(
            icon,
          color: Formulario.primaryVioleta,
          size: 20,
        ),
        //definir el espacio de contenedor a contenedor4
        SizedBox(width: 8,),
        //dtitulo de la seccion
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,//que el texto sea negrita
            color: Formulario.primaryVioleta,
          ),
        ),
        Expanded(//toma todo el espacio del widget
            child: Container(
              margin: EdgeInsets.only(left: 12),//establece un margen isquierdo de 12 megapuxeles
              height: 1,
              color: Formulario.primaryNaranja,
            ),
        ),
      ],
    ),
  );
}


//declarar la funcion que se usara para los testos del formulario
Widget _buildTextField({
  required String label, //psa un parametro que se usara como titulo o etiqueta
  required String hint,//se usa como texto de sugerencia dentro del campo que desaparesera al escribir
  required IconData icon,//agrega un icono al casmpo de texto
  int maxLines = 1,
}) {
  return Padding(
    // Espaciado inferior entre este campo y el siguiente
    padding: EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinea a la izquierda
      children: [
        // Etiqueta del campo (título encima del campo de entrada)
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: grayDark, // Color oscuro definido en la paleta
          ),
        ),
        SizedBox(height: 8), // Espacio entre etiqueta y el campo


        Container(
          decoration: BoxDecoration(
            color: backgroundGray, // Fondo
            borderRadius: BorderRadius.circular(8), // Bordes
            border: Border.all(color: grayLight),   // Borde
          ),

          // Campo de texto
          child: TextField(
            maxLines: maxLines, // Define cuántas líneas acepta el campo
            decoration: InputDecoration(
              hintText: hint, // Texto de sugerencia dentro del campo
              hintStyle: TextStyle(color: grayLight),
              prefixIcon: Icon(icon, color: secondaryGray), // Ícono a la izquierda
              border: InputBorder.none, // Elimina borde por defecto del TextField
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
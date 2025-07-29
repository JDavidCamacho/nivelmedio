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

                  _buildTextField(
                    label: 'Nombre',
                    hint: 'ingrese su nombre',
                    icon: Icons.person,
                  ),

                  _buildTextField(
                    label: 'Apellido',
                    hint: 'ingrese su apellido',
                    icon: Icons.person,
                  ),
                  _buildTextField(
                    label: 'Correo Electronico',
                    hint: 'ejemplo@gmail.com',
                    icon: Icons.email,
                  ),

                  _buildTextField(
                    label: 'Direccion',
                    hint: 'calle,ciudad,pais',
                    icon: Icons.location_on,
                  ),

                  _buildTextField(
                    label: 'Telefono',
                    hint: '+591 ',
                    icon: Icons.phone,
                  ),

                  SizedBox(height: 32,),

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryNavy,//define el color de fondo
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.save, size: 20),
                              SizedBox(width: 8),
                              Text(
                                'Registrar',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
            color: Formulario.primaryNegro, // se defini color para los titulos
          ),
        ),
        SizedBox(height: 8), // Espacio entre etiqueta y el campo


        Container(
          decoration: BoxDecoration(
            color: Formulario.primaryCrema, // se  crea un color para el fondo dentro del campo
            borderRadius: BorderRadius.circular(8), // Bordes
            border: Border.all(color: Formulario.primaryNaranja),   // se crea un borde alrededor del campo
          ),

          // Campo de texto
          child: TextField(
            maxLines: maxLines, // Define cuántas líneas acepta el campo
            decoration: InputDecoration(
              hintText: hint, // Texto de sugerencia dentro del campo
              hintStyle: TextStyle(color: Formulario.primarylila),
              prefixIcon: Icon(icon, color: Formulario.primaryVioleta), // se crea un icono y se pone un color
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


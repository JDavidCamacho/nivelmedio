import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Perfil de usuario',
      home: Scaffold(
        appBar: AppBar(
          title: Text('perfil de usuario'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//trabaja con el column y se ba ala parte superior
            children: [
              Text('david',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,//es la negrita
                  color: Colors.amberAccent,
                  fontFamily: 'Roboto',
                  letterSpacing: 4.0,//espaciado de letra
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}

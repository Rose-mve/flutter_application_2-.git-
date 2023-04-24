// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'About me'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        
        child: Column(
          children:   [

          
            //pour inserer une image et ajuster la taille
           Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
           // borderRadius: BorderRadius.circular(50), pour arrondir les bordures
           //shape :boxshape.circle permet de rendre l'image circulaire
             shape: BoxShape.circle,
            image: DecorationImage(
            image: AssetImage("assets/img/rs.jpg"),
             fit: BoxFit.cover,
          ),
        ),

           ),
           
          
             

           const  Text('Nom :  MVE'),
           const Text('prenom : ROSE'),
           ElevatedButton(onPressed: () {}, child: const Text('en savoir plus')),
        ], 
        ),
      ),
      
       
    
    );
  }
}


import 'package:Application/Pages/Actuspage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 18,
        title: const Text('My App')
      ),
      body : ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
decoration: InputDecoration(
  hintText: 'Entrez votre email',
              labelText: 'Email',
  prefixIcon: Icon(Icons.email),
  suffixIcon: Icon(Icons.check),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),

  ),
            ),
          )
        ],

      )
    );

  }
}



/*import 'package:Application/Pages/Actuspage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('My App')
        ),
        body : Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the Actus page when the button is pressed.
                Navigator.pushNamed(
                  context,
                  '/actus',
                );

                *//* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyActusPage()),
                );*//*

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Couleur du fond
                foregroundColor: Colors.white, // Couleur du texte
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Ajuste l'espacement
                textStyle: const TextStyle(
                  fontSize: 16, // Taille du texte
                  fontWeight: FontWeight.bold, // Style du texte (gras ici)
                ),
              ),
              child: const Text('Click Me'),
            )

        )
    );

  }
}*/
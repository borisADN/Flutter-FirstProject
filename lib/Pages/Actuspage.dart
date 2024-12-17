import 'package:flutter/material.dart';

class MyActusPage extends StatefulWidget {
  const MyActusPage({super.key});

  @override
  State<MyActusPage> createState() => _MyActusPageState();
}

class _MyActusPageState extends State<MyActusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Page Actualités')),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Retour'))));
  }
}

/*
import 'package:flutter/material.dart';

class ActusPage extends StatelessWidget {
  const ActusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actualités'),
      ),
      body: Center(
        child: Text('Actualités'),
      ),
    );
  }
}*/

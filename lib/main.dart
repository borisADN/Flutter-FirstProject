
import 'package:flutter/material.dart';
import 'Pages/home_page.dart';


import 'Pages/Actuspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const  MyHomePage(),
          '/actus': (context) => const MyActusPage(),
        }
    );
  }
  }





/*BOUTON INCREMENT*/

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//         elevation: 12,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Email',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 20), // Espacement
//               ElevatedButton(
//                 onPressed: () {
//                   // Valider le formulaire
//                   if (_formKey.currentState!.validate()) {
//                     print('Form is valid');
//                   }
//                 },
//                 child: const Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'HOME PAGE',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        elevation: 12, // Définit l'élévation de l'AppBar
        shadowColor: const Color(0xFF000000), // Définit la couleur de l'ombre
      ),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(20.0),
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Bordures arrondies
          color: Colors.lightBlueAccent, // Couleur de fond
        ),
        alignment: Alignment.topCenter, // Aligne le texte au centre
        child: Text(
          'Bonjour ! $counter',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Contraste sur le fond bleu clair
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}*/

/*COLUMN*/

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() {
//     return HomePageState();
//   }
// }
//
// class HomePageState extends State<HomePage> {
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'COLUMN',
//           style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//         ),
//         //
//         elevation: 12,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text("BODY"),
//           Text("BODY"),
//           Image.network("https://www.w3schools.com/w3css/img_lights.jpg"),
//         ],
//
//       ),
//     );
//   }
// }

//
// ROW
/*void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ROW',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        //
        elevation: 12,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.thumb_up),
          Image.network(
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            width: 200,
            height: 200,
          ),
          Icon(Icons.thumb_down),
        ] ,
      ),
    );
  }
}*/

/*LISTWIEW*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List images = [
    "https://1.bp.blogspot.com/--_WkR6KhACs/ViiFj8yM3HI/AAAAAAAAR98/SF777Mbc7vE/s1600/Lionel-Messi-Goal-Celebration-Wallpaper-HD-2.jpg",
    "https://images.pexels.com/photos/1118871/pexels-photo-1118871.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'LIST VIEW',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        elevation: 12, // Définit l'élévation de l'AppBar
        shadowColor: const Color(0xFF000000), // Définit la couleur de l'ombre
      ), body: ListView.separated(
      itemCount: images.length, // Nombre d'items à afficher'
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8),
          child: Image.network(images[index], width: 300,),
        );

      },
      separatorBuilder: (context, index) {
        return  const Divider(height: 10, thickness: 2, color: Color.fromARGB(
            255, 186, 5, 5));// Définit la hauteur des séparateurs
      },

    ),
    );
  }

}*/

/*GRIDVIEW*/

/*import 'package:Application/Pages/Appels.dart';
import 'package:Application/Pages/communautes.dart';
import 'package:Application/Pages/discussions.dart';
import 'package:flutter/material.dart';

import 'Pages/Actuspage.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
        colorSchemeSeed: Colors.green,
        scaffoldBackgroundColor: Colors.white
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  final pages  = [
    DiscussionsPage(),
    ActusPage(),
    Communautes(),
    AppelsPage(),

  ];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 1
              ),
            )
          ),
    child : NavigationBar(
        selectedIndex: pageIndex,
        onDestinationSelected: (int index){
          setState(() {
            pageIndex = index;
          });
        },
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'Discussions',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift),
            label: 'Actus',
          ),
          NavigationDestination(
            icon: Icon(Icons.group),
            label: 'Communautés',
          ),
          NavigationDestination(icon:
          Icon(Icons.phone),
            label: 'appels',
          ),
        ])
        )
    );
  }
}



/*BOUTON INCREMENT*/

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//         elevation: 12,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextFormField(
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Email',
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 20), // Espacement
//               ElevatedButton(
//                 onPressed: () {
//                   // Valider le formulaire
//                   if (_formKey.currentState!.validate()) {
//                     print('Form is valid');
//                   }
//                 },
//                 child: const Text('Submit'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'HOME PAGE',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        elevation: 12, // Définit l'élévation de l'AppBar
        shadowColor: const Color(0xFF000000), // Définit la couleur de l'ombre
      ),

      body: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(20.0),
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // Bordures arrondies
          color: Colors.lightBlueAccent, // Couleur de fond
        ),
        alignment: Alignment.topCenter, // Aligne le texte au centre
        child: Text(
          'Bonjour ! $counter',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Contraste sur le fond bleu clair
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}*/

/*COLUMN*/

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() {
//     return HomePageState();
//   }
// }
//
// class HomePageState extends State<HomePage> {
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'COLUMN',
//           style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
//         ),
//         //
//         elevation: 12,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text("BODY"),
//           Text("BODY"),
//           Image.network("https://www.w3schools.com/w3css/img_lights.jpg"),
//         ],
//
//       ),
//     );
//   }
// }

//
// ROW
/*void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ROW',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        //
        elevation: 12,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.thumb_up),
          Image.network(
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            width: 200,
            height: 200,
          ),
          Icon(Icons.thumb_down),
        ] ,
      ),
    );
  }
}*/

/*LISTWIEW*/

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List images = [
    "https://1.bp.blogspot.com/--_WkR6KhACs/ViiFj8yM3HI/AAAAAAAAR98/SF777Mbc7vE/s1600/Lionel-Messi-Goal-Celebration-Wallpaper-HD-2.jpg",
    "https://images.pexels.com/photos/1118871/pexels-photo-1118871.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'LIST VIEW',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        elevation: 12, // Définit l'élévation de l'AppBar
        shadowColor: const Color(0xFF000000), // Définit la couleur de l'ombre
      ), body: ListView.separated(
      itemCount: images.length, // Nombre d'items à afficher'
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8),
          child: Image.network(images[index], width: 300,),
        );

      },
      separatorBuilder: (context, index) {
        return  const Divider(height: 10, thickness: 2, color: Color.fromARGB(
            255, 186, 5, 5));// Définit la hauteur des séparateurs
      },

    ),
    );
  }

}*/
*/

/*Boutons dans flutter!*/

/*import 'package:Application/Pages/Appels.dart';
import 'package:Application/Pages/communautes.dart';
import 'package:Application/Pages/discussions.dart';
import 'package:flutter/material.dart';

import 'Pages/Actuspage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.red,
    ),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            ElevatedButton(
                child: Text("Button avec elevation"),
                onPressed: () {
                  // TODO: Replace with your desired navigation action
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ActusPage()));
                }),
            OutlinedButton(
                onPressed: () {
                  // TODO: Replace with your desired navigation action
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppelsPage()));
                },
                child: Text("Button avec outline")),
            TextButton(
                onPressed: () {
                  // TODO: Replace with your desired navigation action
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Communautes()));
                },
                child: Text("Button avec texte")),
            IconButton(
              icon: Icon(Icons.forum),
              onPressed: () {
                // TODO: Replace with your desired navigation action
                Navigator.push(context, MaterialPageRoute(builder: (context) => DiscussionsPage()));
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
            elevation: 0,
            onPressed: () {
          setState(() {
            // TODO: Replace with your desired navigation action
            Navigator.push(context, MaterialPageRoute(builder: (context) => DiscussionsPage()));
          });
        },
            child: Icon(Icons.add)));
  }
}
*/

/*DRAWER */

/*import 'package:Application/Pages/Appels.dart';
import 'package:Application/Pages/communautes.dart';
import 'package:Application/Pages/discussions.dart';
import 'package:flutter/material.dart';

import 'Pages/Actuspage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorSchemeSeed: Colors.blue,
    ),
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        elevation: 12,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.blue,size: 30,),),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: Colors.blue,size: 30,),),
        ],
      ),
        drawer: Drawer(
child: ListView(
  children: [
    DrawerHeader(
        decoration: BoxDecoration(color: Colors.blue),
        child: Text('Drawer Header')),
    ListTile(
      leading: Icon(Icons.home, color: Colors.blue, size: 30,),
      title: Text('Accueil'),
      subtitle: Text(' Accueil'),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ActusPage()));
      }),
    ListTile(
      leading: Icon(Icons.people, color: Colors.blue, size: 30,),
      title: Text('Communautés'),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Communautes()));
      }),
  ],
),
        ),
        body: Center(
      child: Text('Hello!', style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,)),
    ));
  }
} */
//import 'package:coba_projek/views/profiel.dart';
import 'package:flutter/material.dart';
import 'package:themoviedb/data/repositories/movie_repository.dart';
import 'package:themoviedb/data/services/api_client.dart';
import 'package:themoviedb/data/services/providers/movie_providers.dart';
import 'package:themoviedb/datadiri.dart';
import 'package:themoviedb/money.dart';
import 'package:themoviedb/timeKonvert.dart';
import '../../app.dart';
import 'movie_list_item.dart';
import 'package:themoviedb/presentation/home/movie_list_item.dart';
// import 'home.dart';
import './movie_providers.dart';
// import '';

// import 'konversi_uang.dart';
// import 'konversi_waktu.dart';
// import 'package:flutter/se';
import '';
void main() {
  runApp(MainMenu());
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projek Akhir',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'CINEMA'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
  App(
  movieRepository: MovieRepository(MovieProviders(ApiClient())),
  ),
    TimeConversion(),
    conversiMoney(),
    ProfilePage(name: "Nurul Adilah & Windy Febrianty Ode", nim: "123200033 & 123200036", photoUrl: "https://media.licdn.com/dms/image/D5603AQGEpODhj8rV5Q/profile-displayphoto-shrink_400_400/0/1685630785394?e=1691020800&v=beta&t=SnA27YtrDMIuVPm4k0svNp-66EgFbUaQNmj1NqXuLW0")

  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            backgroundColor: Colors.deepPurpleAccent,
            label: 'Movie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            backgroundColor: Colors.deepPurple,
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Akun',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.account_box_sharp),
          //   label: 'AccountMe',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext index) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[


        ],
      ),
    );
  }
}




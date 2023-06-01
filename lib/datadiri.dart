// import 'package:coba_projek/views/pesankesan.dart';
import 'package:flutter/material.dart';
// import 'detail_profiel.dart';
// import 'login.page.dart';
import 'package:themoviedb/datadiri.dart';
import 'package:themoviedb/presentation/home/login_page.dart';
import 'detaildiri.dart';
import 'pesankesan.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String nim;
  final String photoUrl;

  const ProfilePage({
    Key? key,
    required this.name,
    required this.nim,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appBar: AppBar(
      //   title: Text('Profile'),
      // ),
      body: Column(
        children: [
          SizedBox(height: 24),
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D5603AQGEpODhj8rV5Q/profile-displayphoto-shrink_400_400/0/1685630785394?e=1691020800&v=beta&t=SnA27YtrDMIuVPm4k0svNp-66EgFbUaQNmj1NqXuLW0"),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              nim,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(name: name, nim: nim, photoUrl: "https://media.licdn.com/dms/image/D5603AQGEpODhj8rV5Q/profile-displayphoto-shrink_400_400/0/1685630785394?e=1691020800&v=beta&t=SnA27YtrDMIuVPm4k0svNp-66EgFbUaQNmj1NqXuLW0", birthPlace: "Bogor & Kendari", birthDate: "29 Agustus 2002 & 22 Februari 2002", classYear: "IF-A", futureGoal: "Membahagiakan orang tua dan menjadi pengusaha"),
                ),
              );
            },
            child: Text('Info Detail'),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (index) => PesanKesan()),
              );
            },
            child: Text('Pesan & Kesan'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 35)),
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.deepPurple),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }
                  )
              );
            },
            child: Text('Logout'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(100, 35)),
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

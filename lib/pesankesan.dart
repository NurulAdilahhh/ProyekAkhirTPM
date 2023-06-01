// import 'package:coba_projek/views/login.page.dart';
import 'package:flutter/material.dart';
// import '';

class PesanKesan extends StatefulWidget {
  const PesanKesan({Key? key}) : super(key: key);

  @override
  _HelpPesanKesan createState() => _HelpPesanKesan();
}

class _HelpPesanKesan extends State<PesanKesan> {
  // late final ElevatedButton _logOutButton;

  // @override
  // void initState() {
  //   super.initState();
  //
  //   // _logOutButton = ElevatedButton(
  //   //   onPressed: () {
  //   //     // Navigator.pushAndRemoveUntil(
  //   //     //   context,
  //   //     //   MaterialPageRoute(builder: (context) => LoginPage()),
  //   //     //       (route) => false,
  //   //     // );
  //   //   },
  //   //
  //   //   child: const Text('Log Out'),
  //   //   style: ElevatedButton.styleFrom(
  //   //     primary: Colors.deepPurpleAccent,
  //   //   ),
  //   // );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pesan Kesan TPM'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Pesan dan Kesan TPM ',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Pesan',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              ' Semangat selalu pak menghadapi mahasiswa UPN tercinta',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Kesan',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Aku suka time off yang upin ipin ',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Terimakasih kepada bapak bagus telah membimbing saya pada matkul TPM sampai saat sini, Asyik sih belajar nya ada waktu istirahat nya walaupun bebeapa menit, Namun untuk tugas nya banyak bangett pak, tapi aku syukaa ko pada tugas tugas nya hehehe :)',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: _logOutButton,
          // ),
        ],
      ),
    );
  }
}
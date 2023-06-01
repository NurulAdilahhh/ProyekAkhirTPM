import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:themoviedb/app.dart';
import 'package:themoviedb/data/repositories/movie_repository.dart';
import 'package:themoviedb/data/services/api_client.dart';
import  'package:themoviedb/presentation/home/connect.dart';
import 'package:themoviedb/presentation/home/menu.dart';
import 'package:themoviedb/presentation/home/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;
  var Username_controller = TextEditingController();
  var Password_controller = TextEditingController();

  void _loginNow() async {
    try {
      var res = await http.post(
        Uri.parse(API.login),
        body:{
          "username" : Username_controller.text.trim(),
          "password" : Password_controller.text.trim(),
        },
      );
      if(res.statusCode == 200)
      {
        var resBodyOfLogin = jsonDecode(res.body);
        if (resBodyOfLogin['success'] == true) {
          Fluttertoast.showToast(msg: "Login success!");
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) {
                return MainMenu();
              }
              )
          );
        } else {
          Fluttertoast.showToast(msg: "Login failed, please write the correct username or password...");
        }
      }
    }catch(e){
      print("error = " + e.toString());
    }
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Login Page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Column(children: [
              _createImage(),
              _usernameField(),
              _passwordField(),
              _loginButton(context),
              _signupButton(),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _createImage() {
    return Container(
      child: Image.network(
          "https://ae01.alicdn.com/kf/HTB1fvSae75E3KVjSZFCq6zuzXXaj.jpg"),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
            hintStyle: TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.deepPurpleAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
            BorderSide(color: (isLoginSuccess) ? Colors.deepPurpleAccent : Colors.deepPurpleAccent),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        onChanged: (value) {
          password = value;
        },
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.deepPurpleAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide:
            BorderSide(color: (isLoginSuccess) ? Colors.deepPurpleAccent : Colors.deepPurpleAccent),
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (isLoginSuccess) ? Colors.deepPurpleAccent : Colors.deepPurpleAccent, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          Username_controller.text = username;
          Password_controller.text = password;
          print(Username_controller.text);
          if (Username_controller.text != "" &&
              Password_controller.text != "" ) {
            _loginNow();
          } else {
            SnackBar snackBar = SnackBar(
              content: Text("Tidak Boleh Ada Yang Kosong"),
              backgroundColor: Colors.deepPurpleAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        }, child: Text('LOGIN'),

      ),

    );

  }

  Widget _signupButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child :
        Row(
        children: <Widget>[
          const Text('Does not have account?', style: TextStyle(color: Colors.white)),
          TextButton(
            child: const Text(
              'Sign in',
              style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context){
                    return signup();
                  })
              );
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );


  }



}

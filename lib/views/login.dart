import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Clube do Filme',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontFamily: 'Tangerine')),
              Padding(padding: EdgeInsets.all(30.0)),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontFamily: 'Tangerine')),
                      onPressed: () {})),
              Padding(padding: EdgeInsets.all(25.0)),
              SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text('Visitante',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontFamily: 'Tangerine')),
                      onPressed: () {}))
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:justtry/screens/services/auth.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Just Try!',
        ),
        actions: [
          TextButton.icon(
            label: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () async {
              await _auth.signOut();
              print('Logout Successful!');
            },
          ),
          // Text(
          //   'Logout',
          // ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  elevation:
                      MaterialStateProperty.resolveWith((states) => 10.0),
                  // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //   RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20.0),
                  //   ),
                  // ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.red,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Register',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:justtry/screens/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _newAuth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Just Try!',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Form(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.red[300],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 18.0,
                    ),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.red[300],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 18.0,
                    ),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.2),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    // focusedBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide.none,
                    // ),
                  ),
                  obscureText: true,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.resolveWith(
                    (states) => 4.0,
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => Colors.red[300],
                  ),
                ),
                child: Text(
                  'Sign-In',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () async {
                  dynamic newResult = await _newAuth.signInAnon();
                  if (newResult == null) {
                    print('result is null');
                  } else {
                    print('Sign in successful');
                    print(newResult.uid);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

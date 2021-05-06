import 'package:justtry/models/users.dart';
import 'package:justtry/screens/authenticate/sign_in.dart';
import 'package:justtry/screens/services/auth.dart';
import 'package:justtry/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:justtry/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    StreamProvider<AppUser>.value(
      value: AuthService().streamUser,
      initialData: null,
      child: MaterialApp(
        initialRoute: '/wrapper',
        routes: {
          '/home': (context) => Home(),
          '/signin': (context) => SignIn(),
          '/wrapper': (context) => Wrapper(),
        },
      ),
    ),
  );
}

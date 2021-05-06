import 'package:firebase_auth/firebase_auth.dart';
import 'package:justtry/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:justtry/screens/home.dart';
import 'package:provider/provider.dart';
import 'package:justtry/models/users.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wrapperUser = Provider.of<AppUser>(context);
    print(wrapperUser);
    if (wrapperUser == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

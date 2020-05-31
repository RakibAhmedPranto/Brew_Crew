import 'package:bruecrue/models/user.dart';
import 'package:bruecrue/screens/authenticate/authenticate.dart';
import 'package:bruecrue/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    //will show home or authenticate page
    if(user == null)
      {
        return Authenticate();
      }
    else{
      return Home();
    }
  }
}

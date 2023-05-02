import "package:bloc_projecto/dependency_injection/provider.dart";
import "package:flutter/material.dart";

import "services/user_service.dart";



void main(){
  var locator= ProviderInjectionDependency.singleton;
  locator.register<UserService>(UserService());
  bool status =   locator.hasService<UserService>();
  dynamic  service = locator.get<UserService>();
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        floatingActionButton: Container(),
     );
  }
}
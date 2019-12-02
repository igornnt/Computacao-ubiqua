import 'package:dogpampas/View/LoginView.dart';
import 'package:dogpampas/view/LoginView.dart' as prefix0;
import 'package:dogpampas/view/mapa.dart';
import 'package:flutter/material.dart';

void main(){
  print('passou aqui');


  runApp(
      MaterialApp(
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.deepOrange,
        ),
        home: LoginView(),

      )
  );
}

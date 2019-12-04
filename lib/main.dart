import 'package:dogpampas/View/LoginView.dart';
//import 'package:dogpampas/view/LoginView.dart' as prefix0;
//import 'package:dogpampas/view/mapa.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

FirebaseMessaging firebaseMessaging = new FirebaseMessaging();

@override
void initState(){
  firebaseMessaging.configure(
    onLaunch: (Map<String, dynamic> msg){
      print("onLouch called");
    },
    onResume: (Map<String, dynamic> msg){
      print(" on Resume called");
    },
    onMessage: (Map<String, dynamic> msg){
      print(" onMessage called");
    }
  );

  firebaseMessaging.requesNotificationPermissions(
    const IosNotificationSettings(
      sound: true,
      alert: true,
      badge: true,
    )
  ),
 firebaseMessaging.
}


void main(){
  print('passou aqui');   

  _MyHomePageState().initState();

  

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


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
 
  final String title;
 
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  FirebaseMessaging _firebaseMessaging = new FirebaseMessaging();
 
  @override
  void initState() {
    super.initState();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) {
        print('on message $message');
      },
      onResume: (Map<String, dynamic> message) {
        print('on resume $message');
      },
      onLaunch: (Map<String, dynamic> message) {
        print('on launch $message');
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.getToken().then((token){
      print(token);
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      )
    );
  }
}

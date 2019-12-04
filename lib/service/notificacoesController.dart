import 'dart:core';
import 'package:firebase_messaging/firebase_messaging.dart';


class NotificacaoController{

    FirebaseMessaging firebaseMessaging = new FirebaseMessaging();


  notificacaoNovoPetFirebase(){
    firebaseMessaging.requestNotificationPermissions();
    firebaseMessaging.subscribeToTopic("O mundo animal precisa de você!");
  }

  notificacaoRankingFirebase(){
    firebaseMessaging.requestNotificationPermissions();
    firebaseMessaging.subscribeToTopic("Pontue Mais...");
  }

  notificacaoAnimalPertoFirebase(){
    firebaseMessaging.requestNotificationPermissions();
    firebaseMessaging.subscribeToTopic("Animal perdido perto de sua localização");
  }



}
import 'package:brocante_app_flutter/screen/admin_screen.dart';
import 'package:brocante_app_flutter/screen/commentsScreen.dart';
import 'package:brocante_app_flutter/screen/description_stand_screen.dart';
import 'package:brocante_app_flutter/screen/evenement_screen.dart';
import 'package:brocante_app_flutter/screen/liste_stands_screen.dart';
import 'package:brocante_app_flutter/screen/login_screen.dart';
import 'package:brocante_app_flutter/screen/pictures_screen.dart';
import 'package:brocante_app_flutter/screen/service_screen.dart';
import 'package:brocante_app_flutter/screen/start_screen.dart';
import 'package:brocante_app_flutter/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'models/camera.dart';

void main() => runApp(Brocante());

class Brocante extends StatefulWidget {
  const Brocante({Key key}) : super(key: key);

  @override
  _BrocanteState createState() => _BrocanteState();
}

class _BrocanteState extends State<Brocante> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'la brocante',
        initialRoute: '/start',
        routes: {
          '/start':      (context) => StartScreen(),
          '/login':      (context) => FormPage(),
          '/camera':     (context) => Camera(),
          '/stands':     (context) => ListeStands(),
          '/description':(context) => DescriptionStand(),
          '/comment':    (context) => Comment(),
          '/admin':      (context) => Admin(),
          '/galerie':    (context) => Photos(),
          '/dashbord':   (context) => DrawerSideBar(),
          '/service' :   (context) => ServiceScreen(),
          '/evenement' : (context) => EvenementScreen(),




        }
        );
  }
}


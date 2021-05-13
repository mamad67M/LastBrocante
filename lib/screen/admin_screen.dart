import 'package:brocante_app_flutter/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  const Admin({Key key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
             backgroundColor: Colors.green,
            title:Text('Moderation',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  fontFamily: 'IndieFlower',
                  letterSpacing: 2
                )
            ),
            centerTitle: true,
            elevation: 10,

          ),
          drawer: DrawerSideBar(),
          body:
          Container(
              child:Center(
                  child:Text('Page admin')
              )
          ),

        )
    );
  }
}

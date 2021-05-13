import 'package:brocante_app_flutter/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';


class DescriptionStand extends StatefulWidget {
  const DescriptionStand({Key key}) : super(key: key);

  @override
  _DescriptionStandState createState() => _DescriptionStandState();
}

class _DescriptionStandState extends State<DescriptionStand> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title:Text('Stands',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )
            ),
            centerTitle: true,
            elevation: 10,

          ),
          drawer: DrawerSideBar(),
          body:
          Container(
              child:Center(
                  child:Text('Description des Stands')
              )
          ),

        )
    );
  }
}

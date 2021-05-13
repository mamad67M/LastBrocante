import 'package:brocante_app_flutter/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  Widget _buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/dashbord');
          },
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,//Color(0xFF62C3A3),
              letterSpacing: 3.0,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'IndieFlower',
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary:Colors.green,// Color(0xFFf5f5f5),
            elevation: 5.0,
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //mon appbar
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          ' BROCANTE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'IndieFlower',
            letterSpacing: 2
          ),
        ),
        centerTitle: true,
        elevation: 15,
      ),

   // drawer: DrawerSideBar(),


      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.red
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(' KIRCHHEIM',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          fontFamily:  'IndieFlower',
                          letterSpacing: 3.5
                        ),
                      ),

                      SizedBox(height: 10.0),

                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 70,
                        child: Image(
                            image: AssetImage('assets/woman.jpg',
                            )
                        ),
                      ),

                      SizedBox(height: 10.0),
                      Text('Bienvenue au village! Ambiance et convivialité',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[950],
                          fontFamily: 'IndieFlower',
                          letterSpacing: 2.0,
                        ),
                      ),
                      Text('la fête du roi DAGOBERT, à la découverte d\' une tradition, bonnes affaires garanties!' ,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'IndieFlower',
                          letterSpacing: 2.0,
                      ),
                      ),

                     // SizedBox(height: 4.0),

                      _buildLoginBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

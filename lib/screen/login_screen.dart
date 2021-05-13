
import 'package:brocante_app_flutter/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';
import 'package:brocante_app_flutter/widgets/InputDeco_design.dart';




class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  String email;
  bool hideButton = true;
  bool val = false;

  void onchange(s) {
    setState(() {
      this.val = s;
    });
  }


  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildLoginBtn() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (){
            if(_formkey.currentState.validate())
            {
              hideButton;
              Navigator.pushNamed(context, '/admin');
            }else{
              hideButton =false;
            }

          },
          child: Text(
            'CONNEXION',
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('BROCANTE',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'IndieFlower',
              letterSpacing: 2.0
            ),
          ),
          centerTitle: true,
          elevation: 10,
        ),
       // drawer: DrawerSideBar(),
        body: Center(

          child: SingleChildScrollView(

            child: Form(

              key: _formkey,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 15, left: 10, right: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: buildInputDecoration(Icons.email, "email"),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'l\'email est requis';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'le format email n\'est pas valide';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        email = value;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 15, left: 10, right: 10),
                    child: TextFormField(

                      controller: password,
                      keyboardType: TextInputType.text,
                      decoration: buildInputDecoration(
                          Icons.lock, "Mot de Passe"),
                      obscureText: true,
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Veuillez entrer le Mot de Passe';
                        }
                        if (value.length < 5) {
                          return ' le mot de passe doit contenir au moins 6 caracteres ';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Row(

                      children: [
                        Checkbox(
                            activeColor: Colors.green,
                            value: val, onChanged: onchange),
                        Text(
                          'se souvenir de moi',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            fontFamily: 'IndieFlower'
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),

                   Padding(
                     padding: const EdgeInsets.all(14),
                     child: _buildLoginBtn(),
                   ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
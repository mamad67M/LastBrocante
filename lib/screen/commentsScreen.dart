import 'package:brocante_app_flutter/widgets/DrawerSideBar.dart';
import 'package:flutter/material.dart';
class Comment extends StatefulWidget {
  const Comment({Key key}) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.green,
            title:Text('Comments',
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
                  child:Text('Commentaires')
              )
          ),

        )
    );
  }
}

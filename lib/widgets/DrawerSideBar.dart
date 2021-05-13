import 'package:flutter/material.dart';

class DrawerSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Center(child: DrawerHeader(child: Text('BROCANTE',
          style: TextStyle(
            fontFamily: 'IndieFlower',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.red,
            letterSpacing: 2.0
          ),
          ))),

          CustomListTile(Icons.place, 'Stands',
                  () => {Navigator.pushNamed(context, '/stands')}),
         // CustomListTile(Icons.info, 'Description',
               //   () => {Navigator.pushNamed(context, '/description')}),
         // CustomListTile(Icons.add_comment, 'Commentaires',
             //     () => {Navigator.pushNamed(context, '/comment')}),
          CustomListTile(Icons.camera_alt, 'Camera',
                  () => {Navigator.pushNamed(context, '/camera')}),
          CustomListTile(Icons.picture_in_picture, 'Galerie',
                  () => {Navigator.pushNamed(context, '/galerie')}),
          CustomListTile(Icons.event, 'Evenements',
                  () => {Navigator.pushNamed(context, '/evenement')}),
          CustomListTile(Icons.home_repair_service, 'Service',
                  () => {Navigator.pushNamed(context, '/service')}),

          //CustomListTile(Icons.settings, 'Configuration',
          //   () => {Navigator.pushNamed(context, '/admin')}),
          CustomListTile(Icons.lock, 'Admin',
                  () => {Navigator.pushNamed(context, '/login')}),
        ],
      ),
    );
  }

}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  Widget Title() => Padding(
    padding: const EdgeInsets.all(8),
    child: Text(text, style: TextStyle(fontSize: 14)),
  );

  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: onTap,
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  Title(),
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}

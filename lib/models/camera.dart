import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  PickedFile _imageFile;
  dynamic _pickImageError;

  Widget _visualiserimage(){
    if ( _imageFile != null) {
      File file = File(_imageFile.path);
      return Image(image: FileImage(file));
    } else if (_pickImageError != null) {
      return Text('Erreur de récupération d\image: $_pickImageError',
        textAlign: TextAlign.center,);
    } else {
      return Text('Aucune image',
        textAlign: TextAlign.center,);

    }
  }

  void _onImageButtonPressed(ImageSource source) async {
    try {
      print('Enter picture');
      PickedFile  picture = (await ImagePicker.platform.pickImage(
          source: source)) ;
      setState(() {
        print('SetState picture');
        _imageFile = picture;
      });
    }
    catch(e){
      _pickImageError = e;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: _visualiserimage(),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: (){ _onImageButtonPressed(ImageSource.gallery); },
              child: Icon(Icons.photo_library),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              backgroundColor: Colors.green[800],
              onPressed: (){_onImageButtonPressed(ImageSource.camera); },
              child: Icon(Icons.photo_camera),
            ),
          ),


        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}

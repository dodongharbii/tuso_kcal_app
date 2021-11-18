import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  //const CameraPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Camera',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Text('Camera',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ))),
      );
}

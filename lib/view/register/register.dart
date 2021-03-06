import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:refactory_test/view/login/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Position userLocation;

  @override
  void initState() {
    super.initState();
    _getLocation().then((position) {
      userLocation = position;
    });
  }

  final picker = ImagePicker();
  File _image;

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
    });

    print('image picked');
  }

  TextEditingController controllerEmail = new TextEditingController();
  String email = '';

  TextEditingController controllerPassword = new TextEditingController();
  String pw = '';

  @override
  Widget build(BuildContext context) {
    _getLocation().then((value) {
      setState(() {
        userLocation = value;
      });
    });

    return Scaffold(
      body: new SafeArea(
        child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                Form(
                  child: Center(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Table(
                              defaultVerticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              columnWidths: {1: FractionColumnWidth(.75)},
                              children: [
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('User Name ',
                                        textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your name',
                                    )),
                                  )
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Foto Profil ',
                                        textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: _image == null
                                        ? IconButton(
                                            icon: Icon(Icons.camera),
                                            color: Colors.black,
                                            onPressed: () {
                                              getImage();
                                            },
                                          )
                                        : Image.file(_image),
                                  )
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Email ',
                                        textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Enter your email',
                                    )),
                                  )
                                ]),
                                TableRow(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Password ',
                                        textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: 'Enter your Password',
                                        )),
                                  )
                                ])
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Text('Login'),
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => new Login()));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Text('Register'),
                        onPressed: () {
                          // Auth().register(email, pw);
                        },
                      ),
                    ),
                  ],
                ),
                userLocation == null
                    ? CircularProgressIndicator()
                    : Text(
                        '''
                  Posisi saat ini 
                    Longitude: ${userLocation.longitude}
                    Latitude: ${userLocation.latitude}
                  ''',
                        textAlign: TextAlign.left,
                      ),
              ],
            )),
      ),
    );
  }

  Future<Position> _getLocation() async {
    var currentLocation;
    try {
      currentLocation = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
    } catch (e) {
      currentLocation = null;
    }
    return currentLocation;
  }
}

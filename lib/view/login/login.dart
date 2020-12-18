import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:refactory_test/assets/style.dart';
import 'package:refactory_test/view/register/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Position userLocation;

  @override
  void initState() {
    super.initState();
    _getLocation().then((position) {
      userLocation = position;
    });
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
                    'Login',
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
                          Fluttertoast.showToast(
                              msg: "Welcome",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: kPrimaryColor,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Text('Register'),
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) => new Register()));
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

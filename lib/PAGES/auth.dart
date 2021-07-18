import 'package:flutter/material.dart';
import 'package:live_location_tracker/PAGES/login_page.dart';
import 'package:live_location_tracker/PAGES/Terms_Conditions.dart';
class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp({this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

enum SingingCharacter { clubmember, student }
SingingCharacter _character = SingingCharacter.clubmember;

class _SignUpState extends State<SignUp> {
  //final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';

  // text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 10.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('SIGN IN',
              style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.white,

              ),),
    onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) =>Register()
    ));},
          ),
        ],
      ),
      resizeToAvoidBottomPadding: false,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(105.0, 40.0, 0.0, 00.0),
                  child: Text('Live Location Tracker',
                      style: TextStyle(color: Colors.lightBlue,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(120.0, 120.0, 0.0, 10.0),
                  child: Text('Create Your Account',
                      style: TextStyle(fontSize: 18.0,

                          color: Colors.grey,
                          )),
                ),
                /*Container(
                  padding: EdgeInsets.fromLTRB(110.0, 175.0, 0.0, 0.0),
                  child: Text('.',
                      style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold,color: Colors.green)),
                )*/
              ],
            ),
          ),
          Card(

            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'E-MAIL',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      validator: (val) =>
                      val.isEmpty
                          ? 'NO E-MAIL ID ENTERED'
                          : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                    SizedBox(height: 30.0),
                    TextFormField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock), labelText: 'PASSWORD',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green))),
                      obscureText: true,
                      validator: (val) =>
                      val.length < 6
                          ? 'PASSWORD SHOULD HAVE 6 OR MORE CHARACTERS'
                          : null,
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(230.0, 20.0, 0.0, 00.0),
                      child: Text(
                        "Already Registered?", style: TextStyle(
                          fontSize: 15,
                          color: Colors.lightBlue),

                      ),
                    ),
                    SizedBox(height: 20.0),
                    RaisedButton(
                        color: Colors.lightBlue,
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 130.0, right: 130.0),
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white,
                              fontSize: 23),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            dynamic result = true;
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>Register()
                            ));
                            // await _auth.registerwithemailpassword(email, password)
                                ;
                            if (result == null) {
                              setState(() {
                                error = 'ERROR SIGNING UP';
                              });
                            }
                          }
                        }),

                    Text(
                      error,
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                    ),

                  ],
                ),
              ),
            ),
          ),
          TermsOfUse(),
          /*Container(
            padding: EdgeInsets.fromLTRB(220.0, 20.0, 0.0, 00.0),
            child:RaisedButton(
              color: Colors.lightBlue,
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
            child: Text(
              "Terms and Conditions", style: TextStyle(
                fontSize: 16,
                color: Colors.white),

            ),
                onPressed: () async {

                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>TermsOfUse()
                    ));
                    // await _auth.registerwithemailpassword(email, password)



                }
            ),
          ),*/
        ],
      ),
    );
  }
}
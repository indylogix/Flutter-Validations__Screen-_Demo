import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:form_field_validator/form_field_validator.dart';
import 'home.dart';
import 'splash.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

    home:MyApp(),
  ));
}



class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _NameController = TextEditingController();

  TextEditingController _NumberController = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  String _NameErorr;

  String _NumberErorr;
  String _passwordErorr;
  String email;
  String password;
  String Name;
  String Number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(

            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                  Color(0xFFFFFFFF),
                ])),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .40,
                  height: MediaQuery.of(context).size.height * .20,
                  child: Image.asset("5.png",
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(


                  controller: _NameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gapPadding: 20.0),
                    errorText: _NameErorr,
                    labelText: "Name",
                  ),
                  onChanged: (value) {
                    setState(() {
                      Name = value;
                    });
                  },
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(

                  validator: EmailValidator(errorText: "not a valid email id "),
                  autovalidate: true,
                  decoration: InputDecoration(

                    prefixIcon: Icon(CupertinoIcons.mail),
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gapPadding: 20.0)),
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(

                  controller: _passwordController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open_rounded),
                      errorText: _passwordErorr,
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gapPadding: 20.0)),
                  onChanged: (value) {
                    setState(() {
                      password = value.trimLeft();
                    });
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
              autovalidate: true,


                  controller: _NumberController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.phone),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        gapPadding: 20.0),
                    errorText: _NumberErorr,
                    labelText: "Number",
                    prefixText: "+91",
                  ),
                  onChanged: (value) {
                    setState(() {
                      Number = value;
                    });
                  },
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 15,
                ),
                RaisedButton(



                  shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  color: Colors.deepPurple[200],
                  child: Text("Sign Up",style: TextStyle(color: Colors.white),),
                  onPressed: () {setState(() {
                    if (_NameController.text.length < 3)
                      _NameErorr = "Enter The Name";
                    else
                      _NameErorr = null;
                    if (_passwordController.text.length < 6)
                      _passwordErorr = "Enter The 6 char";
                    else
                      _passwordErorr = null;

                    if (_NumberController.text.length < 10)
                      _NumberErorr = "Enter The Number";
                    else
                      _NumberErorr = null;
                  });


                  if (_NameController.text.length > 3 &&  _passwordController.text.length > 6 && _NumberController.text.length >=10 ){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()));
                  }
                  }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

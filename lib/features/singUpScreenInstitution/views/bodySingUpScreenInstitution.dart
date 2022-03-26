import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../../services/Auth.dart';
import '../../homeScreenRichPoor/viewHomeScreenRichPoor.dart';
import 'backArrowSingUpScreenInstitutions.dart';


class BodySingUpScreenInstitution extends StatefulWidget {
final Client client;

//  final ViewModelLogIn viewMoldel;
  const BodySingUpScreenInstitution({Key? key,
  required this.client
    //required this.viewMoldel,
  }) : super(key: key);
  @override
  _BodySingUpScreenInstitution createState() => _BodySingUpScreenInstitution();
}
class _BodySingUpScreenInstitution extends State<BodySingUpScreenInstitution> {
  Client client = http.Client();
  final _formkey = GlobalKey<FormState>(); //newly added from brewcrew
  final AuthService _auth = AuthService();// this too
  String error=''; //this too
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final itemsAcceptedController = TextEditingController();
  final workingHoursController = TextEditingController();
  final cityController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade500,
                  Colors.blue.shade400,
                ]
            )
        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(12,46,10,20),
                child:
                Row(
                  children: [
                    SizedBox(child:
                     BackArrowSingUpScreenInstitutions(),
                    ),
                      Text("SingUp",style: TextStyle(color: Colors.white,fontSize: 40),),
                  ],
                ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              _nameWidget(),
                              SizedBox(height: 5,),
                              _emailWidget(),
                              SizedBox(height: 5,),
                              _passwordWidget(),
                              SizedBox(height: 5,),
                              _addressWidget(),
                              SizedBox(height: 5,),
                              _itemsAcceptedWidget(),
                              SizedBox(height: 5,),
                              _workingHoursWidget(),
                              SizedBox(height: 5,),
                              _cityWidget(),
                              SizedBox(height: 5,),
                              _phoneWidget(),
                              SizedBox(height: 5,),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        // #login
                        Container(
                          height: 50,
                          margin:  EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green[800]
                          ),
                          child:  Center(
                            child: RaisedButton(
                              onPressed: ()async {
                                Uri uri = Uri.parse('https://main-gdsc.herokuapp.com/profile/create/');//https:1200.0.0.
                                await widget.client.post(uri,body: {
                                  'password':passwordController.text,
                                  'email':emailController.text,
                                  'name':nameController.text,
                                  'address':addressController.text,
                                  'phone':phoneController.text,
                                  'city':cityController.text,
                                  'workingHours':workingHoursController.text
                                });


                                  dynamic result = await _auth
                                      .registerWithEmailAndPassword(
                                      emailController.text,
                                      passwordController.text);
                                  if (result == null) {
                                    error = 'please supply a valid email';
                                    print(error);
                                  }

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ViewHomeScreenRichPoor()
                                  ));

                              },
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Colors.blue.shade900,Colors.blue.shade500,  Colors.blue.shade400],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(30.0)
                                ),
                                child: Container(
                                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Sing Up',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12.0,),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red,fontSize: 14.0),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nameWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: nameController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => nameController.clear(),
            ),
             hintText: 'Enter the name of your institution',
            labelText: 'Name',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _phoneWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: phoneController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => phoneController.clear(),
            ),
            hintText: 'Enter your phone number',
            labelText: 'Number',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _emailWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => emailController.clear(),
            ),
            hintText: 'Enter your email address',
            labelText: 'Email',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget _passwordWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: passwordController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => passwordController.clear(),
            ),
            hintText: 'Enter your password',
            labelText: 'Password',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _addressWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: addressController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => addressController.clear(),
            ),
            hintText: 'Enter your addess',
            labelText: 'Address',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget _itemsAcceptedWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: itemsAcceptedController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => itemsAcceptedController.clear(),
            ),
            hintText: 'Enter the items accepted by your institution',
            labelText: 'Items',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget _workingHoursWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: workingHoursController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => workingHoursController.clear(),
            ),
            hintText: '7 Am to 7 Pm',
            labelText: 'Working Hours',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cityWidget() {
    return Stack(
      children: [
        TextFormField(
          controller: cityController,
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => cityController.clear(),
            ),
            hintText: 'Enter the city where you are located',
            labelText: 'Cidade',
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
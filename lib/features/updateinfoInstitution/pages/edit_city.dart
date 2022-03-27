import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

import '../user/user_data.dart';
import '../widgets/appbar_widget.dart';


class EditCityFormPage extends StatefulWidget {
  const EditCityFormPage({Key? key}) : super(key: key);

  @override
  EditAddressFormPageState createState() {
    return EditAddressFormPageState();
  }
}

class EditAddressFormPageState extends State<EditCityFormPage> {

  final _formKey = GlobalKey<FormState>();
  final cityController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    cityController.dispose();
    super.dispose();
  }

  void updateUserValue(String userCity) {
    user.city = userCity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                    width: 320,
                    child: const Text(
                      "What's your City?",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: SizedBox(
                        height: 100,
                        width: 320,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Your City'),
                          controller: cityController,
                        ))),
                Padding(
                    padding: EdgeInsets.only(top: 150),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: 320,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, or false otherwise.
                              if (cityController.toString().length< 5) {

                              }
                              else{
                                updateUserValue(cityController.text);
                                Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Update',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        )))
              ]),
        ));
  }
}
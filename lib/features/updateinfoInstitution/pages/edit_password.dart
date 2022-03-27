import 'package:flutter/material.dart';

import '../user/user_data.dart';
import '../widgets/appbar_widget.dart';


class EditPasswordFormPage extends StatefulWidget {
  const EditPasswordFormPage({Key? key}) : super(key: key);

  @override
  EditPasswordFormPageState createState() {
    return EditPasswordFormPageState();
  }
}

class EditPasswordFormPageState extends State<EditPasswordFormPage> {

  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  void updateUserValue(String userPassword) {
    user.password = userPassword;
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
                      "What's your password?",
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
                          // Handles Form Validation
                          validator: (passwordController) {
                            if (passwordController!.isEmpty || !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(passwordController)){
                              return "Your password should contain Lower and upper\n case letters and a special symbol";
                            }else{
                              return null;
                            }
                          },
                          controller: passwordController,
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
                               final form = _formKey.currentState!;

                              if (form.validate()) {
                                updateUserValue(passwordController.text);
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

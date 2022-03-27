import 'package:flutter/material.dart';
import '../user/user_data.dart';
import '../widgets/appbar_widget.dart';


class EditWorkingHoursFormPage extends StatefulWidget {
  const EditWorkingHoursFormPage({Key? key}) : super(key: key);

  @override
  EditAddressFormPageState createState() {
    return EditAddressFormPageState();
  }
}

class EditAddressFormPageState extends State<EditWorkingHoursFormPage> {

  final _formKey = GlobalKey<FormState>();
  final workingHoursController = TextEditingController();
  var user = UserData.myUser;

  @override
  void dispose() {
    workingHoursController.dispose();
    super.dispose();
  }

  void updateUserValue(String userWorkingHours) {
    user.workingHours = userWorkingHours;
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
                      "What's your workingHours?",
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
                              labelText: 'Working Hours'),
                          controller: workingHoursController,
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
                              if (workingHoursController.toString().length< 5) {

                              }
                              else{
                                updateUserValue(workingHoursController.text);
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
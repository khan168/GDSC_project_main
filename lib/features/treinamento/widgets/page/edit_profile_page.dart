import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_gdsc_competion/features/treinamento/widgets/appbar_widget.dart';
//import 'package:path/path.dart' as Path;
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import '../../Model/user.dart';
import '../profile_widget.dart';
import '../textfield_widget.dart';
import '../ultils/user_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;
  File? _image ;
  String? _imagepaph;

  @override
  void initState() {
    super.initState();
    LoadImage();
  }


  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
    child: Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: _imagepaph!= null? user.imagePath : 'user.imagePath',
              //user.imagePath,
              /*
              _image != null
                      ? Image.file(
                image!,
                width: 160,
                height: 160,
                fit: BoxFit.cover,
              )
              : user.imagePath,
               */
              onClicked: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );

              },
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
          ],
        ),
      ),
    ),
  );


  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      this._image = imageTemporary;
      setState(() => this._image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null ){
      setState(() {
        //imageFile = File(file!.path);

      });
    }
  }

  void SaveImage(path) async {
    SharedPreferences saveImage = await SharedPreferences.getInstance();
    saveImage.setString('ImagePath', path);
  }

  void LoadImage() async{
    SharedPreferences saveImage = await SharedPreferences.getInstance();
    setState(() {
      _imagepaph = saveImage.getString('imagepath');
    });

  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: 100,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () => getImage(source: ImageSource.camera),
              label: Text("Camera"),
            ),

            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () => getImage(source: ImageSource.gallery),
              label: Text("Gallery"),
            ),
          ]
          )
        ],
      ),
    );
  }
}
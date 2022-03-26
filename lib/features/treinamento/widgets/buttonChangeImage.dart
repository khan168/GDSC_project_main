import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonChangeImage extends StatefulWidget {
  const ButtonChangeImage({Key? key}) : super(key: key);

  @override
  _ButtonChangeImageState createState() => _ButtonChangeImageState();
}

class _ButtonChangeImageState extends State<ButtonChangeImage> {
  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      shape: StadiumBorder(),
      onPrimary: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
    ),
    child: Text('text'),
    onPressed: (){
      print('ddf');
    },
  );
}

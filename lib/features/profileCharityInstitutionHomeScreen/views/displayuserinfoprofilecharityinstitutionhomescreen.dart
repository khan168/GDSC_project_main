
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildUserInfoDisplay(String getValue, String title) =>
    Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ))),
                child: Row(
                    children: [
                      Expanded(
                        child: TextButton(
                            onPressed: (){},
                            child: Text(
                              getValue,
                              style: TextStyle(fontSize: 16, height: 1.4),
                            )
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                        size: 40.0,
                      )
                    ])),

          ],
        ));
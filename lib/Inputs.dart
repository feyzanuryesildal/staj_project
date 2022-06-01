import 'package:flutter/material.dart';
import 'package:project/textStyle.dart';

import 'color.dart';

class LoginInputText extends StatefulWidget {

  late String title;
  late String hintTitle;

  LoginInputText({required String title, required String hintTitle}){
    this.title=title;
    this.hintTitle=hintTitle;
  }

  @override
  _LoginInputTextState createState() => _LoginInputTextState();
}

class _LoginInputTextState extends State<LoginInputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        children: [
          Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: signInLabelText(),),
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(hintText: widget.hintTitle,hintStyle: TextStyle(color: Colors.black38),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: ColorMyApp.instance.inputBackgroundBackgroundColor,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}

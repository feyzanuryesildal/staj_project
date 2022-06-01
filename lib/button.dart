import 'package:flutter/material.dart';
import 'package:project/textStyle.dart';

import 'color.dart';

class buttonClick extends StatefulWidget {
  late final String title;
  late final VoidCallback functionApply;

  buttonClick({required String title,required VoidCallback functionApply }){
    this.title=title;
    this.functionApply=functionApply;

  }

  @override
  _buttonClickState createState() => _buttonClickState();
}

class _buttonClickState extends State<buttonClick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.85,
      height: MediaQuery.of(context).size.height*0.08,
      child: TextButton(
          child: Text(
            widget.title,
            style: buttonText(),
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 25,right: 25)),
              foregroundColor: MaterialStateProperty.all<Color>(ColorMyApp.instance.textColorOption),
              backgroundColor: MaterialStateProperty.all<Color>(ColorMyApp.instance.buttonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: ColorMyApp.instance.buttonColor),

                  )
              )
          ), onPressed: () => widget.functionApply(),

      ),
    );
  }
}

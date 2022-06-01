
import 'package:flutter/material.dart';
import 'package:project/color.dart';


class appbarTextDesign extends TextStyle{

  appbarTextDesign():super(
      fontSize: 33,
      color: ColorMyApp.instance.textColor,
      fontWeight: FontWeight.normal,
      fontFamily: 'Roboto',
      letterSpacing: 0

  );


}


class signInTextOptionDesign extends TextStyle{
  signInTextOptionDesign():super(
    fontSize: 15,
    color: ColorMyApp.instance.textColorOption,

  );
}

class signInLabelText extends TextStyle{
  signInLabelText():super(
      fontSize: 15,
      color: ColorMyApp.instance.textColor,
      fontWeight: FontWeight.w600
  );
}

class buttonText extends TextStyle{
  buttonText():super(
      fontSize: 18,
      color: ColorMyApp.instance.buttonTextColor,
      fontWeight: FontWeight.w500
  );
}
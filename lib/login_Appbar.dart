import 'package:flutter/material.dart';
import 'package:project/textStyle.dart';



class SignUpAppBar extends AppBar {

  SignUpAppBar()
      : super(
    titleSpacing: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
        Text("Sign Up",style: appbarTextDesign(),),

      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

class LoginAppBar extends AppBar {

  LoginAppBar()
      : super(
    titleSpacing: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
        Text("Log in",style: appbarTextDesign(),),

      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

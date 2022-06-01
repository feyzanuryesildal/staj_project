import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/login_Appbar.dart';
import 'package:project/sign_in_options.dart';
import 'package:project/sign_in_page.dart';
import 'Inputs.dart';
import 'button.dart';
import 'color.dart';


class Log_in extends StatefulWidget {
  const Log_in({Key? key}) : super(key: key);

  @override
  _Log_inState createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorMyApp.instance.backGroundColor,
        appBar: LoginAppBar(),
        body: Container(
          width: MediaQuery.of(context).size.width*1,
          child: Column(
            children: [
              SizedBox(height: 50,),
              SignUpOptionsWidgetDesign(title: "Log in with one of the following options."),
              SizedBox(height: 30,),
              LoginInputText(title: "Email",hintTitle: "Email"),
              SizedBox(height: 20,),
              LoginInputText(title: "Password",hintTitle: "Password",),
              SizedBox(height: 50,),
              buttonClick(title: "Log in", functionApply: ()=>print(DateFormat.yMMMd().format(DateTime.now())) ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_in()));
                  }, child: Text("Sign up"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

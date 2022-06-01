import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project/color.dart';
import 'package:project/textStyle.dart';


class SignUpOptionsWidgetDesign extends StatefulWidget {
  late final String title;

  SignUpOptionsWidgetDesign({required String title}){
    this.title=title;
  }

  @override
  _SignUpOptionsWidgetDesignState createState() =>
      _SignUpOptionsWidgetDesignState();
}

class _SignUpOptionsWidgetDesignState extends State<SignUpOptionsWidgetDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.85,
            child: Text(
              widget.title,
              style: signInTextOptionDesign(),
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.width*0.39,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: ColorMyApp.instance.inputBackgroundBackgroundColor
                  ),
                  child: FlatButton(
                      onPressed: () {}, child: Icon(MdiIcons.google,size: 33,))),

              Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.width*0.39,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: ColorMyApp.instance.inputBackgroundBackgroundColor
                  ),
                  child: FlatButton(
                      onPressed: () {}, child: Icon(MdiIcons.facebook,size: 40,))),
            ],
          )
        ],
      ),
    );
  }
}


import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/Model/User.dart';

class PostHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: PostScreen(),),);
  }
}

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  List<User> _postList =[];

  Future<List<User> > fetchPost() async {
    final response =
    await http.get(Uri.parse('https://10.0.2.2:7196/api/Usuario'));

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      List<dynamic> values=[];
      values = json.decode(response.body);
      if(values.length>0){
        for(int i=0;i<values.length;i++){
          if(values[i]!=null){
            Map<String,dynamic> map=values[i];
            _postList .add(User.fromJson(map));
            debugPrint('Id-------${map['id']}');
            debugPrint('Id-------${map['email']}');
          }
        }
      }
      print(_postList);
      return _postList;

    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: fetchPost(),
          builder: (BuildContext context , AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return ListTile(
                title: Text(snapshot.data.toString()),
              );
            }else{
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  @override
  void initState() {

    fetchPost();

  }
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
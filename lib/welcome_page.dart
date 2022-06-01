import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/location.dart';

class WelcomePageView extends StatefulWidget {
  const WelcomePageView({Key? key}) : super(key: key);

  @override
  _WelcomePageViewState createState() => _WelcomePageViewState();
}

class _WelcomePageViewState extends State<WelcomePageView> {
  TimeOfDay now = TimeOfDay.now();
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (now.minute != TimeOfDay.now().minute) {
        setState(() {
          now = TimeOfDay.now();
        });
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    List<String> customers = [
      'Ali Murat',
      'Aysu Demir',
      'Burak Çetin',
      'Derya Asin'
    ];
    List<String> projects = ['CRM', 'ERP', 'Web Sitesi', 'Mobil App'];
    String? selectedCustomer ;
    String? selectedProject ;

    Size size = MediaQuery.of(context).size;

    String period = now.period == DayPeriod.am ? "AM" : "PM";

    String MDY = DateFormat.yMMMd().format(DateTime.now());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Müşteri Görüşme Kayıt Ekranı",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Container(
                width: size.width * 1,
                height: size.height * 0.08,
                child: Homepage()),
            SizedBox(
              height: size.height * 0.03,
            ),
            Row(
              children: [
                Text("${MDY}", style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: size.width * 0.02,
                ),
                Text(
                  "${now.hour}:${now.minute} ${period}",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: size.height*0.05,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton(
                  hint: Text("Müşteri Seçiniz"),
                  dropdownColor: Colors.grey,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  value: selectedCustomer,
                  onChanged: (newValue){
                    setState(() {
                      selectedCustomer=newValue as String?;
                    });
                  },
                  items: customers.map((valueItem){
                    return DropdownMenuItem(value:valueItem,child: Text(valueItem));

                  }).toList(),
                ),
                DropdownButton(
                  hint: Text("Proje Seçiniz"),
                  dropdownColor: Colors.grey,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  value: selectedProject,
                  onChanged: (newValue){
                    setState(() {
                      selectedCustomer=newValue as String?;
                    });
                  },
                  items: customers.map((valueItem){
                    return DropdownMenuItem(value:valueItem,child: Text(valueItem));

                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: size.height*0.2,),
            TextFormField(
              minLines: 10,
              maxLines: 13,
              decoration: const InputDecoration(
                  hintText: 'Görüşme Özetini Yazınız..',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Kaydet"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

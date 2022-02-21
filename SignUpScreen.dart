import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/SignUpScreen/RadioGroup.dart';

import '../confirmationScreen/confirmationPage.dart';
import 'RegisterationItem.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff042246),
                Color(0xff041e3e),
                Color(0xff1a5aa0),
                Color(0xff01060c),
                Color(0xff01070e)
              ],
              stops: [0.0, 0.0, 0.01, 0.760, 9.80],
            ),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(

                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),

              RegisterationItem('asset/person icon.png','USERNAME'),
              SizedBox(height: 20),

              RegisterationItem('asset/id number icon.png','ID NUMBER'),

              SizedBox(height: 20),
              RegisterationItem('asset/lock icon.png','PASSWORD'),
              SizedBox(height: 20),


              RegisterationItem('asset/phone icon.png','PHONE NUMBER'),
              SizedBox(height: 20),
               RadioGroup(),
                  Container(width: 320,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(color:Color.fromRGBO(50, 165, 248, 1),textColor: Colors.white,
                 child: Text('CONFIRM NOW'),
                 minWidth: double.infinity,
                 height: 55,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                 onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  confirmationPage()),);

                 },),
                    ),
                  ),


            ],
          ),
        ),
      ),
    );
  }
}

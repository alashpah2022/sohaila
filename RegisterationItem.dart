import 'package:flutter/material.dart';

class RegisterationItem extends StatelessWidget {
String imagePath;
String hintText;
RegisterationItem(this.imagePath,this.hintText);
  @override
  Widget build(BuildContext context) {
    return
       Container(width: 300,height: 60,
         child: TextField(
                    style:TextStyle(fontSize: 20,color: Colors.white),
          decoration: new InputDecoration(
              prefixIcon:
               CircleAvatar(
                   backgroundImage:AssetImage('$imagePath') , backgroundColor: Color.fromRGBO(50, 165, 248, 1),radius: 30),
            labelText: "   $hintText",
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(35.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),

            focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.all(Radius.circular(40.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),




      // child:  Column(
      //   children: [
      //     Row(children:[
      //     CircleAvatar(backgroundImage:AssetImage('$imagePath') , backgroundColor: Color.fromRGBO(50, 165, 248, 1),radius: 35),
      //
      //     TextFormField(
      //
      //       decoration: InputDecoration(
      //         hintText: "$hintText",
      //         enabledBorder: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(25),
      //           borderSide: BorderSide(color: Colors.black),
      //           gapPadding: 10,
      //         ),
      //         focusedBorder: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(25),
      //           borderSide: BorderSide(color: Colors.black),
      //           gapPadding: 10,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

            // Row(children:[
            //   CircleAvatar(backgroundImage:AssetImage('$imagePath') , backgroundColor: Color.fromRGBO(50, 165, 248, 1),radius: 35),
            //
            //   TextFormField(
            //
            //     decoration: InputDecoration(
            //       hintText: "$hintText",
            //       enabledBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(25),
            //         borderSide: BorderSide(color: Colors.black),
            //         gapPadding: 10,
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(25),
            //         borderSide: BorderSide(color: Colors.black),
            //         gapPadding: 10,
            //       ),
            //     ),
            //   ),
            // ],
            // ),
          ),
       );
  }
}

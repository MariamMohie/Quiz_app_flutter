import 'package:flutter/material.dart';

class Dialogs{

  static final Dialogs _singleton =Dialogs._internal();


  Dialogs._internal();
  factory Dialogs(){
    return _singleton;  }

  static  Widget questionStartDialog({required VoidCallback onTap}){

      return AlertDialog(
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Hi",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Text("Please Login before start"),
        ]),
        actions: [
          TextButton(onPressed: onTap, child: const Text("Confirm"))
        ],

      );


    }

}
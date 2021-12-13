import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  final String number;
  OTPScreen({ required this.number});
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text('Login',style: TextStyle(color: Colors.black),),
        automaticallyImplyLeading: false,//to remove black screen
      ),
        body: Padding(
          padding: const EdgeInsets.only(left:  20,right:  20),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(height: 40,),
          CircleAvatar(
          radius: 30,
            backgroundColor: Colors.red.shade200,
            child: Icon(
              CupertinoIcons.person_alt_circle,
              size: 60,
              color: Colors.red,
            ),
          ),
        SizedBox(
          height: 10,
        ),
        Text(
          'welcome Back',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                text: 'we sent a 6-digit code to',
                style: TextStyle(color: Colors.grey, fontSize: 12),
                children: [
                  TextSpan(
                    text: widget.number,
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12
                    )
                  ),
                ],
              ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);//it will go back to previous screen
              },
              child: Icon(Icons.edit)),
            
          ],
        ),
      ],
    ),
        ),
    );
  }
}


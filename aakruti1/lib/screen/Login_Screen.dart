import 'package:aakruti1/Authentication/auth_ui.dart';
import 'package:flutter/material.dart';

   class LoginScreen extends StatelessWidget {
  static const String id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.cyan.shade900,

      body: Column(
        children: [

          Expanded(
            child: Container(
                width: MediaQuery.of(context).size.width,//to get device width
                color:  Colors.white,
                child:Column(
                    children: [
                      SizedBox(height: 100,),//height change
                      Image.asset('assets/images/ic_launcher.png',//akruti logo changed
                       // color: Colors.cyan.shade900,
                      ),
                      SizedBox(height: 10,),
                      Text('Aakruti',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.cyan.shade900,

                      ),)
                    ]
                )
            ),),
          Expanded(
            child: Container(
              child:  Authui(),
            ),),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'If you continue, you are accepting\nTerms and conditions and Privacy Policy',
              textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 10),),
          ),
        ],
      ),
    );
  }
}

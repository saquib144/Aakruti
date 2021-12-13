import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Authentication/phoneauh_screen.dart';
import 'screen/Login_Screen.dart';
import 'screen/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: Colors.cyan.shade900,
                // fontFamily: 'Lato'
              ),
              home: SplashScreen());
        } else {
          return MaterialApp(
            // to remove the banner in right corner
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.cyan.shade900,
              // fontFamily: 'Lato'
            ),
            home: LoginScreen(),
            routes: {
              LoginScreen.id: (context) => LoginScreen(),
              PhoneAuthScreen.id: (context) => PhoneAuthScreen(),
            },
          );
        }
      },
    );
  }
}

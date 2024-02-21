import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.only(top:24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width:w ,
                    height: h * 0.32,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/signUp1.jpg'
                        ),  
                      )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: h * 0.16,),
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(
                            'assets/images/p.jpg'
                          ),
                        )
                      ]),
              )
            ],
          ),
        ),
      )
    );
  }
}